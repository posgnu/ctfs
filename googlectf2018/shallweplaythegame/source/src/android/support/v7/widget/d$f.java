// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v7.view.menu.h;
import android.support.v7.view.menu.u;
import android.view.MenuItem;

// Referenced classes of package android.support.v7.widget:
//            d

private class a
    implements android.support.v7.view.menu.
{

    final d a;

    public void a(h h1, boolean flag)
    {
        if (h1 instanceof u)
        {
            h1.p().a(false);
        }
        android.support.v7.view.menu.  = a.a();
        if ( != null)
        {
            .a(h1, flag);
        }
    }

    public boolean a(h h1)
    {
        if (h1 == null)
        {
            return false;
        }
        a.l = ((u)h1).getItem().getItemId();
        android.support.v7.view.menu.a a1 = a.a();
        boolean flag;
        if (a1 != null)
        {
            flag = a1.a(h1);
        } else
        {
            flag = false;
        }
        return flag;
    }

    (d d1)
    {
        a = d1;
        super();
    }
}
