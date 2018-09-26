// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.c.a.a;
import android.support.v4.d.a.b;
import android.support.v4.h.c;
import android.util.Log;
import android.view.ActionProvider;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package android.support.v7.view.menu:
//            h, u

public final class j
    implements b
{

    private static String F;
    private static String G;
    private static String H;
    private static String I;
    private View A;
    private c B;
    private android.view.MenuItem.OnActionExpandListener C;
    private boolean D;
    private android.view.ContextMenu.ContextMenuInfo E;
    h a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private CharSequence f;
    private CharSequence g;
    private Intent h;
    private char i;
    private int j;
    private char k;
    private int l;
    private Drawable m;
    private int n;
    private u o;
    private Runnable p;
    private android.view.MenuItem.OnMenuItemClickListener q;
    private CharSequence r;
    private CharSequence s;
    private ColorStateList t;
    private android.graphics.PorterDuff.Mode u;
    private boolean v;
    private boolean w;
    private boolean x;
    private int y;
    private int z;

    j(h h1, int i1, int j1, int k1, int l1, CharSequence charsequence, int i2)
    {
        j = 4096;
        l = 4096;
        n = 0;
        t = null;
        u = null;
        v = false;
        w = false;
        x = false;
        y = 16;
        z = 0;
        D = false;
        a = h1;
        b = j1;
        c = i1;
        d = k1;
        e = l1;
        f = charsequence;
        z = i2;
    }

    private Drawable a(Drawable drawable)
    {
        Drawable drawable1;
label0:
        {
            drawable1 = drawable;
            if (drawable == null)
            {
                break label0;
            }
            drawable1 = drawable;
            if (!x)
            {
                break label0;
            }
            if (!v)
            {
                drawable1 = drawable;
                if (!w)
                {
                    break label0;
                }
            }
            drawable1 = android.support.v4.c.a.a.f(drawable).mutate();
            if (v)
            {
                android.support.v4.c.a.a.a(drawable1, t);
            }
            if (w)
            {
                android.support.v4.c.a.a.a(drawable1, u);
            }
            x = false;
        }
        return drawable1;
    }

    public b a(int i1)
    {
        Context context = a.e();
        a(LayoutInflater.from(context).inflate(i1, new LinearLayout(context), false));
        return this;
    }

    public b a(c c1)
    {
        if (B != null)
        {
            B.f();
        }
        A = null;
        B = c1;
        a.b(true);
        if (B != null)
        {
            B.a(new android.support.v4.h.c.b() {

                final j a;

                public void a(boolean flag)
                {
                    a.a.a(a);
                }

            
            {
                a = j.this;
                super();
            }
            });
        }
        return this;
    }

    public b a(View view)
    {
        A = view;
        B = null;
        if (view != null && view.getId() == -1 && b > 0)
        {
            view.setId(b);
        }
        a.b(this);
        return this;
    }

    public b a(CharSequence charsequence)
    {
        r = charsequence;
        a.b(false);
        return this;
    }

    public c a()
    {
        return B;
    }

    CharSequence a(p.a a1)
    {
        if (a1 != null && a1.a())
        {
            return getTitleCondensed();
        } else
        {
            return getTitle();
        }
    }

    public void a(u u1)
    {
        o = u1;
        u1.setHeaderTitle(getTitle());
    }

    void a(android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        E = contextmenuinfo;
    }

    public void a(boolean flag)
    {
        int i1 = y;
        byte byte0;
        if (flag)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        y = byte0 | i1 & -5;
    }

    public b b(int i1)
    {
        setShowAsAction(i1);
        return this;
    }

    public b b(CharSequence charsequence)
    {
        s = charsequence;
        a.b(false);
        return this;
    }

    void b(boolean flag)
    {
        int i1 = y;
        int j1 = y;
        byte byte0;
        if (flag)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        y = byte0 | j1 & -3;
        if (i1 != y)
        {
            a.b(false);
        }
    }

    public boolean b()
    {
_L2:
        return true;
        if (q != null && q.onMenuItemClick(this) || a.a(a, this)) goto _L2; else goto _L1
_L1:
        if (p != null)
        {
            p.run();
            return true;
        }
        if (h == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        a.e().startActivity(h);
        return true;
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", activitynotfoundexception);
        if (B != null && B.d()) goto _L2; else goto _L3
_L3:
        return false;
    }

    public int c()
    {
        return e;
    }

    boolean c(boolean flag)
    {
        boolean flag1 = false;
        int i1 = y;
        int j1 = y;
        byte byte0;
        if (flag)
        {
            byte0 = 0;
        } else
        {
            byte0 = 8;
        }
        y = byte0 | j1 & -9;
        flag = flag1;
        if (i1 != y)
        {
            flag = true;
        }
        return flag;
    }

    public boolean collapseActionView()
    {
        if ((z & 8) != 0)
        {
            if (A == null)
            {
                return true;
            }
            if (C == null || C.onMenuItemActionCollapse(this))
            {
                return a.d(this);
            }
        }
        return false;
    }

    char d()
    {
        if (a.b())
        {
            return k;
        } else
        {
            return i;
        }
    }

    public void d(boolean flag)
    {
        if (flag)
        {
            y = y | 0x20;
            return;
        } else
        {
            y = y & 0xffffffdf;
            return;
        }
    }

    String e()
    {
        char c1;
        StringBuilder stringbuilder;
        c1 = d();
        if (c1 == 0)
        {
            return "";
        }
        stringbuilder = new StringBuilder(F);
        c1;
        JVM INSTR lookupswitch 3: default 60
    //                   8: 82
    //                   10: 71
    //                   32: 93;
           goto _L1 _L2 _L3 _L4
_L1:
        stringbuilder.append(c1);
_L6:
        return stringbuilder.toString();
_L3:
        stringbuilder.append(G);
        continue; /* Loop/switch isn't completed */
_L2:
        stringbuilder.append(H);
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.append(I);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void e(boolean flag)
    {
        D = flag;
        a.b(false);
    }

    public boolean expandActionView()
    {
        while (!n() || C != null && !C.onMenuItemActionExpand(this)) 
        {
            return false;
        }
        return a.c(this);
    }

    boolean f()
    {
        return a.c() && d() != 0;
    }

    public boolean g()
    {
        return (y & 4) != 0;
    }

    public ActionProvider getActionProvider()
    {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    public View getActionView()
    {
        if (A != null)
        {
            return A;
        }
        if (B != null)
        {
            A = B.a(this);
            return A;
        } else
        {
            return null;
        }
    }

    public int getAlphabeticModifiers()
    {
        return l;
    }

    public char getAlphabeticShortcut()
    {
        return k;
    }

    public CharSequence getContentDescription()
    {
        return r;
    }

    public int getGroupId()
    {
        return c;
    }

    public Drawable getIcon()
    {
        if (m != null)
        {
            return a(m);
        }
        if (n != 0)
        {
            Drawable drawable = android.support.v7.b.a.b.b(a.e(), n);
            n = 0;
            m = drawable;
            return a(drawable);
        } else
        {
            return null;
        }
    }

    public ColorStateList getIconTintList()
    {
        return t;
    }

    public android.graphics.PorterDuff.Mode getIconTintMode()
    {
        return u;
    }

    public Intent getIntent()
    {
        return h;
    }

    public int getItemId()
    {
        return b;
    }

    public android.view.ContextMenu.ContextMenuInfo getMenuInfo()
    {
        return E;
    }

    public int getNumericModifiers()
    {
        return j;
    }

    public char getNumericShortcut()
    {
        return i;
    }

    public int getOrder()
    {
        return d;
    }

    public SubMenu getSubMenu()
    {
        return o;
    }

    public CharSequence getTitle()
    {
        return f;
    }

    public CharSequence getTitleCondensed()
    {
        CharSequence charsequence;
        Object obj;
        if (g != null)
        {
            charsequence = g;
        } else
        {
            charsequence = f;
        }
        obj = charsequence;
        if (android.os.Build.VERSION.SDK_INT < 18)
        {
            obj = charsequence;
            if (charsequence != null)
            {
                obj = charsequence;
                if (!(charsequence instanceof String))
                {
                    obj = charsequence.toString();
                }
            }
        }
        return ((CharSequence) (obj));
    }

    public CharSequence getTooltipText()
    {
        return s;
    }

    public void h()
    {
        a.b(this);
    }

    public boolean hasSubMenu()
    {
        return o != null;
    }

    public boolean i()
    {
        return a.q();
    }

    public boolean isActionViewExpanded()
    {
        return D;
    }

    public boolean isCheckable()
    {
        return (y & 1) == 1;
    }

    public boolean isChecked()
    {
        return (y & 2) == 2;
    }

    public boolean isEnabled()
    {
        return (y & 0x10) != 0;
    }

    public boolean isVisible()
    {
        if (B == null || !B.b()) goto _L2; else goto _L1
_L1:
        if ((y & 8) != 0 || !B.c()) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if ((y & 8) != 0)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public boolean j()
    {
        return (y & 0x20) == 32;
    }

    public boolean k()
    {
        return (z & 1) == 1;
    }

    public boolean l()
    {
        return (z & 2) == 2;
    }

    public boolean m()
    {
        return (z & 4) == 4;
    }

    public boolean n()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if ((z & 8) != 0)
        {
            if (A == null && B != null)
            {
                A = B.a(this);
            }
            flag = flag1;
            if (A != null)
            {
                flag = true;
            }
        }
        return flag;
    }

    public MenuItem setActionProvider(ActionProvider actionprovider)
    {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
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
        if (k == c1)
        {
            return this;
        } else
        {
            k = Character.toLowerCase(c1);
            a.b(false);
            return this;
        }
    }

    public MenuItem setAlphabeticShortcut(char c1, int i1)
    {
        if (k == c1 && l == i1)
        {
            return this;
        } else
        {
            k = Character.toLowerCase(c1);
            l = KeyEvent.normalizeMetaState(i1);
            a.b(false);
            return this;
        }
    }

    public MenuItem setCheckable(boolean flag)
    {
        int i1 = y;
        int j1 = y;
        boolean flag1;
        if (flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        y = flag1 | j1 & -2;
        if (i1 != y)
        {
            a.b(false);
        }
        return this;
    }

    public MenuItem setChecked(boolean flag)
    {
        if ((y & 4) != 0)
        {
            a.a(this);
            return this;
        } else
        {
            b(flag);
            return this;
        }
    }

    public MenuItem setContentDescription(CharSequence charsequence)
    {
        return a(charsequence);
    }

    public MenuItem setEnabled(boolean flag)
    {
        if (flag)
        {
            y = y | 0x10;
        } else
        {
            y = y & 0xffffffef;
        }
        a.b(false);
        return this;
    }

    public MenuItem setIcon(int i1)
    {
        m = null;
        n = i1;
        x = true;
        a.b(false);
        return this;
    }

    public MenuItem setIcon(Drawable drawable)
    {
        n = 0;
        m = drawable;
        x = true;
        a.b(false);
        return this;
    }

    public MenuItem setIconTintList(ColorStateList colorstatelist)
    {
        t = colorstatelist;
        v = true;
        x = true;
        a.b(false);
        return this;
    }

    public MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode)
    {
        u = mode;
        w = true;
        x = true;
        a.b(false);
        return this;
    }

    public MenuItem setIntent(Intent intent)
    {
        h = intent;
        return this;
    }

    public MenuItem setNumericShortcut(char c1)
    {
        if (i == c1)
        {
            return this;
        } else
        {
            i = c1;
            a.b(false);
            return this;
        }
    }

    public MenuItem setNumericShortcut(char c1, int i1)
    {
        if (i == c1 && j == i1)
        {
            return this;
        } else
        {
            i = c1;
            j = KeyEvent.normalizeMetaState(i1);
            a.b(false);
            return this;
        }
    }

    public MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onactionexpandlistener)
    {
        C = onactionexpandlistener;
        return this;
    }

    public MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onmenuitemclicklistener)
    {
        q = onmenuitemclicklistener;
        return this;
    }

    public MenuItem setShortcut(char c1, char c2)
    {
        i = c1;
        k = Character.toLowerCase(c2);
        a.b(false);
        return this;
    }

    public MenuItem setShortcut(char c1, char c2, int i1, int j1)
    {
        i = c1;
        j = KeyEvent.normalizeMetaState(i1);
        k = Character.toLowerCase(c2);
        l = KeyEvent.normalizeMetaState(j1);
        a.b(false);
        return this;
    }

    public void setShowAsAction(int i1)
    {
        switch (i1 & 3)
        {
        default:
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            z = i1;
            break;
        }
        a.b(this);
    }

    public MenuItem setShowAsActionFlags(int i1)
    {
        return b(i1);
    }

    public MenuItem setTitle(int i1)
    {
        return setTitle(((CharSequence) (a.e().getString(i1))));
    }

    public MenuItem setTitle(CharSequence charsequence)
    {
        f = charsequence;
        a.b(false);
        if (o != null)
        {
            o.setHeaderTitle(charsequence);
        }
        return this;
    }

    public MenuItem setTitleCondensed(CharSequence charsequence)
    {
        g = charsequence;
        if (charsequence == null)
        {
            charsequence = f;
        }
        a.b(false);
        return this;
    }

    public MenuItem setTooltipText(CharSequence charsequence)
    {
        return b(charsequence);
    }

    public MenuItem setVisible(boolean flag)
    {
        if (c(flag))
        {
            a.a(this);
        }
        return this;
    }

    public String toString()
    {
        if (f != null)
        {
            return f.toString();
        } else
        {
            return null;
        }
    }
}
