// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package android.support.v4.c.a:
//            a, f, c

static class rawable
{

    public int a(Drawable drawable)
    {
        return 0;
    }

    public void a(Drawable drawable, float f1, float f2)
    {
    }

    public void a(Drawable drawable, int i, int j, int k, int l)
    {
    }

    public void a(Drawable drawable, ColorStateList colorstatelist)
    {
        if (drawable instanceof f)
        {
            ((f)drawable).setTintList(colorstatelist);
        }
    }

    public void a(Drawable drawable, android.content.res.urces.Theme theme)
    {
    }

    public void a(Drawable drawable, Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.urces.Theme theme)
    {
        drawable.inflate(resources, xmlpullparser, attributeset);
    }

    public void a(Drawable drawable, android.graphics.erDuff.Mode mode)
    {
        if (drawable instanceof f)
        {
            ((f)drawable).setTintMode(mode);
        }
    }

    public void a(Drawable drawable, boolean flag)
    {
    }

    public boolean a(Drawable drawable, int i)
    {
        return false;
    }

    public void b(Drawable drawable, int i)
    {
        if (drawable instanceof f)
        {
            ((f)drawable).setTint(i);
        }
    }

    public boolean b(Drawable drawable)
    {
        return false;
    }

    public Drawable c(Drawable drawable)
    {
        Object obj = drawable;
        if (!(drawable instanceof f))
        {
            obj = new c(drawable);
        }
        return ((Drawable) (obj));
    }

    public int d(Drawable drawable)
    {
        return 0;
    }

    public boolean e(Drawable drawable)
    {
        return false;
    }

    public ColorFilter f(Drawable drawable)
    {
        return null;
    }

    public void g(Drawable drawable)
    {
        drawable.jumpToCurrentState();
    }

    rawable()
    {
    }
}
