// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;

import java.util.ArrayList;

// Referenced classes of package android.support.constraint.a.a:
//            b, a

public class g
{
    static class a
    {

        private android.support.constraint.a.a.a a;
        private android.support.constraint.a.a.a b;
        private int c;
        private a.b d;
        private int e;

        public void a(b b1)
        {
            a = b1.a(a.c());
            if (a != null)
            {
                b = a.f();
                c = a.d();
                d = a.e();
                e = a.h();
                return;
            } else
            {
                b = null;
                c = 0;
                d = a.b.b;
                e = 0;
                return;
            }
        }

        public void b(b b1)
        {
            b1.a(a.c()).a(b, c, d, e);
        }

        public a(android.support.constraint.a.a.a a1)
        {
            a = a1;
            b = a1.f();
            c = a1.d();
            d = a1.e();
            e = a1.h();
        }
    }


    private int a;
    private int b;
    private int c;
    private int d;
    private ArrayList e;

    public g(b b1)
    {
        e = new ArrayList();
        a = b1.f();
        b = b1.g();
        c = b1.h();
        d = b1.l();
        b1 = b1.y();
        int j = b1.size();
        for (int i = 0; i < j; i++)
        {
            android.support.constraint.a.a.a a1 = (android.support.constraint.a.a.a)b1.get(i);
            e.add(new a(a1));
        }

    }

    public void a(b b1)
    {
        a = b1.f();
        b = b1.g();
        c = b1.h();
        d = b1.l();
        int j = e.size();
        for (int i = 0; i < j; i++)
        {
            ((a)e.get(i)).a(b1);
        }

    }

    public void b(b b1)
    {
        b1.b(a);
        b1.c(b);
        b1.d(c);
        b1.e(d);
        int j = e.size();
        for (int i = 0; i < j; i++)
        {
            ((a)e.get(i)).b(b1);
        }

    }
}
