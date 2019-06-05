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

    public void a(h h1, boolean flag)
    {
label0:
        {
            h h2 = h1.p();
            k k1;
            boolean flag1;
            if (h2 != h1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            k1 = a;
            if (flag1)
            {
                h1 = h2;
            }
            h1 = k1.a(h1);
            if (h1 != null)
            {
                if (!flag1)
                {
                    break label0;
                }
                a.a(((a) (h1)).a, h1, h2);
                a.a(h1, true);
            }
            return;
        }
        a.a(h1, flag);
    }

    public boolean a(h h1)
    {
        if (h1 == null && a.h)
        {
            android.view.ow.Callback callback = a.q();
            if (callback != null && !a.p())
            {
                callback.onMenuOpened(108, h1);
            }
        }
        return true;
    }

    u.h(k k1)
    {
        a = k1;
        super();
    }
}
