// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            n, c, h

static class b
    implements b
{

    private final boolean a;
    private final c b;
    private int c;

    static boolean a(b b1)
    {
        return b1.a;
    }

    static c b(a a1)
    {
        return a1.b;
    }

    public void a()
    {
        c = c - 1;
        if (c != 0)
        {
            return;
        } else
        {
            n.a(b.b);
            return;
        }
    }

    public void b()
    {
        c = c + 1;
    }

    public boolean c()
    {
        return c == 0;
    }

    public void d()
    {
        boolean flag1 = false;
        n n1;
        boolean flag;
        int j;
        if (c > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        n1 = b.b;
        j = n1.e.size();
        for (int i = 0; i < j; i++)
        {
            h h1 = (h)n1.e.get(i);
            h1.a(null);
            if (flag && h1.U())
            {
                h1.A();
            }
        }

        n1 = b.b;
        c c1 = b;
        boolean flag2 = a;
        if (!flag)
        {
            flag1 = true;
        }
        n.a(n1, c1, flag2, flag1, true);
    }

    public void e()
    {
        n.a(b.b, b, a, false, false);
    }

    (c c1, boolean flag)
    {
        a = flag;
        b = c1;
    }
}
