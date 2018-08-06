// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.support.v4.h.p;
import android.support.v4.h.r;
import android.support.v4.h.s;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package android.support.v7.widget:
//            d, ActionMenuView

abstract class android.support.v7.widget.a extends ViewGroup
{
    protected class a
        implements s
    {

        int a;
        final android.support.v7.widget.a b;
        private boolean c;

        public a a(r r1, int i)
        {
            b.f = r1;
            a = i;
            return this;
        }

        public void a(View view)
        {
            android.support.v7.widget.a.a(b, 0);
            c = false;
        }

        public void b(View view)
        {
            if (c)
            {
                return;
            } else
            {
                b.f = null;
                android.support.v7.widget.a.b(b, a);
                return;
            }
        }

        public void c(View view)
        {
            c = true;
        }

        protected a()
        {
            b = android.support.v7.widget.a.this;
            super();
            c = false;
        }
    }


    protected final a a;
    protected final Context b;
    protected ActionMenuView c;
    protected d d;
    protected int e;
    protected r f;
    private boolean g;
    private boolean h;

    android.support.v7.widget.a(Context context)
    {
        this(context, null);
    }

    android.support.v7.widget.a(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    android.support.v7.widget.a(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new a();
        attributeset = new TypedValue();
        if (context.getTheme().resolveAttribute(android.support.v7.a.a.actionBarPopupTheme, attributeset, true) && ((TypedValue) (attributeset)).resourceId != 0)
        {
            b = new ContextThemeWrapper(context, ((TypedValue) (attributeset)).resourceId);
            return;
        } else
        {
            b = context;
            return;
        }
    }

    protected static int a(int i, int j, boolean flag)
    {
        if (flag)
        {
            return i - j;
        } else
        {
            return i + j;
        }
    }

    static void a(android.support.v7.widget.a a1, int i)
    {
        a1.ViewGroup.setVisibility(i);
    }

    static void b(android.support.v7.widget.a a1, int i)
    {
        a1.ViewGroup.setVisibility(i);
    }

    protected int a(View view, int i, int j, int k)
    {
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i, 0x80000000), j);
        return Math.max(0, i - view.getMeasuredWidth() - k);
    }

    protected int a(View view, int i, int j, int k, boolean flag)
    {
        int l = view.getMeasuredWidth();
        int i1 = view.getMeasuredHeight();
        j = (k - i1) / 2 + j;
        if (flag)
        {
            view.layout(i - l, j, i, i1 + j);
        } else
        {
            view.layout(i, j, i + l, i1 + j);
        }
        i = l;
        if (flag)
        {
            i = -l;
        }
        return i;
    }

    public r a(int i, long l)
    {
        if (f != null)
        {
            f.b();
        }
        if (i == 0)
        {
            if (getVisibility() != 0)
            {
                setAlpha(0.0F);
            }
            r r1 = p.d(this).a(1.0F);
            r1.a(l);
            r1.a(a.a(r1, i));
            return r1;
        } else
        {
            r r2 = p.d(this).a(0.0F);
            r2.a(l);
            r2.a(a.a(r2, i));
            return r2;
        }
    }

    public boolean a()
    {
        if (d != null)
        {
            return d.d();
        } else
        {
            return false;
        }
    }

    public int getAnimatedVisibility()
    {
        if (f != null)
        {
            return a.a;
        } else
        {
            return getVisibility();
        }
    }

    public int getContentHeight()
    {
        return e;
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        TypedArray typedarray = getContext().obtainStyledAttributes(null, android.support.v7.a.j.ActionBar, android.support.v7.a.a.actionBarStyle, 0);
        setContentHeight(typedarray.getLayoutDimension(android.support.v7.a.j.ActionBar_height, 0));
        typedarray.recycle();
        if (d != null)
        {
            d.a(configuration);
        }
    }

    public boolean onHoverEvent(MotionEvent motionevent)
    {
        int i = motionevent.getActionMasked();
        if (i == 9)
        {
            h = false;
        }
        if (!h)
        {
            boolean flag = super.onHoverEvent(motionevent);
            if (i == 9 && !flag)
            {
                h = true;
            }
        }
        if (i == 10 || i == 3)
        {
            h = false;
        }
        return true;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i = motionevent.getActionMasked();
        if (i == 0)
        {
            g = false;
        }
        if (!g)
        {
            boolean flag = super.onTouchEvent(motionevent);
            if (i == 0 && !flag)
            {
                g = true;
            }
        }
        if (i == 1 || i == 3)
        {
            g = false;
        }
        return true;
    }

    public void setContentHeight(int i)
    {
        e = i;
        requestLayout();
    }

    public void setVisibility(int i)
    {
        if (i != getVisibility())
        {
            if (f != null)
            {
                f.b();
            }
            super.setVisibility(i);
        }
    }
}
