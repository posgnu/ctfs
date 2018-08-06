// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
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
//            MediaControllerCompat, b, ParcelableVolumeInfo

static class a
{
    private static class ExtraBinderRequestResultReceiver extends ResultReceiver
    {

        private WeakReference a;

        protected void onReceiveResult(int i, Bundle bundle)
        {
            MediaControllerCompat.MediaControllerImplApi21 mediacontrollerimplapi21 = (MediaControllerCompat.MediaControllerImplApi21)a.get();
            if (mediacontrollerimplapi21 == null || bundle == null)
            {
                return;
            } else
            {
                MediaControllerCompat.MediaControllerImplApi21.a(mediacontrollerimplapi21, android.support.v4.media.session.b.a.a(g.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                MediaControllerCompat.MediaControllerImplApi21.a(mediacontrollerimplapi21);
                return;
            }
        }
    }

    private static class a extends MediaControllerCompat.a.c
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

        a(MediaControllerCompat.a a1)
        {
            super(a1);
        }
    }


    private final List a;
    private b b;
    private HashMap c;

    static b a(a a1, b b1)
    {
        a1.b = b1;
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
        a a1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_94;
        }
        b b1 = (a)iterator.next();
        a1 = new a(b1);
        c.put(b1, a1);
        b1.c = true;
        b.a(a1);
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

    static void a(a a1)
    {
        a1.a();
    }
}
