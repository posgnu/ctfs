// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.content.res.ColorStateList;
import android.support.v4.d.a.b;
import android.util.Log;
import android.view.MenuItem;

// Referenced classes of package android.support.v4.h:
//            c

public final class g
{
    static class a extends b
    {

        public void a(MenuItem menuitem, char c1, int i)
        {
            menuitem.setAlphabeticShortcut(c1, i);
        }

        public void a(MenuItem menuitem, ColorStateList colorstatelist)
        {
            menuitem.setIconTintList(colorstatelist);
        }

        public void a(MenuItem menuitem, android.graphics.PorterDuff.Mode mode)
        {
            menuitem.setIconTintMode(mode);
        }

        public void a(MenuItem menuitem, CharSequence charsequence)
        {
            menuitem.setContentDescription(charsequence);
        }

        public void b(MenuItem menuitem, char c1, int i)
        {
            menuitem.setNumericShortcut(c1, i);
        }

        public void b(MenuItem menuitem, CharSequence charsequence)
        {
            menuitem.setTooltipText(charsequence);
        }

        a()
        {
        }
    }

    static class b
        implements c
    {

        public void a(MenuItem menuitem, char c1, int i)
        {
        }

        public void a(MenuItem menuitem, ColorStateList colorstatelist)
        {
        }

        public void a(MenuItem menuitem, android.graphics.PorterDuff.Mode mode)
        {
        }

        public void a(MenuItem menuitem, CharSequence charsequence)
        {
        }

        public void b(MenuItem menuitem, char c1, int i)
        {
        }

        public void b(MenuItem menuitem, CharSequence charsequence)
        {
        }

        b()
        {
        }
    }

    static interface c
    {

        public abstract void a(MenuItem menuitem, char c1, int i);

        public abstract void a(MenuItem menuitem, ColorStateList colorstatelist);

        public abstract void a(MenuItem menuitem, android.graphics.PorterDuff.Mode mode);

        public abstract void a(MenuItem menuitem, CharSequence charsequence);

        public abstract void b(MenuItem menuitem, char c1, int i);

        public abstract void b(MenuItem menuitem, CharSequence charsequence);
    }


    static final c a;

    public static MenuItem a(MenuItem menuitem, android.support.v4.h.c c1)
    {
        if (menuitem instanceof android.support.v4.d.a.b)
        {
            return ((android.support.v4.d.a.b)menuitem).a(c1);
        } else
        {
            Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            return menuitem;
        }
    }

    public static void a(MenuItem menuitem, char c1, int i)
    {
        if (menuitem instanceof android.support.v4.d.a.b)
        {
            ((android.support.v4.d.a.b)menuitem).setNumericShortcut(c1, i);
            return;
        } else
        {
            a.b(menuitem, c1, i);
            return;
        }
    }

    public static void a(MenuItem menuitem, ColorStateList colorstatelist)
    {
        if (menuitem instanceof android.support.v4.d.a.b)
        {
            ((android.support.v4.d.a.b)menuitem).setIconTintList(colorstatelist);
            return;
        } else
        {
            a.a(menuitem, colorstatelist);
            return;
        }
    }

    public static void a(MenuItem menuitem, android.graphics.PorterDuff.Mode mode)
    {
        if (menuitem instanceof android.support.v4.d.a.b)
        {
            ((android.support.v4.d.a.b)menuitem).setIconTintMode(mode);
            return;
        } else
        {
            a.a(menuitem, mode);
            return;
        }
    }

    public static void a(MenuItem menuitem, CharSequence charsequence)
    {
        if (menuitem instanceof android.support.v4.d.a.b)
        {
            ((android.support.v4.d.a.b)menuitem).a(charsequence);
            return;
        } else
        {
            a.a(menuitem, charsequence);
            return;
        }
    }

    public static void b(MenuItem menuitem, char c1, int i)
    {
        if (menuitem instanceof android.support.v4.d.a.b)
        {
            ((android.support.v4.d.a.b)menuitem).setAlphabeticShortcut(c1, i);
            return;
        } else
        {
            a.a(menuitem, c1, i);
            return;
        }
    }

    public static void b(MenuItem menuitem, CharSequence charsequence)
    {
        if (menuitem instanceof android.support.v4.d.a.b)
        {
            ((android.support.v4.d.a.b)menuitem).b(charsequence);
            return;
        } else
        {
            a.b(menuitem, charsequence);
            return;
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            a = new a();
        } else
        {
            a = new b();
        }
    }
}
