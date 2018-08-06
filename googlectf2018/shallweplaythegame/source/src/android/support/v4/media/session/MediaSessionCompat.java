// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            b

public class MediaSessionCompat
{
    public static final class QueueItem
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public QueueItem a(Parcel parcel)
            {
                return new QueueItem(parcel);
            }

            public QueueItem[] a(int i)
            {
                return new QueueItem[i];
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

        public static QueueItem a(Object obj)
        {
            if (obj == null || android.os.Build.VERSION.SDK_INT < 21)
            {
                return null;
            } else
            {
                return new QueueItem(obj, MediaDescriptionCompat.a(d.a.a(obj)), d.a.b(obj));
            }
        }

        public static List a(List list)
        {
            if (list != null && android.os.Build.VERSION.SDK_INT >= 21) goto _L2; else goto _L1
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


        QueueItem(Parcel parcel)
        {
            a = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            b = parcel.readLong();
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediadescriptioncompat, long l)
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

    static final class ResultReceiverWrapper
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public ResultReceiverWrapper a(Parcel parcel)
            {
                return new ResultReceiverWrapper(parcel);
            }

            public ResultReceiverWrapper[] a(int i)
            {
                return new ResultReceiverWrapper[i];
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
        private ResultReceiver a;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            a.writeToParcel(parcel, i);
        }


        ResultReceiverWrapper(Parcel parcel)
        {
            a = (ResultReceiver)ResultReceiver.CREATOR.createFromParcel(parcel);
        }
    }

    public static final class Token
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public Token a(Parcel parcel)
            {
                if (android.os.Build.VERSION.SDK_INT >= 21)
                {
                    parcel = parcel.readParcelable(null);
                } else
                {
                    parcel = parcel.readStrongBinder();
                }
                return new Token(parcel);
            }

            public Token[] a(int i)
            {
                return new Token[i];
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
                if (!(obj instanceof Token))
                {
                    return false;
                }
                obj = (Token)obj;
                if (a == null)
                {
                    if (((Token) (obj)).a != null)
                    {
                        return false;
                    }
                } else
                if (((Token) (obj)).a == null)
                {
                    return false;
                } else
                {
                    return a.equals(((Token) (obj)).a);
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
            if (android.os.Build.VERSION.SDK_INT >= 21)
            {
                parcel.writeParcelable((Parcelable)a, i);
                return;
            } else
            {
                parcel.writeStrongBinder((IBinder)a);
                return;
            }
        }


        Token(Object obj)
        {
            this(obj, null);
        }

        Token(Object obj, b b1)
        {
            a = obj;
            b = b1;
        }
    }

}
