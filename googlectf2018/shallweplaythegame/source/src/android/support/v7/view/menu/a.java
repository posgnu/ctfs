// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.d.a.b;
import android.support.v4.h.c;
import android.view.ActionProvider;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class a
    implements b
{

    private final int a;
    private final int b;
    private final int c;
    private final int d;
    private CharSequence e;
    private CharSequence f;
    private Intent g;
    private char h;
    private int i;
    private char j;
    private int k;
    private Drawable l;
    private int m;
    private Context n;
    private android.view.MenuItem.OnMenuItemClickListener o;
    private CharSequence p;
    private CharSequence q;
    private ColorStateList r;
    private android.graphics.PorterDuff.Mode s;
    private boolean t;
    private boolean u;
    private int v;

    public a(Context context, int i1, int j1, int k1, int l1, CharSequence charsequence)
    {
        i = 4096;
        k = 4096;
        m = 0;
        r = null;
        s = null;
        t = false;
        u = false;
        v = 16;
        n = context;
        a = j1;
        b = i1;
        c = k1;
        d = l1;
        e = charsequence;
    }

    private void b()
    {
        if (l != null && (t || u))
        {
            l = android.support.v4.c.a.a.f(l);
            l = l.mutate();
            if (t)
            {
                android.support.v4.c.a.a.a(l, r);
            }
            if (u)
            {
                android.support.v4.c.a.a.a(l, s);
            }
        }
    }

    public b a(int i1)
    {
        throw new UnsupportedOperationException();
    }

    public b a(c c1)
    {
        throw new UnsupportedOperationException();
    }

    public b a(View view)
    {
        throw new UnsupportedOperationException();
    }

    public b a(CharSequence charsequence)
    {
        p = charsequence;
        return this;
    }

    public c a()
    {
        return null;
    }

    public b b(int i1)
    {
        setShowAsAction(i1);
        return this;
    }

    public b b(CharSequence charsequence)
    {
        q = charsequence;
        return this;
    }

    public boolean collapseActionView()
    {
        return false;
    }

    public boolean expandActionView()
    {
        return false;
    }

    public ActionProvider getActionProvider()
    {
        throw new UnsupportedOperationException();
    }

    public View getActionView()
    {
        return null;
    }

    public int getAlphabeticModifiers()
    {
        return k;
    }

    public char getAlphabeticShortcut()
    {
        return j;
    }

    public CharSequence getContentDescription()
    {
        return p;
    }

    public int getGroupId()
    {
        return b;
    }

    public Drawable getIcon()
    {
        return l;
    }

    public ColorStateList getIconTintList()
    {
        return r;
    }

    public android.graphics.PorterDuff.Mode getIconTintMode()
    {
        return s;
    }

    public Intent getIntent()
    {
        return g;
    }

    public int getItemId()
    {
        return a;
    }

    public android.view.ContextMenu.ContextMenuInfo getMenuInfo()
    {
        return null;
    }

    public int getNumericModifiers()
    {
        return i;
    }

    public char getNumericShortcut()
    {
        return h;
    }

    public int getOrder()
    {
        return d;
    }

    public SubMenu getSubMenu()
    {
        return null;
    }

    public CharSequence getTitle()
    {
        return e;
    }

    public CharSequence getTitleCondensed()
    {
        if (f != null)
        {
            return f;
        } else
        {
            return e;
        }
    }

    public CharSequence getTooltipText()
    {
        return q;
    }

    public boolean hasSubMenu()
    {
        return false;
    }

    public boolean isActionViewExpanded()
    {
        return false;
    }

    public boolean isCheckable()
    {
        return (v & 1) != 0;
    }

    public boolean isChecked()
    {
        return (v & 2) != 0;
    }

    public boolean isEnabled()
    {
        return (v & 0x10) != 0;
    }

    public boolean isVisible()
    {
        return (v & 8) == 0;
    }

    public MenuItem setActionProvider(ActionProvider actionprovider)
    {
        throw new UnsupportedOperationException();
    }

    public MenuItem setActionView(int i1)
    {
        return a(i1);
    }

    public MenuItem setActionView(View view)
    {
        return a(view);
    }

    public MenuItem setAlphabeticShortcut(char c1)
    {
        j = Character.toLowerCase(c1);
        return this;
    }

    public MenuItem setAlphabeticShortcut(char c1, int i1)
    {
        j = Character.toLowerCase(c1);
        k = KeyEvent.normalizeMetaState(i1);
        return this;
    }

    public MenuItem setCheckable(boolean flag)
    {
        int i1 = v;
        boolean flag1;
        if (flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        v = flag1 | i1 & -2;
        return this;
    }

    public MenuItem setChecked(boolean flag)
    {
        int i1 = v;
        byte byte0;
        if (flag)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        v = byte0 | i1 & -3;
        return this;
    }

    public MenuItem setContentDescription(CharSequence charsequence)
    {
        return a(charsequence);
    }

    public MenuItem setEnabled(boolean flag)
    {
        int i1 = v;
        byte byte0;
        if (flag)
        {
            byte0 = 16;
        } else
        {
            byte0 = 0;
        }
        v = byte0 | i1 & 0xffffffef;
        return this;
    }

    public MenuItem setIcon(int i1)
    {
        m = i1;
        l = android.support.v4.b.a.a(n, i1);
        b();
        return this;
    }

    public MenuItem setIcon(Drawable drawable)
    {
        l = drawable;
        m = 0;
        b();
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorstatelist)
    {
        r = colorstatelist;
        t = true;
        b();
        return this;
    }

    public MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode)
    {
        s = mode;
        u = true;
        b();
        return this;
    }

    public MenuItem setIntent(Intent intent)
    {
        g = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c1)
    {
        h = c1;
        return this;
    }

    public MenuItem setNumericShortcut(char c1, int i1)
    {
        h = c1;
        i = KeyEvent.normalizeMetaState(i1);
        return this;
    }

    public MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onactionexpandlistener)
    {
        throw new UnsupportedOperationException();
    }

    public MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onmenuitemclicklistener)
    {
        o = onmenuitemclicklistener;
        return this;
    }

    public MenuItem setShortcut(char c1, char c2)
    {
        h = c1;
        j = Character.toLowerCase(c2);
        return this;
    }

    public MenuItem setShortcut(char c1, char c2, int i1, int j1)
    {
        h = c1;
        i = KeyEvent.normalizeMetaState(i1);
        j = Character.toLowerCase(c2);
        k = KeyEvent.normalizeMetaState(j1);
        return this;
    }

    public void setShowAsAction(int i1)
    {
    }

    public MenuItem setShowAsActionFlags(int i1)
    {
        return b(i1);
    }

    public MenuItem setTitle(int i1)
    {
        e = n.getResources().getString(i1);
        return this;
    }

    public MenuItem setTitle(CharSequence charsequence)
    {
        e = charsequence;
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charsequence)
    {
        f = charsequence;
        return this;
    }

    public MenuItem setTooltipText(CharSequence charsequence)
    {
        return b(charsequence);
    }

    public MenuItem setVisible(boolean flag)
    {
        int i1 = v;
        byte byte0;
        if (flag)
        {
            byte0 = 0;
        } else
        {
            byte0 = 8;
        }
        v = byte0 | i1 & 8;
        return this;
    }
}
