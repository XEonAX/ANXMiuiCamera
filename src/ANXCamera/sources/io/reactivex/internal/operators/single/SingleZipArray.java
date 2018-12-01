package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class SingleZipArray<T, R> extends Single<R> {
    final SingleSource<? extends T>[] sources;
    final Function<? super Object[], ? extends R> zipper;

    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        public R apply(T t) throws Exception {
            return ObjectHelper.requireNonNull(SingleZipArray.this.zipper.apply(new Object[]{t}), "The zipper returned a null value");
        }
    }

    static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = -5556924161382950569L;
        final SingleObserver<? super R> actual;
        final ZipSingleObserver<T>[] observers;
        final Object[] values;
        final Function<? super Object[], ? extends R> zipper;

        ZipCoordinator(SingleObserver<? super R> observer, int n, Function<? super Object[], ? extends R> zipper) {
            super(n);
            this.actual = observer;
            this.zipper = zipper;
            ZipSingleObserver<T>[] o = new ZipSingleObserver[n];
            for (int i = 0; i < n; i++) {
                o[i] = new ZipSingleObserver(this, i);
            }
            this.observers = o;
            this.values = new Object[n];
        }

        public boolean isDisposed() {
            return get() <= 0;
        }

        public void dispose() {
            if (getAndSet(0) > 0) {
                for (ZipSingleObserver<?> d : this.observers) {
                    d.dispose();
                }
            }
        }

        void innerSuccess(T value, int index) {
            this.values[index] = value;
            if (decrementAndGet() == 0) {
                try {
                    this.actual.onSuccess(ObjectHelper.requireNonNull(this.zipper.apply(this.values), "The zipper returned a null value"));
                } catch (Throwable ex) {
                    Exceptions.throwIfFatal(ex);
                    this.actual.onError(ex);
                }
            }
        }

        void disposeExcept(int index) {
            int i;
            ZipSingleObserver<T>[] observers = this.observers;
            int n = observers.length;
            for (i = 0; i < index; i++) {
                observers[i].dispose();
            }
            for (i = index + 1; i < n; i++) {
                observers[i].dispose();
            }
        }

        void innerError(Throwable ex, int index) {
            if (getAndSet(0) <= 0) {
                RxJavaPlugins.onError(ex);
                return;
            }
            disposeExcept(index);
            this.actual.onError(ex);
        }
    }

    static final class ZipSingleObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
        private static final long serialVersionUID = 3323743579927613702L;
        final int index;
        final ZipCoordinator<T, ?> parent;

        ZipSingleObserver(ZipCoordinator<T, ?> parent, int index) {
            this.parent = parent;
            this.index = index;
        }

        public void dispose() {
            DisposableHelper.dispose(this);
        }

        public void onSubscribe(Disposable d) {
            DisposableHelper.setOnce(this, d);
        }

        public void onSuccess(T value) {
            this.parent.innerSuccess(value, this.index);
        }

        public void onError(Throwable e) {
            this.parent.innerError(e, this.index);
        }
    }

    public SingleZipArray(SingleSource<? extends T>[] sources, Function<? super Object[], ? extends R> zipper) {
        this.sources = sources;
        this.zipper = zipper;
    }

    protected void subscribeActual(SingleObserver<? super R> observer) {
        SingleSource<? extends T>[] sources = this.sources;
        int n = sources.length;
        if (n != 1) {
            ZipCoordinator<T, R> parent = new ZipCoordinator(observer, n, this.zipper);
            observer.onSubscribe(parent);
            int i = 0;
            while (i < n && !parent.isDisposed()) {
                SingleSource<? extends T> source = sources[i];
                if (source != null) {
                    source.subscribe(parent.observers[i]);
                    i++;
                } else {
                    parent.innerError(new NullPointerException("One of the sources is null"), i);
                    return;
                }
            }
            return;
        }
        sources[0].subscribe(new MapSingleObserver(observer, new SingletonArrayFunc()));
    }
}
