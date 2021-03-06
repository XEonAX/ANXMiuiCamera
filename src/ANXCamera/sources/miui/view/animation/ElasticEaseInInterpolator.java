package miui.view.animation;

import android.view.animation.Interpolator;

public class ElasticEaseInInterpolator implements Interpolator {
    private final float fm;
    private final float fn;

    public ElasticEaseInInterpolator() {
        this(0.0f, 0.0f);
    }

    public ElasticEaseInInterpolator(float f, float f2) {
        this.fm = f;
        this.fn = f2;
    }

    public float getInterpolation(float f) {
        float f2 = this.fn;
        float f3 = this.fm;
        if (f == 0.0f) {
            return 0.0f;
        }
        if (f == 1.0f) {
            return 1.0f;
        }
        float f4;
        if (f2 == 0.0f) {
            f4 = 0.3f;
        } else {
            f4 = f2;
        }
        if (f3 == 0.0f || f3 < 1.0f) {
            f2 = f4 / 4.0f;
            f3 = 1.0f;
        } else {
            f2 = (float) ((((double) f4) / 6.283185307179586d) * Math.asin((double) (1.0f / f3)));
        }
        float f5 = f - 1.0f;
        return -((float) (Math.sin((((double) (f5 - f2)) * 6.283185307179586d) / ((double) f4)) * (((double) f3) * Math.pow(2.0d, (double) (10.0f * f5)))));
    }
}
