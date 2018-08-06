// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.os.Handler;
import android.os.Message;
import android.view.View;

// Referenced classes of package android.support.v7.app:
//            AlertController

class a
    implements android.view.er
{

    final AlertController a;

    public void onClick(View view)
    {
        if (view == a.c && a.d != null)
        {
            view = Message.obtain(a.d);
        } else
        if (view == a.e && a.f != null)
        {
            view = Message.obtain(a.f);
        } else
        if (view == a.g && a.h != null)
        {
            view = Message.obtain(a.h);
        } else
        {
            view = null;
        }
        if (view != null)
        {
            view.sendToTarget();
        }
        a.p.obtainMessage(1, a.a).sendToTarget();
    }

    (AlertController alertcontroller)
    {
        a = alertcontroller;
        super();
    }
}
