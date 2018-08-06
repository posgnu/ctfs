// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v4.h.p;
import android.support.v7.view.menu.h;
import android.support.v7.widget.ad;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.app:
//            a

class o extends android.support.v7.app.a
{
    private final class a
        implements android.support.v7.view.menu.a
    {

        final o a;
        private boolean b;

        public void a(h h1, boolean flag)
        {
            if (b)
            {
                return;
            }
            b = true;
            a.a.n();
            if (a.b != null)
            {
                a.b.onPanelClosed(108, h1);
            }
            b = false;
        }

        public boolean a(h h1)
        {
            if (a.b != null)
            {
                a.b.onMenuOpened(108, h1);
                return true;
            } else
            {
                return false;
            }
        }

        a()
        {
            a = o.this;
            super();
        }
    }

    private final class b
        implements android.support.v7.view.menu.h.a
    {

        final o a;

        public void a(h h1)
        {
            if (a.b != null)
            {
                if (a.a.i())
                {
                    a.b.onPanelClosed(108, h1);
                } else
                if (a.b.onPreparePanel(0, null, h1))
                {
                    a.b.onMenuOpened(108, h1);
                    return;
                }
            }
        }

        public boolean a(h h1, MenuItem menuitem)
        {
            return false;
        }

        b()
        {
            a = o.this;
            super();
        }
    }


    ad a;
    android.view.Window.Callback b;
    private boolean c;
    private boolean d;
    private ArrayList e;
    private final Runnable f;

    private Menu h()
    {
        if (!c)
        {
            a.a(new a(), new b());
            c = true;
        }
        return a.q();
    }

    public int a()
    {
        return a.o();
    }

    public void a(float f1)
    {
        p.a(a.a(), f1);
    }

    public void a(Configuration configuration)
    {
        super.a(configuration);
    }

    public void a(CharSequence charsequence)
    {
        a.a(charsequence);
    }

    public void a(boolean flag)
    {
    }

    public boolean a(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        Menu menu = h();
        if (menu != null)
        {
            int j;
            if (keyevent != null)
            {
                j = keyevent.getDeviceId();
            } else
            {
                j = -1;
            }
            if (KeyCharacterMap.load(j).getKeyboardType() != 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            menu.setQwertyMode(flag);
            flag = menu.performShortcut(i, keyevent, 0);
        }
        return flag;
    }

    public boolean a(KeyEvent keyevent)
    {
        if (keyevent.getAction() == 1)
        {
            c();
        }
        return true;
    }

    public Context b()
    {
        return a.b();
    }

    public void c(boolean flag)
    {
    }

    public boolean c()
    {
        return a.k();
    }

    public void d(boolean flag)
    {
    }

    public boolean d()
    {
        return a.l();
    }

    public void e(boolean flag)
    {
        if (flag != d)
        {
            d = flag;
            int j = e.size();
            int i = 0;
            while (i < j) 
            {
                ((a.b)e.get(i)).a(flag);
                i++;
            }
        }
    }

    public boolean e()
    {
        a.a().removeCallbacks(f);
        p.a(a.a(), f);
        return true;
    }

    public boolean f()
    {
        if (a.c())
        {
            a.d();
            return true;
        } else
        {
            return false;
        }
    }

    void g()
    {
        a.a().removeCallbacks(f);
    }
}
