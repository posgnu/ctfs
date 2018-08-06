// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.a.g;
import java.lang.ref.WeakReference;

// Referenced classes of package android.support.v4.media.session:
//            MediaControllerCompat

private static class  extends ResultReceiver
{

    private WeakReference a;

    protected void onReceiveResult(int i, Bundle bundle)
    {
          = ()a.get();
        if ( == null || bundle == null)
        {
            return;
        } else
        {
            a(, a(g.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
            a();
            return;
        }
    }
}
