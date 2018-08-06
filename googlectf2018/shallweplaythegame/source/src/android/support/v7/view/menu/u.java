// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

// Referenced classes of package android.support.v7.view.menu:
//            h, j

public class u extends h
    implements SubMenu
{

    private h d;
    private j e;

    public u(Context context, h h1, j j1)
    {
        super(context);
        d = h1;
        e = j1;
    }

    public String a()
    {
        int i;
        if (e != null)
        {
            i = e.getItemId();
        } else
        {
            i = 0;
        }
        if (i == 0)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(super.a()).append(":").append(i).toString();
        }
    }

    public void a(h.a a1)
    {
        d.a(a1);
    }

    boolean a(h h1, MenuItem menuitem)
    {
        return super.a(h1, menuitem) || d.a(h1, menuitem);
    }

    public boolean b()
    {
        return d.b();
    }

    public boolean c()
    {
        return d.c();
    }

    public boolean c(j j1)
    {
        return d.c(j1);
    }

    public boolean d(j j1)
    {
        return d.d(j1);
    }

    public MenuItem getItem()
    {
        return e;
    }

    public h p()
    {
        return d.p();
    }

    public Menu s()
    {
        return d;
    }

    public SubMenu setHeaderIcon(int i)
    {
        return (SubMenu)super.e(i);
    }

    public SubMenu setHeaderIcon(Drawable drawable)
    {
        return (SubMenu)super.a(drawable);
    }

    public SubMenu setHeaderTitle(int i)
    {
        return (SubMenu)super.d(i);
    }

    public SubMenu setHeaderTitle(CharSequence charsequence)
    {
        return (SubMenu)super.a(charsequence);
    }

    public SubMenu setHeaderView(View view)
    {
        return (SubMenu)super.a(view);
    }

    public SubMenu setIcon(int i)
    {
        e.setIcon(i);
        return this;
    }

    public SubMenu setIcon(Drawable drawable)
    {
        e.setIcon(drawable);
        return this;
    }

    public void setQwertyMode(boolean flag)
    {
        d.setQwertyMode(flag);
    }
}
