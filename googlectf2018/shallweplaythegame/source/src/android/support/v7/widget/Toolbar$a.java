// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v7.view.c;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.u;
import android.view.View;
import android.widget.ImageButton;

// Referenced classes of package android.support.v7.widget:
//            Toolbar

private class c
    implements o
{

    h a;
    j b;
    final Toolbar c;

    public void a(Context context, h h1)
    {
        if (a != null && b != null)
        {
            a.d(b);
        }
        a = h1;
    }

    public void a(h h1, boolean flag)
    {
    }

    public void a(android.support.v7.view.menu. )
    {
    }

    public boolean a(h h1, j j1)
    {
        c.i();
        if (c.a.getParent() != c)
        {
            c.addView(c.a);
        }
        c.b = j1.getActionView();
        b = j1;
        if (c.b.getParent() != c)
        {
            h1 = c.j();
            h1.a = 0x800003 | c.c & 0x70;
            h1.b = 2;
            c.b.setLayoutParams(h1);
            c.addView(c.b);
        }
        c.k();
        c.requestLayout();
        j1.e(true);
        if (c.b instanceof c)
        {
            ((c)c.b).a();
        }
        return true;
    }

    public boolean a(u u)
    {
        return false;
    }

    public void b(boolean flag)
    {
        boolean flag2 = false;
        if (b == null) goto _L2; else goto _L1
_L1:
        boolean flag1 = flag2;
        if (a == null) goto _L4; else goto _L3
_L3:
        int i;
        int k;
        k = a.size();
        i = 0;
_L9:
        flag1 = flag2;
        if (i >= k) goto _L4; else goto _L5
_L5:
        if (a.getItem(i) != b) goto _L7; else goto _L6
_L6:
        flag1 = true;
_L4:
        if (!flag1)
        {
            b(a, b);
        }
_L2:
        return;
_L7:
        i++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public boolean b()
    {
        return false;
    }

    public boolean b(h h1, j j1)
    {
        if (c.b instanceof c)
        {
            ((c)c.b).b();
        }
        c.removeView(c.b);
        c.removeView(c.a);
        c.b = null;
        c.l();
        b = null;
        c.requestLayout();
        j1.e(false);
        return true;
    }

    (Toolbar toolbar)
    {
        c = toolbar;
        super();
    }
}
