// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

// Referenced classes of package android.support.v7.app:
//            i, q

final class c
{

    final i a;
    private q b;
    private boolean c;
    private BroadcastReceiver d;
    private IntentFilter e;

    final int a()
    {
        c = b.a();
        return !c ? 1 : 2;
    }

    final void b()
    {
        boolean flag = b.a();
        if (flag != c)
        {
            c = flag;
            a.i();
        }
    }

    final void c()
    {
        d();
        if (d == null)
        {
            d = new BroadcastReceiver() {

                final i.b a;

                public void onReceive(Context context, Intent intent)
                {
                    a.b();
                }

            
            {
                a = i.b.this;
                super();
            }
            };
        }
        if (e == null)
        {
            e = new IntentFilter();
            e.addAction("android.intent.action.TIME_SET");
            e.addAction("android.intent.action.TIMEZONE_CHANGED");
            e.addAction("android.intent.action.TIME_TICK");
        }
        a.a.registerReceiver(d, e);
    }

    final void d()
    {
        if (d != null)
        {
            a.a.unregisterReceiver(d);
            d = null;
        }
    }

    ceiver(i j, q q1)
    {
        a = j;
        super();
        b = q1;
        c = q1.a();
    }
}
