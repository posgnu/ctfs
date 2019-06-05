// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class a
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.ClassLoaderCreator() {

        public a a(Parcel parcel)
        {
            return a(parcel, null);
        }

        public a a(Parcel parcel, ClassLoader classloader)
        {
            if (parcel.readParcelable(classloader) != null)
            {
                throw new IllegalStateException("superState must be null");
            } else
            {
                return a.a;
            }
        }

        public a[] a(int i)
        {
            return new a[i];
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
    public static final a a = new a() {

    };
    private final Parcelable b;

    private a()
    {
        b = null;
    }

    protected a(Parcel parcel, ClassLoader classloader)
    {
        parcel = parcel.readParcelable(classloader);
        if (parcel == null)
        {
            parcel = a;
        }
        b = parcel;
    }

    protected a(Parcelable parcelable)
    {
        if (parcelable == null)
        {
            throw new IllegalArgumentException("superState must not be null");
        }
        if (parcelable == a)
        {
            parcelable = null;
        }
        b = parcelable;
    }


    public final Parcelable a()
    {
        return b;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeParcelable(b, i);
    }

}
