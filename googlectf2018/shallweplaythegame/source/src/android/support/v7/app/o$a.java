// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.support.v7.view.menu.h;
import android.support.v7.widget.ad;

// Referenced classes of package android.support.v7.app:
//            o

private final class a
    implements android.support.v7.view.menu.
{

    final o a;
    private boolean b;

    public void a(h h, boolean flag)
    {
        if (b)
        {
            return;
        }
        b = true;
        a.a.n();
        if (a.b != null)
        {
            a.b.onPanelClosed(108, h);
        }
        b = false;
    }

    public boolean a(h h)
    {
        if (a.b != null)
        {
            a.b.onMenuOpened(108, h);
            return true;
        } else
        {
            return false;
        }
    }

    u.h(o o1)
    {
        a = o1;
        super();
    }
}
