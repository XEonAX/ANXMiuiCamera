package miui.preference;

import android.content.Context;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceCategory;
import android.util.AttributeSet;

public class RadioButtonPreferenceCategory extends PreferenceCategory implements OnPreferenceChangeListener {
    private static final String TAG = "RadioButtonPreferenceCategory";
    private int iT;
    private RadioButtonPreference iU;

    public RadioButtonPreferenceCategory(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.iT = -1;
    }

    public RadioButtonPreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.iT = -1;
    }

    public RadioButtonPreferenceCategory(Context context) {
        this(context, null);
    }

    public boolean addPreference(Preference preference) {
        if (preference instanceof RadioButtonPreference) {
            boolean addPreference = super.addPreference(preference);
            if (addPreference) {
                preference.setOnPreferenceChangeListener(this);
            }
            return addPreference;
        }
        throw new IllegalArgumentException("Only RadioButtonPreference can be added toRadioButtonPreferenceCategory");
    }

    public void uncheckAllPreference() {
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            ((RadioButtonPreference) getPreference(i)).setChecked(false);
        }
    }

    public void setCheckedPreference(Preference preference) {
        int preferenceCount = getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference2 = (RadioButtonPreference) getPreference(i);
            if (preference2 == preference) {
                this.iU = preference2;
                this.iT = i;
                preference2.setChecked(true);
            } else {
                preference2.setChecked(false);
            }
        }
    }

    public void setCheckedPosition(int i) {
        setCheckedPreference(getPreference(i));
    }

    public Preference getCheckedPreference() {
        return this.iU;
    }

    public int getCheckedPosition() {
        return this.iT;
    }

    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (preference != this.iU) {
            setCheckedPreference(preference);
        }
        OnPreferenceClickListener onPreferenceClickListener = getOnPreferenceClickListener();
        if (onPreferenceClickListener != null) {
            onPreferenceClickListener.onPreferenceClick(this);
        }
        return false;
    }
}
