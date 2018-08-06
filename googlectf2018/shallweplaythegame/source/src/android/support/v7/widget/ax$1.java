// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v7.view.menu.a;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            ax, Toolbar

class b
    implements android.view.OnClickListener
{

    final a a;
    final ax b;

    public void onClick(View view)
    {
        if (b.c != null && b.d)
        {
            b.c.onMenuItemSelected(0, a);
        }
    }

    ar(ax ax1)
    {
        b = ax1;
        super();
        a = new a(b.a.getContext(), 0, 0x102002c, 0, 0, b.b);
    }
}
