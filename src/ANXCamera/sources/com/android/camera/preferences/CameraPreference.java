package com.android.camera.preferences;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.camera.R$styleable;

public abstract class CameraPreference {
    protected final Context mContext;
    private final String mTitle;

    public CameraPreference(Context context, AttributeSet attrs) {
        this.mContext = context;
        TypedArray a = context.obtainStyledAttributes(attrs, R$styleable.CameraPreference, 0, 0);
        this.mTitle = a.getString(0);
        a.recycle();
    }
}
