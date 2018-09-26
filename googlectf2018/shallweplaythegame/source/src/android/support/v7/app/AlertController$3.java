// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.view.View;

// Referenced classes of package android.support.v7.app:
//            AlertController

class b
    implements Runnable
{

    final View a;
    final View b;
    final AlertController c;

    public void run()
    {
        AlertController.a(c.i, a, b);
    }

    (AlertController alertcontroller, View view, View view1)
    {
        c = alertcontroller;
        a = view;
        b = view1;
        super();
    }
}
