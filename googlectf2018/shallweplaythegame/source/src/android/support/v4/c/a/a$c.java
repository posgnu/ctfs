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
//            a, f, e

static class r extends r
{

    public void a(Drawable drawable, float f1, float f2)
    {
        drawable.setHotspot(f1, f2);
    }

    public void a(Drawable drawable, int i, int j, int k, int l)
    {
        drawable.setHotspotBounds(i, j, k, l);
    }

    public void a(Drawable drawable, ColorStateList colorstatelist)
    {
        drawable.setTintList(colorstatelist);
    }

    public void a(Drawable drawable, android.content.res.urces.Theme theme)
    {
        drawable.applyTheme(theme);
    }

    public void a(Drawable drawable, Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.urces.Theme theme)
    {
        drawable.inflate(resources, xmlpullparser, attributeset, theme);
    }

    public void a(Drawable drawable, android.graphics.erDuff.Mode mode)
    {
        drawable.setTintMode(mode);
    }

    public void b(Drawable drawable, int i)
    {
        drawable.setTint(i);
    }

    public Drawable c(Drawable drawable)
    {
        Object obj = drawable;
        if (!(drawable instanceof f))
        {
            obj = new e(drawable);
        }
        return ((Drawable) (obj));
    }

    public boolean e(Drawable drawable)
    {
        return drawable.canApplyTheme();
    }

    public ColorFilter f(Drawable drawable)
    {
        return drawable.getColorFilter();
    }

    r()
    {
    }
}
