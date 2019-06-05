// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.n;
import android.support.v7.view.menu.u;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            d

private class Item extends n
{

    final d a;

    protected void e()
    {
        a.i = null;
        a.l = 0;
        super.e();
    }

    public .a(d d1, Context context, u u1, View view)
    {
        a = d1;
        super(context, u1, view, false, android.support.v7.a.actionOverflowMenuStyle);
        if (!((j)u1.getItem()).j())
        {
            if (d1.g == null)
            {
                context = (View)d.c(d1);
            } else
            {
                context = d1.g;
            }
            a(context);
        }
        a(d1.k);
    }
}
