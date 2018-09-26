// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ctf.shallweplayagame;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Queue;

// Referenced classes of package com.google.ctf.shallweplayagame:
//            b

public class com.google.ctf.shallweplayagame.a extends RelativeLayout
{
    static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        private static final a e[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/google/ctf/shallweplayagame/a$a, s);
        }

        public static a[] values()
        {
            return (a[])e.clone();
        }

        static 
        {
            a = new a("EMPTY", 0);
            b = new a("X", 1);
            c = new a("O", 2);
            d = new a("DEATH", 3);
            e = (new a[] {
                a, b, c, d
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }


    static final String a = new String(Character.toChars(9762));
    Context b;
    Queue c;
    public a d;
    TextView e;

    public com.google.ctf.shallweplayagame.a(Context context, Queue queue)
    {
        super(context);
        b = context;
        c = queue;
        d = a.a;
        b();
        c();
    }

    private int a(int i)
    {
        Resources resources = b.getResources();
        return (int)TypedValue.applyDimension(1, i, resources.getDisplayMetrics());
    }

    private AnimatorSet a(String s, int i)
    {
        AnimatorSet animatorset = new AnimatorSet();
        android.animation.ValueAnimator.AnimatorUpdateListener animatorupdatelistener = new android.animation.ValueAnimator.AnimatorUpdateListener() {

            final com.google.ctf.shallweplayagame.a a;

            public void onAnimationUpdate(ValueAnimator valueanimator1)
            {
                valueanimator1 = (Float)valueanimator1.getAnimatedValue();
                a.e.setScaleX(valueanimator1.floatValue());
                a.e.setScaleY(valueanimator1.floatValue());
            }

            
            {
                a = com.google.ctf.shallweplayagame.a.this;
                super();
            }
        };
        ValueAnimator valueanimator = ValueAnimator.ofFloat(new float[] {
            1.0F, 0.0F
        });
        valueanimator.setDuration(i);
        valueanimator.addUpdateListener(animatorupdatelistener);
        valueanimator.addListener(new AnimatorListenerAdapter(s) {

            final String a;
            final com.google.ctf.shallweplayagame.a b;

            public void onAnimationEnd(Animator animator)
            {
                super.onAnimationEnd(animator);
                b.e.setText(a);
                if (a.equals(com.google.ctf.shallweplayagame.a.a))
                {
                    com.google.ctf.shallweplayagame.b.b();
                } else
                if (a.equals(" "))
                {
                    com.google.ctf.shallweplayagame.b.a();
                    return;
                }
            }

            
            {
                b = com.google.ctf.shallweplayagame.a.this;
                a = s;
                super();
            }
        });
        s = ValueAnimator.ofFloat(new float[] {
            0.0F, 1.0F
        });
        s.setDuration(i);
        s.addUpdateListener(animatorupdatelistener);
        animatorset.addListener(new AnimatorListenerAdapter() {

            final com.google.ctf.shallweplayagame.a a;

            public void onAnimationEnd(Animator animator)
            {
                super.onAnimationEnd(animator);
                animator = (AnimatorSet)a.c.poll();
                if (animator != null)
                {
                    animator.start();
                }
            }

            
            {
                a = com.google.ctf.shallweplayagame.a.this;
                super();
            }
        });
        animatorset.play(s).after(valueanimator);
        return animatorset;
    }

    private void b()
    {
        int i = a(5);
        int j = a(5);
        setPadding(i, j, i, j);
        i = a(100);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(i, i);
        i = a(5);
        layoutparams.setMargins(i, i, i, i);
        setLayoutParams(layoutparams);
        setBackground(b.getResources().getDrawable(0x7f060054));
    }

    private void c()
    {
        e = new TextView(b);
        e.setTypeface(Typeface.MONOSPACE);
        e.setTextColor(-1);
        e.setTextSize(a(20));
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13);
        e.setLayoutParams(layoutparams);
        e.setGravity(1);
        e.setText(" ");
        addView(e);
    }

    public void a(a a1, int i)
    {
        d = a1;
        if (a1 == a.a)
        {
            a1 = " ";
        } else
        if (a1 == a.b)
        {
            a1 = "X";
        } else
        if (a1 == a.c)
        {
            a1 = "O";
        } else
        {
            a1 = a;
        }
        c.add(a(((String) (a1)), i));
    }

    public boolean a()
    {
        return d == a.a;
    }

    public void setValue(a a1)
    {
        a(a1, 100);
    }

}
