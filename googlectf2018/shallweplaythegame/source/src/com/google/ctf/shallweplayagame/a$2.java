// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ctf.shallweplayagame;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;

// Referenced classes of package com.google.ctf.shallweplayagame:
//            a, b

class apter extends AnimatorListenerAdapter
{

    final String a;
    final a b;

    public void onAnimationEnd(Animator animator)
    {
        super.onAnimationEnd(animator);
        b.e.setText(a);
        if (a.equals(a.a))
        {
            com.google.ctf.shallweplayagame.b.b();
        } else
        if (a.equals(" "))
        {
            com.google.ctf.shallweplayagame.b.a();
            return;
        }
    }

    apter(a a1, String s)
    {
        b = a1;
        a = s;
        super();
    }
}
