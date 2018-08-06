// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            c, h, n

final class d
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public d a(Parcel parcel)
        {
            return new d(parcel);
        }

        public d[] a(int i1)
        {
            return new d[i1];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int i1)
        {
            return a(i1);
        }

    };
    final int a[];
    final int b;
    final int c;
    final String d;
    final int e;
    final int f;
    final CharSequence g;
    final int h;
    final CharSequence i;
    final ArrayList j;
    final ArrayList k;
    final boolean l;

    public d(Parcel parcel)
    {
        a = parcel.createIntArray();
        b = parcel.readInt();
        c = parcel.readInt();
        d = parcel.readString();
        e = parcel.readInt();
        f = parcel.readInt();
        g = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        h = parcel.readInt();
        i = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        j = parcel.createStringArrayList();
        k = parcel.createStringArrayList();
        boolean flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = flag;
    }

    public d(c c1)
    {
        int k1 = c1.c.size();
        a = new int[k1 * 6];
        if (!c1.j)
        {
            throw new IllegalStateException("Not on back stack");
        }
        int i1 = 0;
        int j1 = 0;
        while (i1 < k1) 
        {
            c.a a1 = (c.a)c1.c.get(i1);
            int ai[] = a;
            int l1 = j1 + 1;
            ai[j1] = a1.a;
            ai = a;
            int i2 = l1 + 1;
            if (a1.b != null)
            {
                j1 = a1.b.e;
            } else
            {
                j1 = -1;
            }
            ai[l1] = j1;
            ai = a;
            j1 = i2 + 1;
            ai[i2] = a1.c;
            ai = a;
            l1 = j1 + 1;
            ai[j1] = a1.d;
            ai = a;
            i2 = l1 + 1;
            ai[l1] = a1.e;
            ai = a;
            j1 = i2 + 1;
            ai[i2] = a1.f;
            i1++;
        }
        b = c1.h;
        c = c1.i;
        d = c1.l;
        e = c1.n;
        f = c1.o;
        g = c1.p;
        h = c1.q;
        i = c1.r;
        j = c1.s;
        k = c1.t;
        l = c1.u;
    }

    public c a(n n1)
    {
        int j1 = 0;
        c c1 = new c(n1);
        int i1 = 0;
        while (j1 < a.length) 
        {
            c.a a1 = new c.a();
            int ai[] = a;
            int k1 = j1 + 1;
            a1.a = ai[j1];
            if (n.a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("Instantiate ").append(c1).append(" op #").append(i1).append(" base fragment #").append(a[k1]).toString());
            }
            ai = a;
            j1 = k1 + 1;
            k1 = ai[k1];
            if (k1 >= 0)
            {
                a1.b = (h)n1.f.get(k1);
            } else
            {
                a1.b = null;
            }
            ai = a;
            k1 = j1 + 1;
            a1.c = ai[j1];
            ai = a;
            j1 = k1 + 1;
            a1.d = ai[k1];
            ai = a;
            k1 = j1 + 1;
            a1.e = ai[j1];
            a1.f = a[k1];
            c1.d = a1.c;
            c1.e = a1.d;
            c1.f = a1.e;
            c1.g = a1.f;
            c1.a(a1);
            i1++;
            j1 = k1 + 1;
        }
        c1.h = b;
        c1.i = c;
        c1.l = d;
        c1.n = e;
        c1.j = true;
        c1.o = f;
        c1.p = g;
        c1.q = h;
        c1.r = i;
        c1.s = j;
        c1.t = k;
        c1.u = l;
        c1.a(1);
        return c1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        i1 = 0;
        parcel.writeIntArray(a);
        parcel.writeInt(b);
        parcel.writeInt(c);
        parcel.writeString(d);
        parcel.writeInt(e);
        parcel.writeInt(f);
        TextUtils.writeToParcel(g, parcel, 0);
        parcel.writeInt(h);
        TextUtils.writeToParcel(i, parcel, 0);
        parcel.writeStringList(j);
        parcel.writeStringList(k);
        if (l)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
    }

}
