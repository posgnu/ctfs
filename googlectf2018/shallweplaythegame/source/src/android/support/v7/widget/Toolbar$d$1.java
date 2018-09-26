// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Parcel;

// Referenced classes of package android.support.v7.widget:
//            Toolbar

static final class or
    implements android.os.lassLoaderCreator
{

    public or a(Parcel parcel)
    {
        return new nit>(parcel, null);
    }

    public nit> a(Parcel parcel, ClassLoader classloader)
    {
        return new nit>(parcel, classloader);
    }

    public nit>[] a(int i)
    {
        return new nit>[i];
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

    or()
    {
    }
}
