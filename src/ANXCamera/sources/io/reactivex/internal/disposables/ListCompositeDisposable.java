package io.reactivex.internal.disposables;

import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public final class ListCompositeDisposable implements Disposable, DisposableContainer {
    volatile boolean disposed;
    List<Disposable> resources;

    public void dispose() {
        if (!this.disposed) {
            synchronized (this) {
                if (this.disposed) {
                    return;
                }
                this.disposed = true;
                List<Disposable> set = this.resources;
                this.resources = null;
                dispose(set);
            }
        }
    }

    public boolean isDisposed() {
        return this.disposed;
    }

    public boolean add(Disposable d) {
        ObjectHelper.requireNonNull(d, "d is null");
        if (!this.disposed) {
            synchronized (this) {
                if (this.disposed) {
                } else {
                    List<Disposable> set = this.resources;
                    if (set == null) {
                        set = new LinkedList();
                        this.resources = set;
                    }
                    set.add(d);
                    return true;
                }
            }
        }
        d.dispose();
        return false;
    }

    public boolean remove(Disposable d) {
        if (!delete(d)) {
            return false;
        }
        d.dispose();
        return true;
    }

    /* JADX WARNING: Missing block: B:10:0x0016, code:
            return false;
     */
    public boolean delete(io.reactivex.disposables.Disposable r6) {
        /*
        r5 = this;
        r4 = 0;
        r3 = "Disposable item is null";
        io.reactivex.internal.functions.ObjectHelper.requireNonNull(r6, r3);
        r3 = r5.disposed;
        if (r3 != 0) goto L_0x0017;
    L_0x000b:
        r0 = r5;
        monitor-enter(r5);
        r3 = r5.disposed;	 Catch:{ all -> 0x0023 }
        if (r3 != 0) goto L_0x0018;
    L_0x0011:
        r2 = r5.resources;	 Catch:{ all -> 0x0023 }
        if (r2 != 0) goto L_0x001a;
    L_0x0015:
        monitor-exit(r5);	 Catch:{ all -> 0x0023 }
        return r4;
    L_0x0017:
        return r4;
    L_0x0018:
        monitor-exit(r5);	 Catch:{ all -> 0x0023 }
        return r4;
    L_0x001a:
        r3 = r2.remove(r6);	 Catch:{ all -> 0x0023 }
        if (r3 == 0) goto L_0x0015;
    L_0x0020:
        monitor-exit(r5);	 Catch:{ all -> 0x0023 }
        r3 = 1;
        return r3;
    L_0x0023:
        r1 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0023 }
        throw r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.disposables.ListCompositeDisposable.delete(io.reactivex.disposables.Disposable):boolean");
    }

    void dispose(List<Disposable> set) {
        if (set != null) {
            Object errors = null;
            for (Disposable o : set) {
                try {
                    o.dispose();
                } catch (Throwable ex) {
                    Exceptions.throwIfFatal(ex);
                    if (errors == null) {
                        errors = new ArrayList();
                    }
                    errors.add(ex);
                }
            }
            if (errors != null) {
                if (errors.size() != 1) {
                    throw new CompositeException((Iterable) errors);
                }
                throw ExceptionHelper.wrapOrThrow((Throwable) errors.get(0));
            }
        }
    }
}
