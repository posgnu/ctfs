// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

// Referenced classes of package android.support.v4.a:
//            n

private static class a extends AnimatorListenerAdapter
{

    View a;

    public void onAnimationEnd(Animator animator)
    {
        a.setLayerType(0, null);
        animator.removeListener(this);
    }

    public void onAnimationStart(Animator animator)
    {
        a.setLayerType(2, null);
    }

    r(View view)
    {
        a = view;
    }
}
