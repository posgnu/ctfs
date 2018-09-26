// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.lang.ref.WeakReference;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            MediaControllerCompat, ParcelableVolumeInfo, PlaybackStateCompat

private static class a extends a
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
                parcelablevolumeinfo = new nit>(parcelablevolumeinfo.a, parcelablevolumeinfo.b, parcelablevolumeinfo.c, parcelablevolumeinfo.d, parcelablevolumeinfo.e);
            } else
            {
                parcelablevolumeinfo = null;
            }
            a1.nit>(4, parcelablevolumeinfo, null);
        }
    }

    public void a(PlaybackStateCompat playbackstatecompat)
    {
        nit> nit> = (nit>)a.get();
        if (nit> != null)
        {
            nit>.a(2, playbackstatecompat, null);
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

    ( )
    {
        a = new WeakReference();
    }
}
