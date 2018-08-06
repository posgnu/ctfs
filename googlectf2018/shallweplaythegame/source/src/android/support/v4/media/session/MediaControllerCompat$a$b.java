// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.lang.ref.WeakReference;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            MediaControllerCompat, PlaybackStateCompat

private static class a
    implements a
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
            a1.a(new nit>(i, j, k, l, i1));
        }
    }

    public void a(Bundle bundle)
    {
        nit> nit> = (nit>)a.get();
        if (nit> != null)
        {
            nit>.a(bundle);
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
        if (a1 == null || a1.a)
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
        if (a1 == null || a1.a && android.os.aControllerCompat.a.b < 23)
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
            a1.a(em.a(list));
        }
    }

    public void b(Object obj)
    {
        em.a a1 = (em.a)a.get();
        if (a1 != null)
        {
            a1.a(MediaMetadataCompat.a(obj));
        }
    }

    em(em em)
    {
        a = new WeakReference(em);
    }
}
