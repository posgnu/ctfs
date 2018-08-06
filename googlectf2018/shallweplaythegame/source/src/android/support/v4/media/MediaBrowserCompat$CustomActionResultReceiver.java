// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.e.b;
import android.util.Log;

// Referenced classes of package android.support.v4.media:
//            MediaBrowserCompat

private static class  extends b
{

    private final String d;
    private final Bundle e;
    private final e f;

    protected void a(int i, Bundle bundle)
    {
        if (f == null)
        {
            return;
        }
        switch (i)
        {
        default:
            Log.w("MediaBrowserCompat", (new StringBuilder()).append("Unknown result code: ").append(i).append(" (extras=").append(e).append(", resultData=").append(bundle).append(")").toString());
            return;

        case 1: // '\001'
            f.f(d, e, bundle);
            return;

        case 0: // '\0'
            f.f(d, e, bundle);
            return;

        case -1: 
            f.f(d, e, bundle);
            return;
        }
    }
}
