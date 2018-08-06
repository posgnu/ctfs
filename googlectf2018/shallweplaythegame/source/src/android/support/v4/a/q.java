// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

// Referenced classes of package android.support.v4.a:
//            h, l, j, n, 
//            o

final class q
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public q a(Parcel parcel)
        {
            return new q(parcel);
        }

        public q[] a(int i1)
        {
            return new q[i1];
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
    final String a;
    final int b;
    final boolean c;
    final int d;
    final int e;
    final String f;
    final boolean g;
    final boolean h;
    final Bundle i;
    final boolean j;
    Bundle k;
    h l;

    public q(Parcel parcel)
    {
        boolean flag1 = true;
        super();
        a = parcel.readString();
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
        d = parcel.readInt();
        e = parcel.readInt();
        f = parcel.readString();
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        if (parcel.readInt() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        h = flag;
        i = parcel.readBundle();
        if (parcel.readInt() != 0)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        j = flag;
        k = parcel.readBundle();
    }

    public q(h h1)
    {
        a = h1.getClass().getName();
        b = h1.e;
        c = h1.m;
        d = h1.w;
        e = h1.x;
        f = h1.y;
        g = h1.B;
        h = h1.A;
        i = h1.g;
        j = h1.z;
    }

    public h a(l l1, j j1, h h1, o o)
    {
        if (l == null)
        {
            Context context = l1.g();
            if (i != null)
            {
                i.setClassLoader(context.getClassLoader());
            }
            if (j1 != null)
            {
                l = j1.a(context, a, i);
            } else
            {
                l = android.support.v4.a.h.a(context, a, i);
            }
            if (k != null)
            {
                k.setClassLoader(context.getClassLoader());
                l.c = k;
            }
            l.a(b, h1);
            l.m = c;
            l.o = true;
            l.w = d;
            l.x = e;
            l.y = f;
            l.B = g;
            l.A = h;
            l.z = j;
            l.r = l1.d;
            if (n.a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("Instantiated fragment ").append(l).toString());
            }
        }
        l.u = o;
        return l;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        boolean flag = true;
        parcel.writeString(a);
        parcel.writeInt(b);
        if (c)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        parcel.writeInt(i1);
        parcel.writeInt(d);
        parcel.writeInt(e);
        parcel.writeString(f);
        if (g)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        parcel.writeInt(i1);
        if (h)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        parcel.writeInt(i1);
        parcel.writeBundle(i);
        if (j)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        parcel.writeInt(i1);
        parcel.writeBundle(k);
    }

}
