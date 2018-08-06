// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

// Referenced classes of package android.support.v4.c.a:
//            b, f

class c extends Drawable
    implements android.graphics.drawable.Drawable.Callback, android.support.v4.c.a.b, f
{
    protected static abstract class a extends android.graphics.drawable.Drawable.ConstantState
    {

        int a;
        android.graphics.drawable.Drawable.ConstantState b;
        ColorStateList c;
        android.graphics.PorterDuff.Mode d;

        boolean a()
        {
            return b != null;
        }

        public int getChangingConfigurations()
        {
            int j = a;
            int i;
            if (b != null)
            {
                i = b.getChangingConfigurations();
            } else
            {
                i = 0;
            }
            return i | j;
        }

        public Drawable newDrawable()
        {
            return newDrawable(null);
        }

        public abstract Drawable newDrawable(Resources resources);

        a(a a1, Resources resources)
        {
            c = null;
            d = c.a;
            if (a1 != null)
            {
                a = a1.a;
                b = a1.b;
                c = a1.c;
                d = a1.d;
            }
        }
    }

    private static class b extends a
    {

        public Drawable newDrawable(Resources resources)
        {
            return new c(this, resources);
        }

        b(a a1, Resources resources)
        {
            super(a1, resources);
        }
    }


    static final android.graphics.PorterDuff.Mode a;
    a b;
    Drawable c;
    private int d;
    private android.graphics.PorterDuff.Mode e;
    private boolean f;
    private boolean g;

    c(Drawable drawable)
    {
        b = b();
        a(drawable);
    }

    c(a a1, Resources resources)
    {
        b = a1;
        a(resources);
    }

    private void a(Resources resources)
    {
        if (b != null && b.b != null)
        {
            a(a(b.b, resources));
        }
    }

    private boolean a(int ai[])
    {
        if (c())
        {
            ColorStateList colorstatelist = b.c;
            android.graphics.PorterDuff.Mode mode = b.d;
            if (colorstatelist != null && mode != null)
            {
                int i = colorstatelist.getColorForState(ai, colorstatelist.getDefaultColor());
                if (!f || i != d || mode != e)
                {
                    setColorFilter(i, mode);
                    d = i;
                    e = mode;
                    f = true;
                    return true;
                }
            } else
            {
                f = false;
                clearColorFilter();
                return false;
            }
        }
        return false;
    }

    public final Drawable a()
    {
        return c;
    }

    protected Drawable a(android.graphics.drawable.Drawable.ConstantState constantstate, Resources resources)
    {
        return constantstate.newDrawable(resources);
    }

    public final void a(Drawable drawable)
    {
        if (c != null)
        {
            c.setCallback(null);
        }
        c = drawable;
        if (drawable != null)
        {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            if (b != null)
            {
                b.b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    a b()
    {
        return new b(b, null);
    }

    protected boolean c()
    {
        return true;
    }

    public void draw(Canvas canvas)
    {
        c.draw(canvas);
    }

    public int getChangingConfigurations()
    {
        int j = super.getChangingConfigurations();
        int i;
        if (b != null)
        {
            i = b.getChangingConfigurations();
        } else
        {
            i = 0;
        }
        return i | j | c.getChangingConfigurations();
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        if (b != null && b.a())
        {
            b.a = getChangingConfigurations();
            return b;
        } else
        {
            return null;
        }
    }

    public Drawable getCurrent()
    {
        return c.getCurrent();
    }

    public int getIntrinsicHeight()
    {
        return c.getIntrinsicHeight();
    }

    public int getIntrinsicWidth()
    {
        return c.getIntrinsicWidth();
    }

    public int getMinimumHeight()
    {
        return c.getMinimumHeight();
    }

    public int getMinimumWidth()
    {
        return c.getMinimumWidth();
    }

    public int getOpacity()
    {
        return c.getOpacity();
    }

    public boolean getPadding(Rect rect)
    {
        return c.getPadding(rect);
    }

    public int[] getState()
    {
        return c.getState();
    }

    public Region getTransparentRegion()
    {
        return c.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable)
    {
        invalidateSelf();
    }

    public boolean isStateful()
    {
        ColorStateList colorstatelist;
        if (c() && b != null)
        {
            colorstatelist = b.c;
        } else
        {
            colorstatelist = null;
        }
        return colorstatelist != null && colorstatelist.isStateful() || c.isStateful();
    }

    public void jumpToCurrentState()
    {
        c.jumpToCurrentState();
    }

    public Drawable mutate()
    {
        if (!g && super.mutate() == this)
        {
            b = b();
            if (c != null)
            {
                c.mutate();
            }
            if (b != null)
            {
                a a1 = b;
                android.graphics.drawable.Drawable.ConstantState constantstate;
                if (c != null)
                {
                    constantstate = c.getConstantState();
                } else
                {
                    constantstate = null;
                }
                a1.b = constantstate;
            }
            g = true;
        }
        return this;
    }

    protected void onBoundsChange(Rect rect)
    {
        if (c != null)
        {
            c.setBounds(rect);
        }
    }

    protected boolean onLevelChange(int i)
    {
        return c.setLevel(i);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
    {
        scheduleSelf(runnable, l);
    }

    public void setAlpha(int i)
    {
        c.setAlpha(i);
    }

    public void setChangingConfigurations(int i)
    {
        c.setChangingConfigurations(i);
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        c.setColorFilter(colorfilter);
    }

    public void setDither(boolean flag)
    {
        c.setDither(flag);
    }

    public void setFilterBitmap(boolean flag)
    {
        c.setFilterBitmap(flag);
    }

    public boolean setState(int ai[])
    {
        boolean flag = c.setState(ai);
        return a(ai) || flag;
    }

    public void setTint(int i)
    {
        setTintList(ColorStateList.valueOf(i));
    }

    public void setTintList(ColorStateList colorstatelist)
    {
        b.c = colorstatelist;
        a(getState());
    }

    public void setTintMode(android.graphics.PorterDuff.Mode mode)
    {
        b.d = mode;
        a(getState());
    }

    public boolean setVisible(boolean flag, boolean flag1)
    {
        return super.setVisible(flag, flag1) || c.setVisible(flag, flag1);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable)
    {
        unscheduleSelf(runnable);
    }

    static 
    {
        a = android.graphics.PorterDuff.Mode.SRC_IN;
    }
}
