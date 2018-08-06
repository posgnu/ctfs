// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            e, f

public final class PlaybackStateCompat
    implements Parcelable
{
    public static final class CustomAction
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public CustomAction a(Parcel parcel)
            {
                return new CustomAction(parcel);
            }

            public CustomAction[] a(int i1)
            {
                return new CustomAction[i1];
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
        private final String a;
        private final CharSequence b;
        private final int c;
        private final Bundle d;
        private Object e;

        public static CustomAction a(Object obj)
        {
            if (obj == null || android.os.Build.VERSION.SDK_INT < 21)
            {
                return null;
            } else
            {
                CustomAction customaction = new CustomAction(android.support.v4.media.session.e.a.a(obj), android.support.v4.media.session.e.a.b(obj), android.support.v4.media.session.e.a.c(obj), android.support.v4.media.session.e.a.d(obj));
                customaction.e = obj;
                return customaction;
            }
        }

        public int describeContents()
        {
            return 0;
        }

        public String toString()
        {
            return (new StringBuilder()).append("Action:mName='").append(b).append(", mIcon=").append(c).append(", mExtras=").append(d).toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            parcel.writeString(a);
            TextUtils.writeToParcel(b, parcel, i1);
            parcel.writeInt(c);
            parcel.writeBundle(d);
        }


        CustomAction(Parcel parcel)
        {
            a = parcel.readString();
            b = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            c = parcel.readInt();
            d = parcel.readBundle();
        }

        CustomAction(String s, CharSequence charsequence, int i1, Bundle bundle)
        {
            a = s;
            b = charsequence;
            c = i1;
            d = bundle;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public PlaybackStateCompat a(Parcel parcel)
        {
            return new PlaybackStateCompat(parcel);
        }

        public PlaybackStateCompat[] a(int i1)
        {
            return new PlaybackStateCompat[i1];
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
    final int a;
    final long b;
    final long c;
    final float d;
    final long e;
    final int f;
    final CharSequence g;
    final long h;
    List i;
    final long j;
    final Bundle k;
    private Object l;

    PlaybackStateCompat(int i1, long l1, long l2, float f1, long l3, int j1, CharSequence charsequence, long l4, List list, long l5, Bundle bundle)
    {
        a = i1;
        b = l1;
        c = l2;
        d = f1;
        e = l3;
        f = j1;
        g = charsequence;
        h = l4;
        i = new ArrayList(list);
        j = l5;
        k = bundle;
    }

    PlaybackStateCompat(Parcel parcel)
    {
        a = parcel.readInt();
        b = parcel.readLong();
        d = parcel.readFloat();
        h = parcel.readLong();
        c = parcel.readLong();
        e = parcel.readLong();
        g = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        i = parcel.createTypedArrayList(CustomAction.CREATOR);
        j = parcel.readLong();
        k = parcel.readBundle();
        f = parcel.readInt();
    }

    public static PlaybackStateCompat a(Object obj)
    {
        if (obj != null && android.os.Build.VERSION.SDK_INT >= 21)
        {
            Object obj2 = android.support.v4.media.session.e.h(obj);
            Object obj1 = null;
            if (obj2 != null)
            {
                ArrayList arraylist = new ArrayList(((List) (obj2)).size());
                obj2 = ((List) (obj2)).iterator();
                do
                {
                    obj1 = arraylist;
                    if (!((Iterator) (obj2)).hasNext())
                    {
                        break;
                    }
                    arraylist.add(CustomAction.a(((Iterator) (obj2)).next()));
                } while (true);
            }
            Bundle bundle;
            if (android.os.Build.VERSION.SDK_INT >= 22)
            {
                bundle = android.support.v4.media.session.f.a(obj);
            } else
            {
                bundle = null;
            }
            obj1 = new PlaybackStateCompat(android.support.v4.media.session.e.a(obj), android.support.v4.media.session.e.b(obj), android.support.v4.media.session.e.c(obj), android.support.v4.media.session.e.d(obj), android.support.v4.media.session.e.e(obj), 0, android.support.v4.media.session.e.f(obj), android.support.v4.media.session.e.g(obj), ((List) (obj1)), android.support.v4.media.session.e.i(obj), bundle);
            obj1.l = obj;
            return ((PlaybackStateCompat) (obj1));
        } else
        {
            return null;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("PlaybackState {");
        stringbuilder.append("state=").append(a);
        stringbuilder.append(", position=").append(b);
        stringbuilder.append(", buffered position=").append(c);
        stringbuilder.append(", speed=").append(d);
        stringbuilder.append(", updated=").append(h);
        stringbuilder.append(", actions=").append(e);
        stringbuilder.append(", error code=").append(f);
        stringbuilder.append(", error message=").append(g);
        stringbuilder.append(", custom actions=").append(i);
        stringbuilder.append(", active item id=").append(j);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        parcel.writeInt(a);
        parcel.writeLong(b);
        parcel.writeFloat(d);
        parcel.writeLong(h);
        parcel.writeLong(c);
        parcel.writeLong(e);
        TextUtils.writeToParcel(g, parcel, i1);
        parcel.writeTypedList(i);
        parcel.writeLong(j);
        parcel.writeBundle(k);
        parcel.writeInt(f);
    }

}
