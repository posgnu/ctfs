// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v7.view.menu.h;
import android.view.MenuItem;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuView

private class a
    implements android.support.v7.view.menu.
{

    final ActionMenuView a;

    public void a(h h)
    {
        if (a.a != null)
        {
            a.a.(h);
        }
    }

    public boolean a(h h, MenuItem menuitem)
    {
        return a.b != null && a.b.a(menuitem);
    }

    (ActionMenuView actionmenuview)
    {
        a = actionmenuview;
        super();
    }
}
