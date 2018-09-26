// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

// Referenced classes of package android.support.v7.widget:
//            ActionBarOverlayLayout

class a extends AnimatorListenerAdapter
{

    final ActionBarOverlayLayout a;

    public void onAnimationCancel(Animator animator)
    {
        a.c = null;
        a.b = false;
    }

    public void onAnimationEnd(Animator animator)
    {
        a.c = null;
        a.b = false;
    }

    (ActionBarOverlayLayout actionbaroverlaylayout)
    {
        a = actionbaroverlaylayout;
        super();
    }
}
