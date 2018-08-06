// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.os.Parcel;

// Referenced classes of package android.support.v4.h:
//            a

static final class eption
    implements android.os.elable.ClassLoaderCreator
{

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

    eption()
    {
    }
}
