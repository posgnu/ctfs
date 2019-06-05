// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.view.d;
import android.support.v7.view.menu.f;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.p;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;

// Referenced classes of package android.support.v7.app:
//            k

protected static final class q
{

    int a;
    int b;
    int c;
    int d;
    int e;
    int f;
    ViewGroup g;
    View h;
    View i;
    h j;
    f k;
    Context l;
    boolean m;
    boolean n;
    boolean o;
    public boolean p;
    boolean q;
    boolean r;
    Bundle s;

    p a(android.support.v7.view.menu.me me)
    {
        if (j == null)
        {
            return null;
        }
        if (k == null)
        {
            k = new f(l, android.support.v7.a.abc_list_menu_item_layout);
            k.a(me);
            j.a(k);
        }
        return k.a(g);
    }

    void a(Context context)
    {
        TypedValue typedvalue = new TypedValue();
        android.content.res.urces.Theme theme = context.getResources().newTheme();
        theme.setTo(context.getTheme());
        theme.resolveAttribute(android.support.v7.a.actionBarPopupTheme, typedvalue, true);
        if (typedvalue.resourceId != 0)
        {
            theme.applyStyle(typedvalue.resourceId, true);
        }
        theme.resolveAttribute(android.support.v7.a.panelMenuListTheme, typedvalue, true);
        if (typedvalue.resourceId != 0)
        {
            theme.applyStyle(typedvalue.resourceId, true);
        } else
        {
            theme.applyStyle(android.support.v7.a.Theme_AppCompat_CompactMenu, true);
        }
        context = new d(context, 0);
        context.getTheme().setTo(theme);
        l = context;
        context = context.obtainStyledAttributes(android.support.v7.a.AppCompatTheme);
        b = context.getResourceId(android.support.v7.a.AppCompatTheme_panelBackground, 0);
        f = context.getResourceId(android.support.v7.a.AppCompatTheme_android_windowAnimationStyle, 0);
        context.recycle();
    }

    void a(h h1)
    {
        if (h1 != j)
        {
            if (j != null)
            {
                j.b(k);
            }
            j = h1;
            if (h1 != null && k != null)
            {
                h1.a(k);
                return;
            }
        }
    }

    public boolean a()
    {
        boolean flag1 = true;
        boolean flag;
        if (h == null)
        {
            flag = false;
        } else
        {
            flag = flag1;
            if (i == null)
            {
                flag = flag1;
                if (k.a().getCount() <= 0)
                {
                    return false;
                }
            }
        }
        return flag;
    }

    u.h(int i1)
    {
        a = i1;
        q = false;
    }
}
