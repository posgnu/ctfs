// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v4.media:
//            MediaDescriptionCompat

public final class MediaBrowserCompat
{
    private static class CustomActionResultReceiver extends android.support.v4.e.b
    {

        private final String d;
        private final Bundle e;
        private final a f;

        protected void a(int i, Bundle bundle)
        {
            if (f == null)
            {
                return;
            }
            switch (i)
            {
            default:
                Log.w("MediaBrowserCompat", (new StringBuilder()).append("Unknown result code: ").append(i).append(" (extras=").append(e).append(", resultData=").append(bundle).append(")").toString());
                return;

            case 1: // '\001'
                f.a(d, e, bundle);
                return;

            case 0: // '\0'
                f.b(d, e, bundle);
                return;

            case -1: 
                f.c(d, e, bundle);
                return;
            }
        }
    }

    private static class ItemReceiver extends android.support.v4.e.b
    {

        private final String d;
        private final b e;

        protected void a(int i, Bundle bundle)
        {
            if (bundle != null)
            {
                bundle.setClassLoader(android/support/v4/media/MediaBrowserCompat.getClassLoader());
            }
            if (i != 0 || bundle == null || !bundle.containsKey("media_item"))
            {
                e.a(d);
                return;
            }
            bundle = bundle.getParcelable("media_item");
            if (bundle == null || (bundle instanceof MediaItem))
            {
                e.a((MediaItem)bundle);
                return;
            } else
            {
                e.a(d);
                return;
            }
        }
    }

    public static class MediaItem
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public MediaItem a(Parcel parcel)
            {
                return new MediaItem(parcel);
            }

            public MediaItem[] a(int i)
            {
                return new MediaItem[i];
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
        private final int a;
        private final MediaDescriptionCompat b;

        public int describeContents()
        {
            return 0;
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder("MediaItem{");
            stringbuilder.append("mFlags=").append(a);
            stringbuilder.append(", mDescription=").append(b);
            stringbuilder.append('}');
            return stringbuilder.toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeInt(a);
            b.writeToParcel(parcel, i);
        }


        MediaItem(Parcel parcel)
        {
            a = parcel.readInt();
            b = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }

    private static class SearchResultReceiver extends android.support.v4.e.b
    {

        private final String d;
        private final Bundle e;
        private final c f;

        protected void a(int i, Bundle bundle)
        {
            if (bundle != null)
            {
                bundle.setClassLoader(android/support/v4/media/MediaBrowserCompat.getClassLoader());
            }
            if (i != 0 || bundle == null || !bundle.containsKey("search_results"))
            {
                f.a(d, e);
                return;
            }
            Parcelable aparcelable[] = bundle.getParcelableArray("search_results");
            bundle = null;
            if (aparcelable != null)
            {
                bundle = new ArrayList();
                int j = aparcelable.length;
                for (i = 0; i < j; i++)
                {
                    bundle.add((MediaItem)aparcelable[i]);
                }

            }
            f.a(d, e, bundle);
        }
    }

    public static abstract class a
    {

        public void a(String s, Bundle bundle, Bundle bundle1)
        {
        }

        public void b(String s, Bundle bundle, Bundle bundle1)
        {
        }

        public void c(String s, Bundle bundle, Bundle bundle1)
        {
        }
    }

    public static abstract class b
    {

        public void a(MediaItem mediaitem)
        {
        }

        public void a(String s)
        {
        }
    }

    public static abstract class c
    {

        public void a(String s, Bundle bundle)
        {
        }

        public void a(String s, Bundle bundle, List list)
        {
        }
    }


    static final boolean a = Log.isLoggable("MediaBrowserCompat", 3);

}
