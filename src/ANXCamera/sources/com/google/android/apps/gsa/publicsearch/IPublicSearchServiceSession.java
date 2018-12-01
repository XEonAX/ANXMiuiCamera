package com.google.android.apps.gsa.publicsearch;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.aidl.BaseProxy;
import com.google.android.aidl.BaseStub;
import com.google.android.aidl.Codecs;

public interface IPublicSearchServiceSession extends IInterface {

    public static abstract class Stub extends BaseStub implements IPublicSearchServiceSession {

        public static class Proxy extends BaseProxy implements IPublicSearchServiceSession {
            Proxy(IBinder remote) {
                super(remote, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession");
            }

            public void onGenericClientEvent(byte[] serializedClientEvent) throws RemoteException {
                Parcel data = obtainAndWriteInterfaceToken();
                data.writeByteArray(serializedClientEvent);
                transactOneway(1, data);
            }

            public void onGenericClientEventWithSystemParcelable(byte[] serializedClientEvent, SystemParcelableWrapper systemParcelableWrapper) throws RemoteException {
                Parcel data = obtainAndWriteInterfaceToken();
                data.writeByteArray(serializedClientEvent);
                Codecs.writeParcelable(data, systemParcelableWrapper);
                transactOneway(2, data);
            }
        }

        public Stub() {
            super("com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession");
        }

        public static IPublicSearchServiceSession asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface("com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession");
            if (iin instanceof IPublicSearchServiceSession) {
                return (IPublicSearchServiceSession) iin;
            }
            return new Proxy(obj);
        }

        protected boolean dispatchTransaction(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            switch (code) {
                case 1:
                    onGenericClientEvent(data.createByteArray());
                    break;
                case 2:
                    onGenericClientEventWithSystemParcelable(data.createByteArray(), (SystemParcelableWrapper) Codecs.createParcelable(data, SystemParcelableWrapper.CREATOR));
                    break;
                default:
                    return false;
            }
            return true;
        }
    }

    void onGenericClientEvent(byte[] bArr) throws RemoteException;

    void onGenericClientEventWithSystemParcelable(byte[] bArr, SystemParcelableWrapper systemParcelableWrapper) throws RemoteException;
}
