// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.a.g;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            b, ParcelableVolumeInfo, PlaybackStateCompat, c

public final class MediaControllerCompat
{
    static class MediaControllerImplApi21
    {

        private final List a;
        private android.support.v4.media.session.b b;
        private HashMap c;

        static android.support.v4.media.session.b a(MediaControllerImplApi21 mediacontrollerimplapi21, android.support.v4.media.session.b b1)
        {
            mediacontrollerimplapi21.b = b1;
            return b1;
        }

        private void a()
        {
            if (b == null)
            {
                return;
            }
            List list = a;
            list;
            JVM INSTR monitorenter ;
            Iterator iterator = a.iterator();
_L1:
            a a2;
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_94;
            }
            a a1 = (a)iterator.next();
            a2 = new a(a1);
            c.put(a1, a2);
            a1.b = true;
            b.a(a2);
              goto _L1
            Object obj;
            obj;
            Log.e("MediaControllerCompat", "Dead object in registerCallback.", ((Throwable) (obj)));
            a.clear();
            list;
            JVM INSTR monitorexit ;
            return;
            obj;
            list;
            JVM INSTR monitorexit ;
            throw obj;
        }

        static void a(MediaControllerImplApi21 mediacontrollerimplapi21)
        {
            mediacontrollerimplapi21.a();
        }
    }

    private static class MediaControllerImplApi21.ExtraBinderRequestResultReceiver extends ResultReceiver
    {

        private WeakReference a;

        protected void onReceiveResult(int i, Bundle bundle)
        {
            MediaControllerImplApi21 mediacontrollerimplapi21 = (MediaControllerImplApi21)a.get();
            if (mediacontrollerimplapi21 == null || bundle == null)
            {
                return;
            } else
            {
                MediaControllerImplApi21.a(mediacontrollerimplapi21, android.support.v4.media.session.b.a.a(g.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                MediaControllerImplApi21.a(mediacontrollerimplapi21);
                return;
            }
        }
    }

    private static class MediaControllerImplApi21.a extends a.c
    {

        public void a()
        {
            throw new AssertionError();
        }

        public void a(Bundle bundle)
        {
            throw new AssertionError();
        }

        public void a(MediaMetadataCompat mediametadatacompat)
        {
            throw new AssertionError();
        }

        public void a(ParcelableVolumeInfo parcelablevolumeinfo)
        {
            throw new AssertionError();
        }

        public void a(CharSequence charsequence)
        {
            throw new AssertionError();
        }

        public void a(List list)
        {
            throw new AssertionError();
        }

        MediaControllerImplApi21.a(a a1)
        {
            super(a1);
        }
    }

    public static abstract class a
        implements android.os.IBinder.DeathRecipient
    {

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

        public void a(b b1)
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

        public a()
        {
            if (android.os.Build.VERSION.SDK_INT >= 21)
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

    private class a.a extends Handler
    {

        boolean a;
        final a b;

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
                b.a((b)message.obj);
                return;

            case 8: // '\b'
                b.a();
                return;
            }
        }
    }

    private static class a.b
        implements c.a
    {

        private final WeakReference a;

        public void a()
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a();
            }
        }

        public void a(int i, int j, int k, int l, int i1)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(new b(i, j, k, l, i1));
            }
        }

        public void a(Bundle bundle)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(bundle);
            }
        }

        public void a(CharSequence charsequence)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(charsequence);
            }
        }

        public void a(Object obj)
        {
            a a1 = (a)a.get();
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
            a a1 = (a)a.get();
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
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(MediaSessionCompat.QueueItem.a(list));
            }
        }

        public void b(Object obj)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(MediaMetadataCompat.a(obj));
            }
        }

        a.b(a a1)
        {
            a = new WeakReference(a1);
        }
    }

    private static class a.c extends a.a
    {

        private final WeakReference a;

        public void a()
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(8, null, null);
            }
        }

        public void a(int i)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(9, Integer.valueOf(i), null);
            }
        }

        public void a(Bundle bundle)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(7, bundle, null);
            }
        }

        public void a(MediaMetadataCompat mediametadatacompat)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(3, mediametadatacompat, null);
            }
        }

        public void a(ParcelableVolumeInfo parcelablevolumeinfo)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                if (parcelablevolumeinfo != null)
                {
                    parcelablevolumeinfo = new b(parcelablevolumeinfo.a, parcelablevolumeinfo.b, parcelablevolumeinfo.c, parcelablevolumeinfo.d, parcelablevolumeinfo.e);
                } else
                {
                    parcelablevolumeinfo = null;
                }
                a1.a(4, parcelablevolumeinfo, null);
            }
        }

        public void a(PlaybackStateCompat playbackstatecompat)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(2, playbackstatecompat, null);
            }
        }

        public void a(CharSequence charsequence)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(6, charsequence, null);
            }
        }

        public void a(String s, Bundle bundle)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(1, s, bundle);
            }
        }

        public void a(List list)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(5, list, null);
            }
        }

        public void a(boolean flag)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(10, Boolean.valueOf(flag), null);
            }
        }

        public void b(int i)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(12, Integer.valueOf(i), null);
            }
        }

        public void b(boolean flag)
        {
            a a1 = (a)a.get();
            if (a1 != null)
            {
                a1.a(11, Boolean.valueOf(flag), null);
            }
        }

        a.c(a a1)
        {
            a = new WeakReference(a1);
        }
    }

    public static final class b
    {

        private final int a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;

        b(int i, int j, int k, int l, int i1)
        {
            a = i;
            b = j;
            c = k;
            d = l;
            e = i1;
        }
    }

}
