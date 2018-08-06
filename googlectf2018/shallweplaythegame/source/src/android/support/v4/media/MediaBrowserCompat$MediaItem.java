// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.support.v4.media:
//            MediaBrowserCompat, MediaDescriptionCompat

public static class R
    implements Parcelable
{

    public static final android.os.nCompat.writeToParcel CREATOR = new android.os.Parcelable.Creator() {

        public MediaBrowserCompat.MediaItem a(Parcel parcel)
        {
            return new MediaBrowserCompat.MediaItem(parcel);
        }

        public MediaBrowserCompat.MediaItem[] a(int i)
        {
            return new MediaBrowserCompat.MediaItem[i];
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


    _cls1(Parcel parcel)
    {
        a = parcel.readInt();
        b = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.Parcel(parcel);
    }
}
