// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            MediaSessionCompat

public static final class c
    implements Parcelable
{

    public static final android.os.ssionCompat.QueueItem.b CREATOR = new android.os.Parcelable.Creator() {

        public MediaSessionCompat.QueueItem a(Parcel parcel)
        {
            return new MediaSessionCompat.QueueItem(parcel);
        }

        public MediaSessionCompat.QueueItem[] a(int i)
        {
            return new MediaSessionCompat.QueueItem[i];
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
    private final MediaDescriptionCompat a;
    private final long b;
    private Object c;

    public static c a(Object obj)
    {
        if (obj == null || android.os.nCompat < 21)
        {
            return null;
        } else
        {
            return new <init>(obj, MediaDescriptionCompat.a(<init>(obj)), <init>(obj));
        }
    }

    public static List a(List list)
    {
        if (list != null && android.os.nCompat >= 21) goto _L2; else goto _L1
_L1:
        list = null;
_L4:
        return list;
_L2:
        ArrayList arraylist = new ArrayList();
        Iterator iterator = list.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            arraylist.add(a(iterator.next()));
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return (new StringBuilder()).append("MediaSession.QueueItem {Description=").append(a).append(", Id=").append(b).append(" }").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        a.writeToParcel(parcel, i);
        parcel.writeLong(b);
    }


    _cls1(Parcel parcel)
    {
        a = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.Parcel(parcel);
        b = parcel.readLong();
    }

    private b(Object obj, MediaDescriptionCompat mediadescriptioncompat, long l)
    {
        if (mediadescriptioncompat == null)
        {
            throw new IllegalArgumentException("Description cannot be null.");
        }
        if (l == -1L)
        {
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        } else
        {
            a = mediadescriptioncompat;
            b = l;
            c = obj;
            return;
        }
    }
}
