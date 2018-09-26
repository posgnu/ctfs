// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.e;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package android.support.v4.e:
//            a

private static class a
    implements a
{

    private IBinder a;

    public void a(int i, Bundle bundle)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("android.support.v4.os.IResultReceiver");
        parcel.writeInt(i);
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L1:
        a.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        bundle;
        parcel.recycle();
        throw bundle;
    }

    public IBinder asBinder()
    {
        return a;
    }

    (IBinder ibinder)
    {
        a = ibinder;
    }
}
