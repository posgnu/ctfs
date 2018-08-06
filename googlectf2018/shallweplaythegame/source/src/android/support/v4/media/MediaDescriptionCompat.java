// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

// Referenced classes of package android.support.v4.media:
//            a, b

public final class MediaDescriptionCompat
    implements Parcelable
{
    public static final class a
    {

        private String a;
        private CharSequence b;
        private CharSequence c;
        private CharSequence d;
        private Bitmap e;
        private Uri f;
        private Bundle g;
        private Uri h;

        public a a(Bitmap bitmap)
        {
            e = bitmap;
            return this;
        }

        public a a(Uri uri)
        {
            f = uri;
            return this;
        }

        public a a(Bundle bundle)
        {
            g = bundle;
            return this;
        }

        public a a(CharSequence charsequence)
        {
            b = charsequence;
            return this;
        }

        public a a(String s)
        {
            a = s;
            return this;
        }

        public MediaDescriptionCompat a()
        {
            return new MediaDescriptionCompat(a, b, c, d, e, f, g, h);
        }

        public a b(Uri uri)
        {
            h = uri;
            return this;
        }

        public a b(CharSequence charsequence)
        {
            c = charsequence;
            return this;
        }

        public a c(CharSequence charsequence)
        {
            d = charsequence;
            return this;
        }

        public a()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public MediaDescriptionCompat a(Parcel parcel)
        {
            if (android.os.Build.VERSION.SDK_INT < 21)
            {
                return new MediaDescriptionCompat(parcel);
            } else
            {
                return MediaDescriptionCompat.a(android.support.v4.media.a.a(parcel));
            }
        }

        public MediaDescriptionCompat[] a(int j)
        {
            return new MediaDescriptionCompat[j];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int j)
        {
            return a(j);
        }

    };
    private final String a;
    private final CharSequence b;
    private final CharSequence c;
    private final CharSequence d;
    private final Bitmap e;
    private final Uri f;
    private final Bundle g;
    private final Uri h;
    private Object i;

    MediaDescriptionCompat(Parcel parcel)
    {
        a = parcel.readString();
        b = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        c = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        d = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        e = (Bitmap)parcel.readParcelable(null);
        f = (Uri)parcel.readParcelable(null);
        g = parcel.readBundle();
        h = (Uri)parcel.readParcelable(null);
    }

    MediaDescriptionCompat(String s, CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, Bitmap bitmap, Uri uri, Bundle bundle, 
            Uri uri1)
    {
        a = s;
        b = charsequence;
        c = charsequence1;
        d = charsequence2;
        e = bitmap;
        f = uri;
        g = bundle;
        h = uri1;
    }

    public static MediaDescriptionCompat a(Object obj)
    {
        Object obj1;
        Object obj2;
        obj2 = null;
        obj1 = obj2;
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj1 = obj2;
        if (android.os.Build.VERSION.SDK_INT < 21) goto _L2; else goto _L3
_L3:
        a a1;
        a1 = new a();
        a1.a(android.support.v4.media.a.a(obj));
        a1.a(android.support.v4.media.a.b(obj));
        a1.b(android.support.v4.media.a.c(obj));
        a1.c(android.support.v4.media.a.d(obj));
        a1.a(android.support.v4.media.a.e(obj));
        a1.a(android.support.v4.media.a.f(obj));
        Bundle bundle = android.support.v4.media.a.g(obj);
        if (bundle == null)
        {
            obj1 = null;
        } else
        {
            obj1 = (Uri)bundle.getParcelable("android.support.v4.media.description.MEDIA_URI");
        }
        if (obj1 != null)
        {
            if (bundle.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && bundle.size() == 2)
            {
                bundle = null;
            } else
            {
                bundle.remove("android.support.v4.media.description.MEDIA_URI");
                bundle.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            }
        }
        a1.a(bundle);
        if (obj1 == null) goto _L5; else goto _L4
_L4:
        a1.b(((Uri) (obj1)));
_L7:
        obj1 = a1.a();
        obj1.i = obj;
_L2:
        return ((MediaDescriptionCompat) (obj1));
_L5:
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            a1.b(android.support.v4.media.b.h(obj));
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public Object a()
    {
        if (i != null || android.os.Build.VERSION.SDK_INT < 21)
        {
            return i;
        }
        Object obj = android.support.v4.media.a.a.a();
        android.support.v4.media.a.a.a(obj, a);
        android.support.v4.media.a.a.a(obj, b);
        android.support.v4.media.a.a.b(obj, c);
        android.support.v4.media.a.a.c(obj, d);
        android.support.v4.media.a.a.a(obj, e);
        android.support.v4.media.a.a.a(obj, f);
        Bundle bundle1 = g;
        Bundle bundle = bundle1;
        if (android.os.Build.VERSION.SDK_INT < 23)
        {
            bundle = bundle1;
            if (h != null)
            {
                bundle = bundle1;
                if (bundle1 == null)
                {
                    bundle = new Bundle();
                    bundle.putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
                }
                bundle.putParcelable("android.support.v4.media.description.MEDIA_URI", h);
            }
        }
        android.support.v4.media.a.a.a(obj, bundle);
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            android.support.v4.media.b.a.b(obj, h);
        }
        i = android.support.v4.media.a.a.a(obj);
        return i;
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return (new StringBuilder()).append(b).append(", ").append(c).append(", ").append(d).toString();
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            parcel.writeString(a);
            TextUtils.writeToParcel(b, parcel, j);
            TextUtils.writeToParcel(c, parcel, j);
            TextUtils.writeToParcel(d, parcel, j);
            parcel.writeParcelable(e, j);
            parcel.writeParcelable(f, j);
            parcel.writeBundle(g);
            parcel.writeParcelable(h, j);
            return;
        } else
        {
            android.support.v4.media.a.a(a(), parcel, j);
            return;
        }
    }

}
