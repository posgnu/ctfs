// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.h.p;
import android.util.AttributeSet;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            l, au, aw, ae

class g
{

    private final View a;
    private final l b = l.a();
    private int c;
    private au d;
    private au e;
    private au f;

    g(View view)
    {
        c = -1;
        a = view;
    }

    private boolean b(Drawable drawable)
    {
        if (f == null)
        {
            f = new au();
        }
        au au1 = f;
        au1.a();
        Object obj = p.i(a);
        if (obj != null)
        {
            au1.d = true;
            au1.a = ((ColorStateList) (obj));
        }
        obj = p.j(a);
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

    private boolean d()
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i <= 21) goto _L2; else goto _L1
_L1:
        if (d == null) goto _L4; else goto _L3
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

    ColorStateList a()
    {
        if (e != null)
        {
            return e.a;
        } else
        {
            return null;
        }
    }

    void a(int i)
    {
        c = i;
        ColorStateList colorstatelist;
        if (b != null)
        {
            colorstatelist = b.b(a.getContext(), i);
        } else
        {
            colorstatelist = null;
        }
        b(colorstatelist);
        c();
    }

    void a(ColorStateList colorstatelist)
    {
        if (e == null)
        {
            e = new au();
        }
        e.a = colorstatelist;
        e.d = true;
        c();
    }

    void a(android.graphics.PorterDuff.Mode mode)
    {
        if (e == null)
        {
            e = new au();
        }
        e.b = mode;
        e.c = true;
        c();
    }

    void a(Drawable drawable)
    {
        c = -1;
        b(((ColorStateList) (null)));
        c();
    }

    void a(AttributeSet attributeset, int i)
    {
        attributeset = aw.a(a.getContext(), attributeset, android.support.v7.a.a.j.ViewBackgroundHelper, i, 0);
        ColorStateList colorstatelist;
        if (!attributeset.g(android.support.v7.a.a.j.ViewBackgroundHelper_android_background))
        {
            break MISSING_BLOCK_LABEL_67;
        }
        c = attributeset.g(android.support.v7.a.a.j.ViewBackgroundHelper_android_background, -1);
        colorstatelist = b.b(a.getContext(), c);
        if (colorstatelist == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        b(colorstatelist);
        if (attributeset.g(android.support.v7.a.a.j.ViewBackgroundHelper_backgroundTint))
        {
            p.a(a, attributeset.e(android.support.v7.a.a.j.ViewBackgroundHelper_backgroundTint));
        }
        if (attributeset.g(android.support.v7.a.a.j.ViewBackgroundHelper_backgroundTintMode))
        {
            p.a(a, ae.a(attributeset.a(android.support.v7.a.a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
        }
        attributeset.a();
        return;
        Exception exception;
        exception;
        attributeset.a();
        throw exception;
    }

    android.graphics.PorterDuff.Mode b()
    {
        if (e != null)
        {
            return e.b;
        } else
        {
            return null;
        }
    }

    void b(ColorStateList colorstatelist)
    {
        if (colorstatelist != null)
        {
            if (d == null)
            {
                d = new au();
            }
            d.a = colorstatelist;
            d.d = true;
        } else
        {
            d = null;
        }
        c();
    }

    void c()
    {
        Drawable drawable = a.getBackground();
        if (drawable != null && (!d() || !b(drawable)))
        {
            if (e != null)
            {
                l.a(drawable, e, a.getDrawableState());
                return;
            }
            if (d != null)
            {
                l.a(drawable, d, a.getDrawableState());
                return;
            }
        }
    }
}
