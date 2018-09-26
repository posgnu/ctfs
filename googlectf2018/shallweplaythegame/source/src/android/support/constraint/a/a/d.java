// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;

import android.support.constraint.a.e;
import java.util.ArrayList;

// Referenced classes of package android.support.constraint.a.a:
//            b, f, c, a

public class d extends b
{

    protected float aa;
    protected int ab;
    protected int ac;
    private a ad;
    private int ae;
    private boolean af;
    private int ag;
    private f ah;
    private int ai;

    public d()
    {
        aa = -1F;
        ab = -1;
        ac = -1;
        ad = j;
        ae = 0;
        af = false;
        ag = 0;
        ah = new f();
        ai = 8;
        q.clear();
        q.add(ad);
    }

    public int D()
    {
        return ae;
    }

    public float E()
    {
        return aa;
    }

    public int F()
    {
        return ab;
    }

    public int G()
    {
        return ac;
    }

    public a a(a.c c1)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[android.support.constraint.a.a.a.c.values().length];
                try
                {
                    a[a.c.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[a.c.d.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[a.c.c.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[android.support.constraint.a.a.a.c.e.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1.a[c1.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 42
    //                   2 42
    //                   3 55
    //                   4 55;
           goto _L1 _L2 _L2 _L3 _L3
_L1:
        return null;
_L2:
        if (ae == 1)
        {
            return ad;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (ae == 0)
        {
            return ad;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void a(e e1, int i)
    {
        c c1 = (c)c();
        if (c1 != null)
        {
            a a2 = c1.a(a.c.b);
            a a1 = c1.a(a.c.d);
            if (ae == 0)
            {
                a2 = c1.a(a.c.c);
                a1 = c1.a(android.support.constraint.a.a.a.c.e);
            }
            if (ab != -1)
            {
                e1.a(android.support.constraint.a.e.a(e1, e1.a(ad), e1.a(a2), ab, false));
                return;
            }
            if (ac != -1)
            {
                e1.a(android.support.constraint.a.e.a(e1, e1.a(ad), e1.a(a1), -ac, false));
                return;
            }
            if (aa != -1F)
            {
                e1.a(android.support.constraint.a.e.a(e1, e1.a(ad), e1.a(a2), e1.a(a1), aa, af));
                return;
            }
        }
    }

    public void b(e e1, int i)
    {
        if (c() == null)
        {
            return;
        }
        i = e1.b(ad);
        if (ae == 1)
        {
            b(i);
            c(0);
            e(c().l());
            d(0);
            return;
        } else
        {
            b(0);
            c(i);
            d(c().h());
            e(0);
            return;
        }
    }

    public void e(float f1)
    {
        if (f1 > -1F)
        {
            aa = f1;
            ab = -1;
            ac = -1;
        }
    }

    public void m(int i)
    {
        if (ae == i)
        {
            return;
        }
        ae = i;
        q.clear();
        if (ae == 1)
        {
            ad = this.i;
        } else
        {
            ad = j;
        }
        q.add(ad);
    }

    public void n(int i)
    {
        if (i > -1)
        {
            aa = -1F;
            ab = i;
            ac = -1;
        }
    }

    public void o(int i)
    {
        if (i > -1)
        {
            aa = -1F;
            ab = -1;
            ac = i;
        }
    }

    public ArrayList y()
    {
        return q;
    }
}
