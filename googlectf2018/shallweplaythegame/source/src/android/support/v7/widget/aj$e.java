// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.h.p;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.widget:
//            aj, af

private class a
    implements Runnable
{

    final aj a;

    public void run()
    {
        if (a.c != null && p.m(a.c) && a.c.getCount() > a.c.getChildCount() && a.c.getChildCount() <= a.d)
        {
            a.g.setInputMethodMode(2);
            a.a();
        }
    }

    (aj aj1)
    {
        a = aj1;
        super();
    }
}
