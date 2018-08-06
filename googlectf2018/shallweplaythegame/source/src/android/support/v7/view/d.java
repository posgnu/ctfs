// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;

public class d extends ContextWrapper
{

    private int a;
    private android.content.res.Resources.Theme b;
    private LayoutInflater c;
    private Configuration d;
    private Resources e;

    public d()
    {
        super(null);
    }

    public d(Context context, int i)
    {
        super(context);
        a = i;
    }

    public d(Context context, android.content.res.Resources.Theme theme)
    {
        super(context);
        b = theme;
    }

    private Resources b()
    {
        if (e != null) goto _L2; else goto _L1
_L1:
        if (d != null) goto _L4; else goto _L3
_L3:
        e = super.getResources();
_L2:
        return e;
_L4:
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            e = createConfigurationContext(d).getResources();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private void c()
    {
        boolean flag;
        if (b == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            b = getResources().newTheme();
            android.content.res.Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null)
            {
                b.setTo(theme);
            }
        }
        a(b, a, flag);
    }

    public int a()
    {
        return a;
    }

    protected void a(android.content.res.Resources.Theme theme, int i, boolean flag)
    {
        theme.applyStyle(i, true);
    }

    protected void attachBaseContext(Context context)
    {
        super.attachBaseContext(context);
    }

    public AssetManager getAssets()
    {
        return getResources().getAssets();
    }

    public Resources getResources()
    {
        return b();
    }

    public Object getSystemService(String s)
    {
        if ("layout_inflater".equals(s))
        {
            if (c == null)
            {
                c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return c;
        } else
        {
            return getBaseContext().getSystemService(s);
        }
    }

    public android.content.res.Resources.Theme getTheme()
    {
        if (b != null)
        {
            return b;
        }
        if (a == 0)
        {
            a = android.support.v7.a.a.i.Theme_AppCompat_Light;
        }
        c();
        return b;
    }

    public void setTheme(int i)
    {
        if (a != i)
        {
            a = i;
            c();
        }
    }
}
