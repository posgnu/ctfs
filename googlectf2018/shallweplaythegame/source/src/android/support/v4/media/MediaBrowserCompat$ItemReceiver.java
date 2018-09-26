// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.e.b;

// Referenced classes of package android.support.v4.media:
//            MediaBrowserCompat

private static class  extends b
{

    private final String d;
    private final d e;

    protected void a(int i, Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(android/support/v4/media/MediaBrowserCompat.getClassLoader());
        }
        if (i != 0 || bundle == null || !bundle.containsKey("media_item"))
        {
            e.e(d);
            return;
        }
        bundle = bundle.getParcelable("media_item");
        if (bundle == null || (bundle instanceof d))
        {
            e.e((e)bundle);
            return;
        } else
        {
            e.e(d);
            return;
        }
    }
}
