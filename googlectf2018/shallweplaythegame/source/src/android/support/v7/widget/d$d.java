// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v4.c.a.a;
import android.support.v7.view.menu.s;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            p, d, ay, ah

private class a extends p
    implements onMenuView.a
{

    final d a;
    private final float b[] = new float[2];

    public boolean c()
    {
        return false;
    }

    public boolean d()
    {
        return false;
    }

    public boolean performClick()
    {
        if (super.performClick())
        {
            return true;
        } else
        {
            playSoundEffect(0);
            a.d();
            return true;
        }
    }

    protected boolean setFrame(int i, int j, int k, int l)
    {
        boolean flag = super.setFrame(i, j, k, l);
        android.graphics.drawable.Drawable drawable = getDrawable();
        android.graphics.drawable.Drawable drawable1 = getBackground();
        if (drawable != null && drawable1 != null)
        {
            int i1 = getWidth();
            j = getHeight();
            i = Math.max(i1, j) / 2;
            int j1 = getPaddingLeft();
            int k1 = getPaddingRight();
            k = getPaddingTop();
            l = getPaddingBottom();
            i1 = (i1 + (j1 - k1)) / 2;
            j = (j + (k - l)) / 2;
            android.support.v4.c.a.a.a(drawable1, i1 - i, j - i, i1 + i, j + i);
        }
        return flag;
    }

    public ner(d d1, Context context)
    {
        a = d1;
        super(context, null, android.support.v7.a.actionOverflowButtonStyle);
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        android.support.v7.widget.ay.a(this, getContentDescription());
        setOnTouchListener(new ah(this, d1) {

            final d a;
            final d.d b;

            public s a()
            {
                if (b.a.h == null)
                {
                    return null;
                } else
                {
                    return b.a.h.b();
                }
            }

            public boolean b()
            {
                b.a.d();
                return true;
            }

            public boolean c()
            {
                if (b.a.j != null)
                {
                    return false;
                } else
                {
                    b.a.e();
                    return true;
                }
            }

            
            {
                b = d.d.this;
                a = d2;
                super(view);
            }
        });
    }
}
