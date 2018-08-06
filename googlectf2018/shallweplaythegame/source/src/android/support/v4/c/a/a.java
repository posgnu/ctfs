// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package android.support.v4.c.a:
//            f, c, d, e

public final class android.support.v4.c.a.a
{
    static class a extends e
    {

        private static Method a;
        private static boolean b;
        private static Method c;
        private static boolean d;

        public int a(Drawable drawable)
        {
            if (!d)
            {
                int i;
                try
                {
                    c = android/graphics/drawable/Drawable.getDeclaredMethod("getLayoutDirection", new Class[0]);
                    c.setAccessible(true);
                }
                catch (NoSuchMethodException nosuchmethodexception)
                {
                    Log.i("DrawableCompatApi17", "Failed to retrieve getLayoutDirection() method", nosuchmethodexception);
                }
                d = true;
            }
            if (c == null)
            {
                break MISSING_BLOCK_LABEL_84;
            }
            i = ((Integer)c.invoke(drawable, new Object[0])).intValue();
            return i;
            drawable;
            Log.i("DrawableCompatApi17", "Failed to invoke getLayoutDirection() via reflection", drawable);
            c = null;
            return 0;
        }

        public boolean a(Drawable drawable, int i)
        {
            if (!b)
            {
                try
                {
                    a = android/graphics/drawable/Drawable.getDeclaredMethod("setLayoutDirection", new Class[] {
                        Integer.TYPE
                    });
                    a.setAccessible(true);
                }
                catch (NoSuchMethodException nosuchmethodexception)
                {
                    Log.i("DrawableCompatApi17", "Failed to retrieve setLayoutDirection(int) method", nosuchmethodexception);
                }
                b = true;
            }
            if (a == null)
            {
                break MISSING_BLOCK_LABEL_91;
            }
            a.invoke(drawable, new Object[] {
                Integer.valueOf(i)
            });
            return true;
            drawable;
            Log.i("DrawableCompatApi17", "Failed to invoke setLayoutDirection(int) via reflection", drawable);
            a = null;
            return false;
        }

        a()
        {
        }
    }

    static class b extends a
    {

        public void a(Drawable drawable, boolean flag)
        {
            drawable.setAutoMirrored(flag);
        }

        public boolean b(Drawable drawable)
        {
            return drawable.isAutoMirrored();
        }

        public Drawable c(Drawable drawable)
        {
            Object obj = drawable;
            if (!(drawable instanceof f))
            {
                obj = new android.support.v4.c.a.d(drawable);
            }
            return ((Drawable) (obj));
        }

        public int d(Drawable drawable)
        {
            return drawable.getAlpha();
        }

        b()
        {
        }
    }

    static class c extends b
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

        public void a(Drawable drawable, android.content.res.Resources.Theme theme)
        {
            drawable.applyTheme(theme);
        }

        public void a(Drawable drawable, Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
        {
            drawable.inflate(resources, xmlpullparser, attributeset, theme);
        }

        public void a(Drawable drawable, android.graphics.PorterDuff.Mode mode)
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
                obj = new android.support.v4.c.a.e(drawable);
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

        c()
        {
        }
    }

    static class d extends c
    {

        public int a(Drawable drawable)
        {
            return drawable.getLayoutDirection();
        }

        public boolean a(Drawable drawable, int i)
        {
            return drawable.setLayoutDirection(i);
        }

        public Drawable c(Drawable drawable)
        {
            return drawable;
        }

        d()
        {
        }
    }

    static class e
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

        public void a(Drawable drawable, android.content.res.Resources.Theme theme)
        {
        }

        public void a(Drawable drawable, Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
        {
            drawable.inflate(resources, xmlpullparser, attributeset);
        }

        public void a(Drawable drawable, android.graphics.PorterDuff.Mode mode)
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
                obj = new android.support.v4.c.a.c(drawable);
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

        e()
        {
        }
    }


    static final e a;

    public static void a(Drawable drawable)
    {
        a.g(drawable);
    }

    public static void a(Drawable drawable, float f1, float f2)
    {
        a.a(drawable, f1, f2);
    }

    public static void a(Drawable drawable, int i)
    {
        a.b(drawable, i);
    }

    public static void a(Drawable drawable, int i, int j, int k, int l)
    {
        a.a(drawable, i, j, k, l);
    }

    public static void a(Drawable drawable, ColorStateList colorstatelist)
    {
        a.a(drawable, colorstatelist);
    }

    public static void a(Drawable drawable, android.content.res.Resources.Theme theme)
    {
        a.a(drawable, theme);
    }

    public static void a(Drawable drawable, Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        a.a(drawable, resources, xmlpullparser, attributeset, theme);
    }

    public static void a(Drawable drawable, android.graphics.PorterDuff.Mode mode)
    {
        a.a(drawable, mode);
    }

    public static void a(Drawable drawable, boolean flag)
    {
        a.a(drawable, flag);
    }

    public static boolean b(Drawable drawable)
    {
        return a.b(drawable);
    }

    public static boolean b(Drawable drawable, int i)
    {
        return a.a(drawable, i);
    }

    public static int c(Drawable drawable)
    {
        return a.d(drawable);
    }

    public static boolean d(Drawable drawable)
    {
        return a.e(drawable);
    }

    public static ColorFilter e(Drawable drawable)
    {
        return a.f(drawable);
    }

    public static Drawable f(Drawable drawable)
    {
        return a.c(drawable);
    }

    public static int g(Drawable drawable)
    {
        return a.a(drawable);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            a = new d();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new c();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            a = new a();
        } else
        {
            a = new e();
        }
    }
}
