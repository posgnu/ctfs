// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.support.v4.h.p;

// Referenced classes of package android.support.v4.widget:
//            a

private class a
    implements Runnable
{

    final a a;

    public void run()
    {
        if (!a.e)
        {
            return;
        }
        if (a.c)
        {
            a.c = false;
            a.a.a();
        }
        a a1 = a.a;
        if (a1.c() || !a.a())
        {
            a.e = false;
            return;
        }
        if (a.d)
        {
            a.d = false;
            a.b();
        }
        a1.d();
        int i = a1.g();
        int j = a1.h();
        a.a(i, j);
        p.a(a.b, this);
    }

    (a a1)
    {
        a = a1;
        super();
    }
}
