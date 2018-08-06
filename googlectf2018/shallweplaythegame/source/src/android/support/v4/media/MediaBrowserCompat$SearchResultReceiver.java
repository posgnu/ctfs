// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.e.b;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v4.media:
//            MediaBrowserCompat

private static class  extends b
{

    private final String d;
    private final Bundle e;
    private final e f;

    protected void a(int i, Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(android/support/v4/media/MediaBrowserCompat.getClassLoader());
        }
        if (i != 0 || bundle == null || !bundle.containsKey("search_results"))
        {
            f.f(d, e);
            return;
        }
        android.os.Parcelable aparcelable[] = bundle.getParcelableArray("search_results");
        bundle = null;
        if (aparcelable != null)
        {
            bundle = new ArrayList();
            int j = aparcelable.length;
            for (i = 0; i < j; i++)
            {
                bundle.add((e)aparcelable[i]);
            }

        }
        f.f(d, e, bundle);
    }
}
