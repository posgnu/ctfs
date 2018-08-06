// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.view.MenuItem;

// Referenced classes of package android.support.v7.view.menu:
//            d, k

private class nit> extends d
    implements android.view.Item.OnMenuItemClickListener
{

    final k a;

    public boolean onMenuItemClick(MenuItem menuitem)
    {
        return ((android.view.Item.OnMenuItemClickListener)b).onMenuItemClick(a.a(menuitem));
    }

    Listener(k k1, android.view.Item.OnMenuItemClickListener onmenuitemclicklistener)
    {
        a = k1;
        super(onmenuitemclicklistener);
    }
}
