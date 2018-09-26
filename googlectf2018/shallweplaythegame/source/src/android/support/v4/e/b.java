// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.e;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.support.v4.e:
//            a

public class android.support.v4.e.b
    implements Parcelable
{
    class a extends a.a
    {

        final android.support.v4.e.b a;

        public void a(int i, Bundle bundle)
        {
            if (a.b != null)
            {
                a.b.post(a. new b(i, bundle));
                return;
            } else
            {
                a.a(i, bundle);
                return;
            }
        }

        a()
        {
            a = android.support.v4.e.b.this;
            super();
        }
    }

    class b
        implements Runnable
    {

        final int a;
        final Bundle b;
        final android.support.v4.e.b c;

        public void run()
        {
            c.a(a, b);
        }

        b(int i, Bundle bundle)
        {
            c = android.support.v4.e.b.this;
            super();
            a = i;
            b = bundle;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public android.support.v4.e.b a(Parcel parcel)
        {
            return new android.support.v4.e.b(parcel);
        }

        public android.support.v4.e.b[] a(int i)
        {
            return new android.support.v4.e.b[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int i)
        {
            return a(i);
        }

    };
    final boolean a = false;
    final Handler b = null;
    android.support.v4.e.a c;

    android.support.v4.e.b(Parcel parcel)
    {
        c = android.support.v4.e.a.a.a(parcel.readStrongBinder());
    }

    protected void a(int i, Bundle bundle)
    {
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        this;
        JVM INSTR monitorenter ;
        if (c == null)
        {
            c = new a();
        }
        parcel.writeStrongBinder(c.asBinder());
        this;
        JVM INSTR monitorexit ;
        return;
        parcel;
        this;
        JVM INSTR monitorexit ;
        throw parcel;
    }

}
