// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.d.a.b;
import android.support.v4.g.a;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package android.support.v7.view.menu:
//            d, q

abstract class c extends d
{

    final Context a;
    private Map c;
    private Map d;

    c(Context context, Object obj)
    {
        super(obj);
        a = context;
    }

    final MenuItem a(MenuItem menuitem)
    {
        if (menuitem instanceof b)
        {
            b b1 = (b)menuitem;
            if (c == null)
            {
                c = new a();
            }
            MenuItem menuitem1 = (MenuItem)c.get(menuitem);
            menuitem = menuitem1;
            if (menuitem1 == null)
            {
                menuitem = android.support.v7.view.menu.q.a(a, b1);
                c.put(b1, menuitem);
            }
            return menuitem;
        } else
        {
            return menuitem;
        }
    }

    final SubMenu a(SubMenu submenu)
    {
        if (submenu instanceof android.support.v4.d.a.c)
        {
            android.support.v4.d.a.c c1 = (android.support.v4.d.a.c)submenu;
            if (d == null)
            {
                d = new a();
            }
            SubMenu submenu1 = (SubMenu)d.get(c1);
            submenu = submenu1;
            if (submenu1 == null)
            {
                submenu = android.support.v7.view.menu.q.a(a, c1);
                d.put(c1, submenu);
            }
            return submenu;
        } else
        {
            return submenu;
        }
    }

    final void a()
    {
        if (c != null)
        {
            c.clear();
        }
        if (d != null)
        {
            d.clear();
        }
    }

    final void a(int i)
    {
        if (c != null)
        {
            Iterator iterator = c.keySet().iterator();
            while (iterator.hasNext()) 
            {
                if (i == ((MenuItem)iterator.next()).getGroupId())
                {
                    iterator.remove();
                }
            }
        }
    }

    final void b(int i)
    {
        if (c != null)
        {
            Iterator iterator = c.keySet().iterator();
            while (iterator.hasNext()) 
            {
                if (i == ((MenuItem)iterator.next()).getItemId())
                {
                    iterator.remove();
                    return;
                }
            }
        }
    }
}
