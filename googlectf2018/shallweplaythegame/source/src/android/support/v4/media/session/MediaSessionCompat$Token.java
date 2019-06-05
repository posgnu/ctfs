// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.support.v4.media.session:
//            MediaSessionCompat, b

public static final class b
    implements Parcelable
{

    public static final android.os.iaSessionCompat.Token.a CREATOR = new android.os.Parcelable.Creator() {

        public MediaSessionCompat.Token a(Parcel parcel)
        {
            if (android.os.Build.VERSION.SDK_INT >= 21)
            {
                parcel = parcel.readParcelable(null);
            } else
            {
                parcel = parcel.readStrongBinder();
            }
            return new MediaSessionCompat.Token(parcel);
        }

        public MediaSessionCompat.Token[] a(int i)
        {
            return new MediaSessionCompat.Token[i];
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
    private final Object a;
    private final b b;

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof b))
            {
                return false;
            }
            obj = (b)obj;
            if (a == null)
            {
                if (((a) (obj)).a != null)
                {
                    return false;
                }
            } else
            if (((a) (obj)).a == null)
            {
                return false;
            } else
            {
                return a.equals(((a) (obj)).a);
            }
        }
        return true;
    }

    public int hashCode()
    {
        if (a == null)
        {
            return 0;
        } else
        {
            return a.hashCode();
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        if (android.os.iaSessionCompat.Token >= 21)
        {
            parcel.writeParcelable((Parcelable)a, i);
            return;
        } else
        {
            parcel.writeStrongBinder((IBinder)a);
            return;
        }
    }


    _cls1(Object obj)
    {
        this(obj, null);
    }

    <init>(Object obj, b b1)
    {
        a = obj;
        b = b1;
    }
}
