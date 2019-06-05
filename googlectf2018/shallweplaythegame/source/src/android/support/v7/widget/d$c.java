// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v7.view.menu.h;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            d

private class b
    implements Runnable
{

    final d a;
    private a b;

    public void run()
    {
        if (d.d(a) != null)
        {
            d.e(a).f();
        }
        View view = (View)d.f(a);
        if (view != null && view.getWindowToken() != null && b.c())
        {
            a.h = b;
        }
        a.j = null;
    }

    public (d d1,  )
    {
        a = d1;
        super();
        b = ;
    }
}
