package io.reactivex.internal.queue;

import com.sensetime.stmobile.STMobileHumanActionNative;
import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Pow2;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class SpscLinkedArrayQueue<T> implements SimplePlainQueue<T> {
    private static final Object HAS_NEXT = new Object();
    static final int MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", STMobileHumanActionNative.ST_MOBILE_HAND_PALM).intValue();
    AtomicReferenceArray<Object> consumerBuffer;
    final AtomicLong consumerIndex = new AtomicLong();
    final int consumerMask;
    AtomicReferenceArray<Object> producerBuffer;
    final AtomicLong producerIndex = new AtomicLong();
    long producerLookAhead;
    int producerLookAheadStep;
    final int producerMask;

    public SpscLinkedArrayQueue(int bufferSize) {
        int p2capacity = Pow2.roundToPowerOfTwo(Math.max(8, bufferSize));
        int mask = p2capacity - 1;
        AtomicReferenceArray<Object> buffer = new AtomicReferenceArray(p2capacity + 1);
        this.producerBuffer = buffer;
        this.producerMask = mask;
        adjustLookAheadStep(p2capacity);
        this.consumerBuffer = buffer;
        this.consumerMask = mask;
        this.producerLookAhead = (long) (mask - 1);
        soProducerIndex(0);
    }

    public boolean offer(T e) {
        if (e != null) {
            AtomicReferenceArray<Object> buffer = this.producerBuffer;
            long index = lpProducerIndex();
            int mask = this.producerMask;
            int offset = calcWrappedOffset(index, mask);
            if ((index >= this.producerLookAhead ? 1 : null) == null) {
                return writeToQueue(buffer, e, index, offset);
            }
            int lookAheadStep = this.producerLookAheadStep;
            if (lvElement(buffer, calcWrappedOffset(((long) lookAheadStep) + index, mask)) == null) {
                this.producerLookAhead = (((long) lookAheadStep) + index) - 1;
                return writeToQueue(buffer, e, index, offset);
            } else if (lvElement(buffer, calcWrappedOffset(1 + index, mask)) == null) {
                return writeToQueue(buffer, e, index, offset);
            } else {
                resize(buffer, index, offset, e, (long) mask);
                return true;
            }
        }
        throw new NullPointerException("Null is not a valid element");
    }

    private boolean writeToQueue(AtomicReferenceArray<Object> buffer, T e, long index, int offset) {
        soElement(buffer, offset, e);
        soProducerIndex(1 + index);
        return true;
    }

    private void resize(AtomicReferenceArray<Object> oldBuffer, long currIndex, int offset, T e, long mask) {
        AtomicReferenceArray<Object> newBuffer = new AtomicReferenceArray(oldBuffer.length());
        this.producerBuffer = newBuffer;
        this.producerLookAhead = (currIndex + mask) - 1;
        soElement(newBuffer, offset, e);
        soNext(oldBuffer, newBuffer);
        soElement(oldBuffer, offset, HAS_NEXT);
        soProducerIndex(currIndex + 1);
    }

    private void soNext(AtomicReferenceArray<Object> curr, AtomicReferenceArray<Object> next) {
        soElement(curr, calcDirectOffset(curr.length() - 1), next);
    }

    private AtomicReferenceArray<Object> lvNextBufferAndUnlink(AtomicReferenceArray<Object> curr, int nextIndex) {
        int nextOffset = calcDirectOffset(nextIndex);
        AtomicReferenceArray<Object> nextBuffer = (AtomicReferenceArray) lvElement(curr, nextOffset);
        soElement(curr, nextOffset, null);
        return nextBuffer;
    }

    @Nullable
    public T poll() {
        boolean isNextBuffer = false;
        AtomicReferenceArray<Object> buffer = this.consumerBuffer;
        long index = lpConsumerIndex();
        int mask = this.consumerMask;
        int offset = calcWrappedOffset(index, mask);
        Object e = lvElement(buffer, offset);
        if (e == HAS_NEXT) {
            isNextBuffer = true;
        }
        if (e != null && !isNextBuffer) {
            soElement(buffer, offset, null);
            soConsumerIndex(1 + index);
            return e;
        } else if (isNextBuffer) {
            return newBufferPoll(lvNextBufferAndUnlink(buffer, mask + 1), index, mask);
        } else {
            return null;
        }
    }

    private T newBufferPoll(AtomicReferenceArray<Object> nextBuffer, long index, int mask) {
        this.consumerBuffer = nextBuffer;
        int offsetInNew = calcWrappedOffset(index, mask);
        T n = lvElement(nextBuffer, offsetInNew);
        if (n != null) {
            soElement(nextBuffer, offsetInNew, null);
            soConsumerIndex(1 + index);
        }
        return n;
    }

    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    public boolean isEmpty() {
        return lvProducerIndex() == lvConsumerIndex();
    }

    private void adjustLookAheadStep(int capacity) {
        this.producerLookAheadStep = Math.min(capacity / 4, MAX_LOOK_AHEAD_STEP);
    }

    private long lvProducerIndex() {
        return this.producerIndex.get();
    }

    private long lvConsumerIndex() {
        return this.consumerIndex.get();
    }

    private long lpProducerIndex() {
        return this.producerIndex.get();
    }

    private long lpConsumerIndex() {
        return this.consumerIndex.get();
    }

    private void soProducerIndex(long v) {
        this.producerIndex.lazySet(v);
    }

    private void soConsumerIndex(long v) {
        this.consumerIndex.lazySet(v);
    }

    private static int calcWrappedOffset(long index, int mask) {
        return calcDirectOffset(((int) index) & mask);
    }

    private static int calcDirectOffset(int index) {
        return index;
    }

    private static void soElement(AtomicReferenceArray<Object> buffer, int offset, Object e) {
        buffer.lazySet(offset, e);
    }

    private static <E> Object lvElement(AtomicReferenceArray<Object> buffer, int offset) {
        return buffer.get(offset);
    }
}
