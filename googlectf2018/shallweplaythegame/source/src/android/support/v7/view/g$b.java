// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.support.v4.h.c;
import android.support.v4.h.g;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.k;
import android.support.v7.widget.ae;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Constructor;

// Referenced classes of package android.support.v7.view:
//            g

private class a
{

    private String A;
    private String B;
    private CharSequence C;
    private CharSequence D;
    private ColorStateList E;
    private android.graphics.erDuff.Mode F;
    c a;
    final android.support.v7.view.g b;
    private Menu c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;
    private CharSequence m;
    private CharSequence n;
    private int o;
    private char p;
    private int q;
    private char r;
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private int y;
    private String z;

    private char a(String s1)
    {
        if (s1 == null)
        {
            return '\0';
        } else
        {
            return s1.charAt(0);
        }
    }

    private Object a(String s1, Class aclass[], Object aobj[])
    {
        try
        {
            aclass = b.e.getClassLoader().loadClass(s1).getConstructor(aclass);
            aclass.setAccessible(true);
            aclass = ((Class []) (aclass.newInstance(aobj)));
        }
        // Misplaced declaration of an exception variable
        catch (Class aclass[])
        {
            Log.w("SupportMenuInflater", (new StringBuilder()).append("Cannot instantiate class: ").append(s1).toString(), aclass);
            return null;
        }
        return aclass;
    }

    private void a(MenuItem menuitem)
    {
        boolean flag = true;
        Object obj = menuitem.setChecked(u).setVisible(v).setEnabled(w);
        boolean flag1;
        if (t >= 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ((MenuItem) (obj)).setCheckable(flag1).setTitleCondensed(n).setIcon(o);
        if (x >= 0)
        {
            menuitem.setShowAsAction(x);
        }
        if (B != null)
        {
            if (b.e.isRestricted())
            {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            menuitem.setOnMenuItemClickListener(new <init>(b.a(), B));
        }
        if (menuitem instanceof j)
        {
            obj = (j)menuitem;
        }
        if (t >= 2)
        {
            if (menuitem instanceof j)
            {
                ((j)menuitem).a(true);
            } else
            if (menuitem instanceof k)
            {
                ((k)menuitem).a(true);
            }
        }
        if (z != null)
        {
            menuitem.setActionView((View)a(z, g.a, b.c));
        } else
        {
            flag = false;
        }
        if (y > 0)
        {
            if (!flag)
            {
                menuitem.setActionView(y);
            } else
            {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            }
        }
        if (a != null)
        {
            android.support.v4.h.g.a(menuitem, a);
        }
        android.support.v4.h.g.a(menuitem, C);
        android.support.v4.h.g.b(menuitem, D);
        android.support.v4.h.g.b(menuitem, p, q);
        android.support.v4.h.g.a(menuitem, r, s);
        if (F != null)
        {
            android.support.v4.h.g.a(menuitem, F);
        }
        if (E != null)
        {
            android.support.v4.h.g.a(menuitem, E);
        }
    }

    public void a()
    {
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = true;
        i = true;
    }

    public void a(AttributeSet attributeset)
    {
        attributeset = b.e.obtainStyledAttributes(attributeset, android.support.v7.a.MenuGroup);
        d = attributeset.getResourceId(android.support.v7.a.MenuGroup_android_id, 0);
        e = attributeset.getInt(android.support.v7.a.MenuGroup_android_menuCategory, 0);
        f = attributeset.getInt(android.support.v7.a.MenuGroup_android_orderInCategory, 0);
        g = attributeset.getInt(android.support.v7.a.MenuGroup_android_checkableBehavior, 0);
        h = attributeset.getBoolean(android.support.v7.a.MenuGroup_android_visible, true);
        i = attributeset.getBoolean(android.support.v7.a.MenuGroup_android_enabled, true);
        attributeset.recycle();
    }

    public void b()
    {
        j = true;
        a(c.add(d, k, l, m));
    }

    public void b(AttributeSet attributeset)
    {
        boolean flag = true;
        attributeset = b.e.obtainStyledAttributes(attributeset, android.support.v7.a.MenuItem);
        k = attributeset.getResourceId(android.support.v7.a.MenuItem_android_id, 0);
        l = attributeset.getInt(android.support.v7.a.MenuItem_android_menuCategory, e) & 0xffff0000 | attributeset.getInt(android.support.v7.a.MenuItem_android_orderInCategory, f) & 0xffff;
        m = attributeset.getText(android.support.v7.a.MenuItem_android_title);
        n = attributeset.getText(android.support.v7.a.MenuItem_android_titleCondensed);
        o = attributeset.getResourceId(android.support.v7.a.MenuItem_android_icon, 0);
        p = a(attributeset.getString(android.support.v7.a.MenuItem_android_alphabeticShortcut));
        q = attributeset.getInt(android.support.v7.a.MenuItem_alphabeticModifiers, 4096);
        r = a(attributeset.getString(android.support.v7.a.MenuItem_android_numericShortcut));
        s = attributeset.getInt(android.support.v7.a.MenuItem_numericModifiers, 4096);
        int i1;
        if (attributeset.hasValue(android.support.v7.a.MenuItem_android_checkable))
        {
            if (attributeset.getBoolean(android.support.v7.a.MenuItem_android_checkable, false))
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            t = i1;
        } else
        {
            t = g;
        }
        u = attributeset.getBoolean(android.support.v7.a.MenuItem_android_checked, false);
        v = attributeset.getBoolean(android.support.v7.a.MenuItem_android_visible, h);
        w = attributeset.getBoolean(android.support.v7.a.MenuItem_android_enabled, i);
        x = attributeset.getInt(android.support.v7.a.MenuItem_showAsAction, -1);
        B = attributeset.getString(android.support.v7.a.MenuItem_android_onClick);
        y = attributeset.getResourceId(android.support.v7.a.MenuItem_actionLayout, 0);
        z = attributeset.getString(android.support.v7.a.MenuItem_actionViewClass);
        A = attributeset.getString(android.support.v7.a.MenuItem_actionProviderClass);
        if (A != null)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        if (i1 != 0 && y == 0 && z == null)
        {
            a = (c)a(A, g.b, b.d);
        } else
        {
            if (i1 != 0)
            {
                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
            }
            a = null;
        }
        C = attributeset.getText(android.support.v7.a.MenuItem_contentDescription);
        D = attributeset.getText(android.support.v7.a.MenuItem_tooltipText);
        if (attributeset.hasValue(android.support.v7.a.MenuItem_iconTintMode))
        {
            F = ae.a(attributeset.getInt(android.support.v7.a.MenuItem_iconTintMode, -1), F);
        } else
        {
            F = null;
        }
        if (attributeset.hasValue(android.support.v7.a.MenuItem_iconTint))
        {
            E = attributeset.getColorStateList(android.support.v7.a.MenuItem_iconTint);
        } else
        {
            E = null;
        }
        attributeset.recycle();
        j = false;
    }

    public SubMenu c()
    {
        j = true;
        SubMenu submenu = c.addSubMenu(d, k, l, m);
        a(submenu.getItem());
        return submenu;
    }

    public boolean d()
    {
        return j;
    }

    public Mode(android.support.v7.view.g g1, Menu menu)
    {
        b = g1;
        super();
        E = null;
        F = null;
        c = menu;
        a();
    }
}
