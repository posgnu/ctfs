// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.animation.ValueAnimator;
import android.view.View;

// Referenced classes of package android.support.v4.h:
//            r, u

class b
    implements android.animation.eAnimator.AnimatorUpdateListener
{

    final u a;
    final View b;
    final r c;

    public void onAnimationUpdate(ValueAnimator valueanimator)
    {
        a.a(b);
    }

    imator(r r1, u u1, View view)
    {
        c = r1;
        a = u1;
        b = view;
        super();
    }
}
