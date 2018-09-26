// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;

// Referenced classes of package android.support.v4.a:
//            e

abstract class f extends e
{

    boolean b;

    f()
    {
    }

    public void startActivityForResult(Intent intent, int i, Bundle bundle)
    {
        if (!b && i != -1)
        {
            a(i);
        }
        super.startActivityForResult(intent, i, bundle);
    }

    public void startIntentSenderForResult(IntentSender intentsender, int i, Intent intent, int j, int k, int l, Bundle bundle)
    {
        if (!a && i != -1)
        {
            a(i);
        }
        super.startIntentSenderForResult(intentsender, i, intent, j, k, l, bundle);
    }
}
