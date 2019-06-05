// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.h.c;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

// Referenced classes of package android.support.v7.view.menu:
//            k

class a extends c
{

    final ActionProvider a;
    final k b;

    public View a()
    {
        return a.onCreateActionView();
    }

    public void a(SubMenu submenu)
    {
        a.onPrepareSubMenu(b.a(submenu));
    }

    public boolean d()
    {
        return a.onPerformDefaultAction();
    }

    public boolean e()
    {
        return a.hasSubMenu();
    }

    public (k k1, Context context, ActionProvider actionprovider)
    {
        b = k1;
        super(context);
        a = actionprovider;
    }
}
