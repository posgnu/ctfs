// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ctf.shallweplayagame;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import java.util.Queue;

// Referenced classes of package com.google.ctf.shallweplayagame:
//            a

class apter extends AnimatorListenerAdapter
{

    final a a;

    public void onAnimationEnd(Animator animator)
    {
        super.onAnimationEnd(animator);
        animator = (AnimatorSet)a.c.poll();
        if (animator != null)
        {
            animator.start();
        }
    }

    apter(a a1)
    {
        a = a1;
        super();
    }
}
