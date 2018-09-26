// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.Log;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v4.c.a:
//            d

class e extends d
{
    private static class a extends c.a
    {

        public Drawable newDrawable(Resources resources)
        {
            return new e(this, resources);
        }

        a(c.a a1, Resources resources)
        {
            super(a1, resources);
        }
    }


    private static Method d;

    e(Drawable drawable)
    {
        super(drawable);
        d();
    }

    e(c.a a1, Resources resources)
    {
        super(a1, resources);
        d();
    }

    private void d()
    {
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        d = android/graphics/drawable/Drawable.getDeclaredMethod("isProjected", new Class[0]);
        return;
        Exception exception;
        exception;
        Log.w("DrawableWrapperApi21", "Failed to retrieve Drawable#isProjected() method", exception);
        return;
    }

    c.a b()
    {
        return new a(b, null);
    }

    protected boolean c()
    {
        boolean flag;
label0:
        {
            boolean flag1 = false;
            flag = flag1;
            if (android.os.Build.VERSION.SDK_INT != 21)
            {
                break label0;
            }
            Drawable drawable = c;
            if (!(drawable instanceof GradientDrawable) && !(drawable instanceof DrawableContainer) && !(drawable instanceof InsetDrawable))
            {
                flag = flag1;
                if (!(drawable instanceof RippleDrawable))
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public Rect getDirtyBounds()
    {
        return c.getDirtyBounds();
    }

    public void getOutline(Outline outline)
    {
        c.getOutline(outline);
    }

    public void setHotspot(float f, float f1)
    {
        c.setHotspot(f, f1);
    }

    public void setHotspotBounds(int i, int j, int k, int l)
    {
        c.setHotspotBounds(i, j, k, l);
    }

    public boolean setState(int ai[])
    {
        if (super.setState(ai))
        {
            invalidateSelf();
            return true;
        } else
        {
            return false;
        }
    }

    public void setTint(int i)
    {
        if (c())
        {
            super.setTint(i);
            return;
        } else
        {
            c.setTint(i);
            return;
        }
    }

    public void setTintList(ColorStateList colorstatelist)
    {
        if (c())
        {
            super.setTintList(colorstatelist);
            return;
        } else
        {
            c.setTintList(colorstatelist);
            return;
        }
    }

    public void setTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (c())
        {
            super.setTintMode(mode);
            return;
        } else
        {
            c.setTintMode(mode);
            return;
        }
    }
}
