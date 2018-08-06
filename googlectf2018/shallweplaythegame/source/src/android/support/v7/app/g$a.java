// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.view.Menu;
import java.util.List;

// Referenced classes of package android.support.v7.app:
//            g

class k extends k
{

    final g b;

    public void onProvideKeyboardShortcuts(List list, Menu menu, int i)
    {
        k k = b.a(0, true);
        if (k != null && k.j != null)
        {
            super.onProvideKeyboardShortcuts(list, k.j, i);
            return;
        } else
        {
            super.onProvideKeyboardShortcuts(list, menu, i);
            return;
        }
    }

    k(g g1, android.view.ow.Callback callback)
    {
        b = g1;
        super(g1, callback);
    }
}
