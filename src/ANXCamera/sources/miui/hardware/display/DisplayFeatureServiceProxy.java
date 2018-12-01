package miui.hardware.display;

import android.os.HwParcel;
import android.os.IBinder;
import android.os.IHwBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Slog;
import miui.os.DeviceFeature;

class DisplayFeatureServiceProxy {
    private static final int HIDL_TRANSACTION_interfaceDescriptor = 256136003;
    private static final int HIDL_TRANSACTION_setFeature = 1;
    private static final String HWBINDER_BASE_INTERFACE_DESCRIPTOR = "android.hidl.base@1.0::IBase";
    private static final String HWBINDER_INTERFACE_DESCRIPTOR = "vendor.xiaomi.hardware.displayfeature@1.0::IDisplayFeature";
    private static final String INTERFACE_DESCRIPTOR = "miui.hardware.display.IDisplayFeatureService";
    private static String TAG = "DisplayFeatureServiceProxy";
    private static final int TRANSACTION_setFeature = 100;
    private String mDescriptor;
    private IHwBinder mHwService;
    private IBinder mService;

    DisplayFeatureServiceProxy(Object service) {
        try {
            if (service instanceof IBinder) {
                this.mService = (IBinder) service;
                this.mDescriptor = this.mService.getInterfaceDescriptor();
                if (TextUtils.isEmpty(this.mDescriptor)) {
                    this.mDescriptor = INTERFACE_DESCRIPTOR;
                }
            } else if (service instanceof IHwBinder) {
                this.mHwService = (IHwBinder) service;
                this.mDescriptor = interfaceDescriptor();
                if (TextUtils.isEmpty(this.mDescriptor)) {
                    this.mDescriptor = HWBINDER_INTERFACE_DESCRIPTOR;
                }
            }
        } catch (RemoteException e) {
        }
    }

    void setFeature(int displayId, int mode, int value, int cookie) {
        if (DeviceFeature.SUPPORT_DISPLAYFEATURE_HIDL) {
            callHwBinderTransact(1, displayId, mode, value, cookie);
            return;
        }
        callBinderTransact(TRANSACTION_setFeature, displayId, mode, value, cookie);
    }

    public String interfaceDescriptor() throws RemoteException {
        HwParcel _hidl_request = new HwParcel();
        _hidl_request.writeInterfaceToken(HWBINDER_BASE_INTERFACE_DESCRIPTOR);
        HwParcel _hidl_reply = new HwParcel();
        try {
            this.mHwService.transact(HIDL_TRANSACTION_interfaceDescriptor, _hidl_request, _hidl_reply, 0);
            _hidl_reply.verifySuccess();
            _hidl_request.releaseTemporaryStorage();
            String _hidl_out_descriptor = _hidl_reply.readString();
            return _hidl_out_descriptor;
        } finally {
            _hidl_reply.release();
        }
    }

    private int callBinderTransact(int transactId, int... params) {
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        int result = -1;
        try {
            data.writeInterfaceToken(this.mDescriptor);
            for (int param : params) {
                data.writeInt(param);
            }
            if (this.mService.transact(transactId, data, reply, 0)) {
                reply.readException();
                result = reply.readInt();
            }
            reply.recycle();
            data.recycle();
        } catch (RemoteException e) {
            Slog.e(TAG, "callBinderTransact transact fail. " + e);
            reply.recycle();
            data.recycle();
        } catch (Throwable th) {
            reply.recycle();
            data.recycle();
            throw th;
        }
        return result;
    }

    private void callHwBinderTransact(int _hidl_code, int... params) {
        HwParcel hidl_reply = new HwParcel();
        try {
            HwParcel hidl_request = new HwParcel();
            hidl_request.writeInterfaceToken(this.mDescriptor);
            for (int param : params) {
                hidl_request.writeInt32(param);
            }
            this.mHwService.transact(_hidl_code, hidl_request, hidl_reply, 0);
            hidl_reply.verifySuccess();
            hidl_request.releaseTemporaryStorage();
        } catch (RemoteException e) {
            Slog.e(TAG, "callHwBinderTransact transact fail. " + e);
        } finally {
            hidl_reply.release();
        }
    }
}
