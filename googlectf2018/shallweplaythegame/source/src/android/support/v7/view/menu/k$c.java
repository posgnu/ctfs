// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.view.MenuItem;

// Referenced classes of package android.support.v7.view.menu:
//            d, k

private class nit> extends d
    implements android.view.Item.OnActionExpandListener
{

    final k a;

    public boolean onMenuItemActionCollapse(MenuItem menuitem)
    {
        return ((android.view.Item.OnActionExpandListener)b).onMenuItemActionCollapse(a.a(menuitem));
    }

    public boolean onMenuItemActionExpand(MenuItem menuitem)
    {
        return ((android.view.Item.OnActionExpandListener)b).onMenuItemActionExpand(a.a(menuitem));
    }

    istener(k k1, android.view.Item.OnActionExpandListener onactionexpandlistener)
    {
        a = k1;
        super(onactionexpandlistener);
    }
}
