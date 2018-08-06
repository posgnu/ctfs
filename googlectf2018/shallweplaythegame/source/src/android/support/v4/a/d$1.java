// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.os.Parcel;

// Referenced classes of package android.support.v4.a:
//            d

static final class ator
    implements android.os.elable.Creator
{

    public d a(Parcel parcel)
    {
        return new d(parcel);
    }

    public d[] a(int i)
    {
        return new d[i];
    }

    public Object createFromParcel(Parcel parcel)
    {
        return a(parcel);
    }

    public Object[] newArray(int i)
    {
        return a(i);
    }

    ator()
    {
    }
}
