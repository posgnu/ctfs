// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.view.Menu;
import android.view.Window;
import java.util.List;

// Referenced classes of package android.support.v7.app:
//            j, d

class g extends j
{
    class a extends j.a
    {

        final g b;

        public void onProvideKeyboardShortcuts(List list, Menu menu, int i)
        {
            k.d d = b.a(0, true);
            if (d != null && d.j != null)
            {
                super.onProvideKeyboardShortcuts(list, d.j, i);
                return;
            } else
            {
                super.onProvideKeyboardShortcuts(list, menu, i);
                return;
            }
        }

        a(android.view.Window.Callback callback)
        {
            b = g.this;
            super(g.this, callback);
        }
    }


    g(Context context, Window window, d d)
    {
        super(context, window, d);
    }

    android.view.Window.Callback a(android.view.Window.Callback callback)
    {
        return new a(callback);
    }
}
