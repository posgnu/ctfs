// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.support.v7.view.menu.h;

// Referenced classes of package android.support.v7.app:
//            k

private final class a
    implements android.support.v7.view.menu.
{

    final k a;

    public void a(h h, boolean flag)
    {
        a.b(h);
    }

    public boolean a(h h)
    {
        android.view.ow.Callback callback = a.q();
        if (callback != null)
        {
            callback.onMenuOpened(108, h);
        }
        return true;
    }

    u.h(k k1)
    {
        a = k1;
        super();
    }
}
