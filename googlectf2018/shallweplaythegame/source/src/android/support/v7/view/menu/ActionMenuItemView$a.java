// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.support.v7.widget.ah;

// Referenced classes of package android.support.v7.view.menu:
//            ActionMenuItemView, s

private class a extends ah
{

    final ActionMenuItemView a;

    public s a()
    {
        if (a.c != null)
        {
            return a.c.a();
        } else
        {
            return null;
        }
    }

    protected boolean b()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (a.b != null)
        {
            flag = flag1;
            if (a.b.a(a.a))
            {
                s s1 = a();
                flag = flag1;
                if (s1 != null)
                {
                    flag = flag1;
                    if (s1.d())
                    {
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    public (ActionMenuItemView actionmenuitemview)
    {
        a = actionmenuitemview;
        super(actionmenuitemview);
    }
}
