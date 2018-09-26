// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.v4.c.a.a;
import android.support.v4.h.p;
import android.util.AttributeSet;
import android.widget.SeekBar;

// Referenced classes of package android.support.v7.widget:
//            s, aw, ae

class w extends s
{

    private final SeekBar a;
    private Drawable b;
    private ColorStateList c;
    private android.graphics.PorterDuff.Mode d;
    private boolean e;
    private boolean f;

    w(SeekBar seekbar)
    {
        super(seekbar);
        c = null;
        d = null;
        e = false;
        f = false;
        a = seekbar;
    }

    private void d()
    {
        if (b != null && (e || f))
        {
            b = android.support.v4.c.a.a.f(b.mutate());
            if (e)
            {
                android.support.v4.c.a.a.a(b, c);
            }
            if (f)
            {
                android.support.v4.c.a.a.a(b, d);
            }
            if (b.isStateful())
            {
                b.setState(a.getDrawableState());
            }
        }
    }

    void a(Canvas canvas)
    {
        int j = 1;
        if (b != null)
        {
            int k = a.getMax();
            if (k > 1)
            {
                int i = b.getIntrinsicWidth();
                int l = b.getIntrinsicHeight();
                float f1;
                if (i >= 0)
                {
                    i /= 2;
                } else
                {
                    i = 1;
                }
                if (l >= 0)
                {
                    j = l / 2;
                }
                b.setBounds(-i, -j, i, j);
                f1 = (float)(a.getWidth() - a.getPaddingLeft() - a.getPaddingRight()) / (float)k;
                j = canvas.save();
                canvas.translate(a.getPaddingLeft(), a.getHeight() / 2);
                for (i = 0; i <= k; i++)
                {
                    b.draw(canvas);
                    canvas.translate(f1, 0.0F);
                }

                canvas.restoreToCount(j);
            }
        }
    }

    void a(Drawable drawable)
    {
        if (b != null)
        {
            b.setCallback(null);
        }
        b = drawable;
        if (drawable != null)
        {
            drawable.setCallback(a);
            android.support.v4.c.a.a.b(drawable, p.b(a));
            if (drawable.isStateful())
            {
                drawable.setState(a.getDrawableState());
            }
            d();
        }
        a.invalidate();
    }

    void a(AttributeSet attributeset, int i)
    {
        super.a(attributeset, i);
        attributeset = android.support.v7.widget.aw.a(a.getContext(), attributeset, android.support.v7.a.a.j.AppCompatSeekBar, i, 0);
        Drawable drawable = attributeset.b(android.support.v7.a.a.j.AppCompatSeekBar_android_thumb);
        if (drawable != null)
        {
            a.setThumb(drawable);
        }
        a(attributeset.a(android.support.v7.a.a.j.AppCompatSeekBar_tickMark));
        if (attributeset.g(android.support.v7.a.a.j.AppCompatSeekBar_tickMarkTintMode))
        {
            d = android.support.v7.widget.ae.a(attributeset.a(android.support.v7.a.a.j.AppCompatSeekBar_tickMarkTintMode, -1), d);
            f = true;
        }
        if (attributeset.g(android.support.v7.a.a.j.AppCompatSeekBar_tickMarkTint))
        {
            c = attributeset.e(android.support.v7.a.a.j.AppCompatSeekBar_tickMarkTint);
            e = true;
        }
        attributeset.a();
        d();
    }

    void b()
    {
        if (b != null)
        {
            b.jumpToCurrentState();
        }
    }

    void c()
    {
        Drawable drawable = b;
        if (drawable != null && drawable.isStateful() && drawable.setState(a.getDrawableState()))
        {
            a.invalidateDrawable(drawable);
        }
    }
}
