// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.animation.Animator;
import android.view.animation.Animation;

// Referenced classes of package android.support.v4.a:
//            n

private static class imation
{

    public final Animation a;
    public final Animator b;

    private r(Animator animator)
    {
        a = null;
        b = animator;
        if (animator == null)
        {
            throw new IllegalStateException("Animator cannot be null");
        } else
        {
            return;
        }
    }

    r(Animator animator, r r)
    {
        this(animator);
    }

    private imation(Animation animation)
    {
        a = animation;
        b = null;
        if (animation == null)
        {
            throw new IllegalStateException("Animation cannot be null");
        } else
        {
            return;
        }
    }

    imation(Animation animation, imation imation)
    {
        this(animation);
    }
}
