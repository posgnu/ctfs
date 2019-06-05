// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.MediaMetadataCompat;
import java.lang.ref.WeakReference;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            MediaControllerCompat, c, PlaybackStateCompat, ParcelableVolumeInfo

public static abstract class c
    implements android.os.diaControllerCompat.a
{
    private class a extends Handler
    {

        boolean a;
        final MediaControllerCompat.a b;

        public void handleMessage(Message message)
        {
            if (!a)
            {
                return;
            }
            switch (message.what)
            {
            default:
                return;

            case 1: // '\001'
                b.a((String)message.obj, message.getData());
                return;

            case 2: // '\002'
                b.a((PlaybackStateCompat)message.obj);
                return;

            case 3: // '\003'
                b.a((MediaMetadataCompat)message.obj);
                return;

            case 5: // '\005'
                b.a((List)message.obj);
                return;

            case 6: // '\006'
                b.a((CharSequence)message.obj);
                return;

            case 11: // '\013'
                b.a(((Boolean)message.obj).booleanValue());
                return;

            case 9: // '\t'
                b.a(((Integer)message.obj).intValue());
                return;

            case 10: // '\n'
                b.b(((Boolean)message.obj).booleanValue());
                return;

            case 12: // '\f'
                b.b(((Integer)message.obj).intValue());
                return;

            case 7: // '\007'
                b.a((Bundle)message.obj);
                return;

            case 4: // '\004'
                b.a((MediaControllerCompat.b)message.obj);
                return;

            case 8: // '\b'
                b.a();
                return;
            }
        }
    }

    private static class b
        implements c.a
    {

        private final WeakReference a;

        public void a()
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a();
            }
        }

        public void a(int i, int j, int k, int l, int i1)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(new MediaControllerCompat.b(i, j, k, l, i1));
            }
        }

        public void a(Bundle bundle)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(bundle);
            }
        }

        public void a(CharSequence charsequence)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(charsequence);
            }
        }

        public void a(Object obj)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 == null || a1.b)
            {
                return;
            } else
            {
                a1.a(PlaybackStateCompat.a(obj));
                return;
            }
        }

        public void a(String s, Bundle bundle)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 == null || a1.b && android.os.Build.VERSION.SDK_INT < 23)
            {
                return;
            } else
            {
                a1.a(s, bundle);
                return;
            }
        }

        public void a(List list)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(MediaSessionCompat.QueueItem.a(list));
            }
        }

        public void b(Object obj)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(MediaMetadataCompat.a(obj));
            }
        }

        b(MediaControllerCompat.a a1)
        {
            a = new WeakReference(a1);
        }
    }

    private static class c extends a.a
    {

        private final WeakReference a;

        public void a()
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(8, null, null);
            }
        }

        public void a(int i)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(9, Integer.valueOf(i), null);
            }
        }

        public void a(Bundle bundle)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(7, bundle, null);
            }
        }

        public void a(MediaMetadataCompat mediametadatacompat)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(3, mediametadatacompat, null);
            }
        }

        public void a(ParcelableVolumeInfo parcelablevolumeinfo)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                if (parcelablevolumeinfo != null)
                {
                    parcelablevolumeinfo = new MediaControllerCompat.b(parcelablevolumeinfo.a, parcelablevolumeinfo.b, parcelablevolumeinfo.c, parcelablevolumeinfo.d, parcelablevolumeinfo.e);
                } else
                {
                    parcelablevolumeinfo = null;
                }
                a1.a(4, parcelablevolumeinfo, null);
            }
        }

        public void a(PlaybackStateCompat playbackstatecompat)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(2, playbackstatecompat, null);
            }
        }

        public void a(CharSequence charsequence)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(6, charsequence, null);
            }
        }

        public void a(String s, Bundle bundle)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(1, s, bundle);
            }
        }

        public void a(List list)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(5, list, null);
            }
        }

        public void a(boolean flag)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(10, Boolean.valueOf(flag), null);
            }
        }

        public void b(int i)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(12, Integer.valueOf(i), null);
            }
        }

        public void b(boolean flag)
        {
            MediaControllerCompat.a a1 = (MediaControllerCompat.a)a.get();
            if (a1 != null)
            {
                a1.a(11, Boolean.valueOf(flag), null);
            }
        }

        c(MediaControllerCompat.a a1)
        {
            a = new WeakReference(a1);
        }
    }


    a a;
    boolean b;
    private final Object c;

    public void a()
    {
    }

    public void a(int i)
    {
    }

    void a(int i, Object obj, Bundle bundle)
    {
        if (a != null)
        {
            obj = a.obtainMessage(i, obj);
            ((Message) (obj)).setData(bundle);
            ((Message) (obj)).sendToTarget();
        }
    }

    public void a(Bundle bundle)
    {
    }

    public void a(MediaMetadataCompat mediametadatacompat)
    {
    }

    public void a(a.obtainMessage obtainmessage)
    {
    }

    public void a(PlaybackStateCompat playbackstatecompat)
    {
    }

    public void a(CharSequence charsequence)
    {
    }

    public void a(String s, Bundle bundle)
    {
    }

    public void a(List list)
    {
    }

    public void a(boolean flag)
    {
    }

    public void b(int i)
    {
    }

    public void b(boolean flag)
    {
    }

    public c.a()
    {
        if (android.os.diaControllerCompat.a >= 21)
        {
            c = android.support.v4.media.session.c.a(new b(this));
            return;
        } else
        {
            c = new c(this);
            return;
        }
    }
}
