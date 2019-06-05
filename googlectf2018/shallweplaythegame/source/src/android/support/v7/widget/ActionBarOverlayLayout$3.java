// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.ViewPropertyAnimator;

// Referenced classes of package android.support.v7.widget:
//            ActionBarOverlayLayout, ActionBarContainer

class a
    implements Runnable
{

    final ActionBarOverlayLayout a;

    public void run()
    {
        a.d();
        a.c = a.a.animate().translationY(-a.a.getHeight()).setListener(a.d);
    }

    (ActionBarOverlayLayout actionbaroverlaylayout)
    {
        a = actionbaroverlaylayout;
        super();
    }
}
