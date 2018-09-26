// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.support.v7.view.menu.h;
import android.support.v7.widget.ad;
import android.view.MenuItem;

// Referenced classes of package android.support.v7.app:
//            o

private final class a
    implements android.support.v7.view.menu.
{

    final o a;

    public void a(h h)
    {
        if (a.b != null)
        {
            if (a.a.i())
            {
                a.b.onPanelClosed(108, h);
            } else
            if (a.b.onPreparePanel(0, null, h))
            {
                a.b.onMenuOpened(108, h);
                return;
            }
        }
    }

    public boolean a(h h, MenuItem menuitem)
    {
        return false;
    }

    u.h(o o1)
    {
        a = o1;
        super();
    }
}
