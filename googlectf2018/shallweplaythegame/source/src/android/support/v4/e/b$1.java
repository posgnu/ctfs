// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.e;

import android.os.Parcel;

// Referenced classes of package android.support.v4.e:
//            b

static final class ator
    implements android.os.elable.Creator
{

    public b a(Parcel parcel)
    {
        return new b(parcel);
    }

    public b[] a(int i)
    {
        return new b[i];
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
