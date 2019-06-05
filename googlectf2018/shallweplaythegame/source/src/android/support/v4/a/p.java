// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.support.v4.a:
//            q, d

final class p
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public p a(Parcel parcel)
        {
            return new p(parcel);
        }

        public p[] a(int i)
        {
            return new p[i];
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
    q a[];
    int b[];
    d c[];
    int d;
    int e;

    public p()
    {
        d = -1;
    }

    public p(Parcel parcel)
    {
        d = -1;
        a = (q[])parcel.createTypedArray(q.CREATOR);
        b = parcel.createIntArray();
        c = (d[])parcel.createTypedArray(d.CREATOR);
        d = parcel.readInt();
        e = parcel.readInt();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeTypedArray(a, i);
        parcel.writeIntArray(b);
        parcel.writeTypedArray(c, i);
        parcel.writeInt(d);
        parcel.writeInt(e);
    }

}
