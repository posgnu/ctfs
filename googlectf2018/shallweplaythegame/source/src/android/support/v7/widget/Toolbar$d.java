// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.h.a;

// Referenced classes of package android.support.v7.widget:
//            Toolbar

public static class c extends a
{

    public static final android.os..Creator CREATOR = new android.os.Parcelable.ClassLoaderCreator() {

        public Toolbar.d a(Parcel parcel)
        {
            return new Toolbar.d(parcel, null);
        }

        public Toolbar.d a(Parcel parcel, ClassLoader classloader)
        {
            return new Toolbar.d(parcel, classloader);
        }

        public Toolbar.d[] a(int i)
        {
            return new Toolbar.d[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object createFromParcel(Parcel parcel, ClassLoader classloader)
        {
            return a(parcel, classloader);
        }

        public Object[] newArray(int i)
        {
            return a(i);
        }

    };
    int b;
    boolean c;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeInt(b);
        if (c)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        parcel.writeInt(i);
    }


    public _cls1(Parcel parcel, ClassLoader classloader)
    {
        super(parcel, classloader);
        b = parcel.readInt();
        boolean flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }

    public c(Parcelable parcelable)
    {
        super(parcelable);
    }
}
