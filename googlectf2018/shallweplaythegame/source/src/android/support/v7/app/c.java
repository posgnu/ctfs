// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.a;
import android.support.v4.a.ab;
import android.support.v4.a.i;
import android.support.v4.a.w;
import android.support.v7.view.b;
import android.support.v7.widget.bb;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;

// Referenced classes of package android.support.v7.app:
//            d, e, a

public class c extends i
    implements android.support.v4.a.ab.a, d
{

    private e l;
    private int m;
    private Resources n;

    public c()
    {
        m = 0;
    }

    private boolean a(int k, KeyEvent keyevent)
    {
        if (android.os.Build.VERSION.SDK_INT < 26 && !keyevent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyevent.getMetaState()) && keyevent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyevent.getKeyCode()))
        {
            Window window = getWindow();
            if (window != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyevent))
            {
                return true;
            }
        }
        return false;
    }

    public b a(android.support.v7.view.b.a a1)
    {
        return null;
    }

    public void a(ab ab1)
    {
        ab1.a(this);
    }

    public void a(b b1)
    {
    }

    public boolean a(Intent intent)
    {
        return w.a(this, intent);
    }

    public Intent a_()
    {
        return w.a(this);
    }

    public void addContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        j().b(view, layoutparams);
    }

    public void b(Intent intent)
    {
        w.b(this, intent);
    }

    public void b(ab ab1)
    {
    }

    public void b(b b1)
    {
    }

    public void closeOptionsMenu()
    {
        android.support.v7.app.a a1 = g();
        if (getWindow().hasFeature(0) && (a1 == null || !a1.d()))
        {
            super.closeOptionsMenu();
        }
    }

    public void d()
    {
        j().f();
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        int k = keyevent.getKeyCode();
        android.support.v7.app.a a1 = g();
        if (k == 82 && a1 != null && a1.a(keyevent))
        {
            return true;
        } else
        {
            return super.dispatchKeyEvent(keyevent);
        }
    }

    public View findViewById(int k)
    {
        return j().a(k);
    }

    public android.support.v7.app.a g()
    {
        return j().a();
    }

    public MenuInflater getMenuInflater()
    {
        return j().b();
    }

    public Resources getResources()
    {
        if (n == null && bb.a())
        {
            n = new bb(this, super.getResources());
        }
        if (n == null)
        {
            return super.getResources();
        } else
        {
            return n;
        }
    }

    public boolean h()
    {
        Object obj = a_();
        if (obj != null)
        {
            if (a(((Intent) (obj))))
            {
                obj = ab.a(this);
                a(((ab) (obj)));
                b(((ab) (obj)));
                ((ab) (obj)).a();
                try
                {
                    android.support.v4.a.a.a(this);
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    finish();
                }
            } else
            {
                b(((Intent) (obj)));
            }
            return true;
        } else
        {
            return false;
        }
    }

    public void i()
    {
    }

    public void invalidateOptionsMenu()
    {
        j().f();
    }

    public e j()
    {
        if (l == null)
        {
            l = android.support.v7.app.e.a(this, this);
        }
        return l;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        j().a(configuration);
        if (n != null)
        {
            android.util.DisplayMetrics displaymetrics = super.getResources().getDisplayMetrics();
            n.updateConfiguration(configuration, displaymetrics);
        }
    }

    public void onContentChanged()
    {
        i();
    }

    protected void onCreate(Bundle bundle)
    {
        e e1 = j();
        e1.h();
        e1.a(bundle);
        if (e1.i() && m != 0)
        {
            if (android.os.Build.VERSION.SDK_INT >= 23)
            {
                onApplyThemeResource(getTheme(), m, false);
            } else
            {
                setTheme(m);
            }
        }
        super.onCreate(bundle);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        j().g();
    }

    public boolean onKeyDown(int k, KeyEvent keyevent)
    {
        if (a(k, keyevent))
        {
            return true;
        } else
        {
            return super.onKeyDown(k, keyevent);
        }
    }

    public final boolean onMenuItemSelected(int k, MenuItem menuitem)
    {
        if (super.onMenuItemSelected(k, menuitem))
        {
            return true;
        }
        android.support.v7.app.a a1 = g();
        if (menuitem.getItemId() == 0x102002c && a1 != null && (a1.a() & 4) != 0)
        {
            return h();
        } else
        {
            return false;
        }
    }

    public boolean onMenuOpened(int k, Menu menu)
    {
        return super.onMenuOpened(k, menu);
    }

    public void onPanelClosed(int k, Menu menu)
    {
        super.onPanelClosed(k, menu);
    }

    protected void onPostCreate(Bundle bundle)
    {
        super.onPostCreate(bundle);
        j().b(bundle);
    }

    protected void onPostResume()
    {
        super.onPostResume();
        j().e();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        j().c(bundle);
    }

    protected void onStart()
    {
        super.onStart();
        j().c();
    }

    protected void onStop()
    {
        super.onStop();
        j().d();
    }

    protected void onTitleChanged(CharSequence charsequence, int k)
    {
        super.onTitleChanged(charsequence, k);
        j().a(charsequence);
    }

    public void openOptionsMenu()
    {
        android.support.v7.app.a a1 = g();
        if (getWindow().hasFeature(0) && (a1 == null || !a1.c()))
        {
            super.openOptionsMenu();
        }
    }

    public void setContentView(int k)
    {
        j().b(k);
    }

    public void setContentView(View view)
    {
        j().a(view);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        j().a(view, layoutparams);
    }

    public void setTheme(int k)
    {
        super.setTheme(k);
        m = k;
    }
}
