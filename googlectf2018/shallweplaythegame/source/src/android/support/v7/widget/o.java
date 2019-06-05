// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.support.v4.widget.f;
import android.support.v7.b.a.b;
import android.util.AttributeSet;
import android.widget.ImageView;

// Referenced classes of package android.support.v7.widget:
//            au, l, ae, aw

public class o
{

    private final ImageView a;
    private au b;
    private au c;
    private au d;

    public o(ImageView imageview)
    {
        a = imageview;
    }

    private boolean a(Drawable drawable)
    {
        if (d == null)
        {
            d = new au();
        }
        au au1 = d;
        au1.a();
        Object obj = f.a(a);
        if (obj != null)
        {
            au1.d = true;
            au1.a = ((ColorStateList) (obj));
        }
        obj = f.b(a);
        if (obj != null)
        {
            au1.c = true;
            au1.b = ((android.graphics.PorterDuff.Mode) (obj));
        }
        if (au1.d || au1.c)
        {
            l.a(drawable, au1, a.getDrawableState());
            return true;
        } else
        {
            return false;
        }
    }

    private boolean e()
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i <= 21) goto _L2; else goto _L1
_L1:
        if (b == null) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (i != 21)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void a(int i)
    {
        if (i != 0)
        {
            Drawable drawable = android.support.v7.b.a.b.b(a.getContext(), i);
            if (drawable != null)
            {
                ae.a(drawable);
            }
            a.setImageDrawable(drawable);
        } else
        {
            a.setImageDrawable(null);
        }
        d();
    }

    void a(ColorStateList colorstatelist)
    {
        if (c == null)
        {
            c = new au();
        }
        c.a = colorstatelist;
        c.d = true;
        d();
    }

    void a(android.graphics.PorterDuff.Mode mode)
    {
        if (c == null)
        {
            c = new au();
        }
        c.b = mode;
        c.c = true;
        d();
    }

    public void a(AttributeSet attributeset, int i)
    {
        aw aw1 = aw.a(a.getContext(), attributeset, android.support.v7.a.a.j.AppCompatImageView, i, 0);
        Drawable drawable = a.getDrawable();
        attributeset = drawable;
        if (drawable != null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        i = aw1.g(android.support.v7.a.a.j.AppCompatImageView_srcCompat, -1);
        attributeset = drawable;
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        drawable = android.support.v7.b.a.b.b(a.getContext(), i);
        attributeset = drawable;
        if (drawable == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        a.setImageDrawable(drawable);
        attributeset = drawable;
        if (attributeset == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        ae.a(attributeset);
        if (aw1.g(android.support.v7.a.a.j.AppCompatImageView_tint))
        {
            f.a(a, aw1.e(android.support.v7.a.a.j.AppCompatImageView_tint));
        }
        if (aw1.g(android.support.v7.a.a.j.AppCompatImageView_tintMode))
        {
            f.a(a, ae.a(aw1.a(android.support.v7.a.a.j.AppCompatImageView_tintMode, -1), null));
        }
        aw1.a();
        return;
        attributeset;
        aw1.a();
        throw attributeset;
    }

    boolean a()
    {
        Drawable drawable = a.getBackground();
        return android.os.Build.VERSION.SDK_INT < 21 || !(drawable instanceof RippleDrawable);
    }

    ColorStateList b()
    {
        if (c != null)
        {
            return c.a;
        } else
        {
            return null;
        }
    }

    android.graphics.PorterDuff.Mode c()
    {
        if (c != null)
        {
            return c.b;
        } else
        {
            return null;
        }
    }

    void d()
    {
        Drawable drawable = a.getDrawable();
        if (drawable != null)
        {
            ae.a(drawable);
        }
        if (drawable != null && (!e() || !a(drawable)))
        {
            if (c != null)
            {
                l.a(drawable, c, a.getDrawableState());
                return;
            }
            if (b != null)
            {
                l.a(drawable, b, a.getDrawableState());
                return;
            }
        }
    }
}
