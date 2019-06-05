// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.lifecycle;

import android.arch.a.a.a;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package android.arch.lifecycle:
//            b, c, a

public class d extends b
{
    static class a
    {

        b.b a;
        android.arch.lifecycle.a b;

        void a(c c1, b.a a1)
        {
            b.b b1 = d.b(a1);
            a = android.arch.lifecycle.d.a(a, b1);
            b.a(c1, a1);
            a = b1;
        }
    }


    private android.arch.a.a.a a;
    private b.b b;
    private final c c;
    private int d;
    private boolean e;
    private boolean f;
    private ArrayList g;

    public d(c c1)
    {
        a = new android.arch.a.a.a();
        d = 0;
        e = false;
        f = false;
        g = new ArrayList();
        c = c1;
        b = b.b.b;
    }

    static b.b a(b.b b1, b.b b2)
    {
        if (b2 != null && b2.compareTo(b1) < 0)
        {
            return b2;
        } else
        {
            return b1;
        }
    }

    private boolean a()
    {
        if (a.a() == 0)
        {
            return true;
        }
        b.b b1 = ((a)a.d().getValue()).a;
        b.b b2 = ((a)a.e().getValue()).a;
        boolean flag;
        if (b1 == b2 && b == b2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    static b.b b(b.a a1)
    {
        static class _cls1
        {

            static final int a[];
            static final int b[];

            static 
            {
                b = new int[android.arch.lifecycle.b.b.values().length];
                try
                {
                    b[b.b.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror11) { }
                try
                {
                    b[b.b.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror10) { }
                try
                {
                    b[b.b.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror9) { }
                try
                {
                    b[b.b.e.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    b[android.arch.lifecycle.b.b.a.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                a = new int[android.arch.lifecycle.b.a.values().length];
                try
                {
                    a[b.a.ON_CREATE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[b.a.ON_STOP.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[b.a.ON_START.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[b.a.ON_PAUSE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[b.a.ON_RESUME.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[b.a.ON_DESTROY.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[b.a.ON_ANY.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (android.arch.lifecycle._cls1.a[a1.ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unexpected event value ").append(a1).toString());

        case 1: // '\001'
        case 2: // '\002'
            return b.b.c;

        case 3: // '\003'
        case 4: // '\004'
            return b.b.d;

        case 5: // '\005'
            return b.b.e;

        case 6: // '\006'
            return android.arch.lifecycle.b.b.a;
        }
    }

    private void b()
    {
        g.remove(g.size() - 1);
    }

    private void b(b.b b1)
    {
        g.add(b1);
    }

    private static b.a c(b.b b1)
    {
        switch (_cls1.b[b1.ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unexpected state value ").append(b1).toString());

        case 1: // '\001'
            throw new IllegalArgumentException();

        case 2: // '\002'
            return b.a.ON_DESTROY;

        case 3: // '\003'
            return b.a.ON_STOP;

        case 4: // '\004'
            return b.a.ON_PAUSE;

        case 5: // '\005'
            throw new IllegalArgumentException();
        }
    }

    private void c()
    {
        for (android.arch.a.a.b.d d1 = a.c(); d1.hasNext() && !f;)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)d1.next();
            a a1 = (a)entry.getValue();
            while (a1.a.compareTo(b) < 0 && !f && a.a(entry.getKey())) 
            {
                b(a1.a);
                a1.a(c, d(a1.a));
                b();
            }
        }

    }

    private static b.a d(b.b b1)
    {
        switch (_cls1.b[b1.ordinal()])
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Unexpected state value ").append(b1).toString());

        case 1: // '\001'
        case 5: // '\005'
            return b.a.ON_CREATE;

        case 2: // '\002'
            return b.a.ON_START;

        case 3: // '\003'
            return b.a.ON_RESUME;

        case 4: // '\004'
            throw new IllegalArgumentException();
        }
    }

    private void d()
    {
        for (Iterator iterator = a.b(); iterator.hasNext() && !f;)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            a a1 = (a)entry.getValue();
            while (a1.a.compareTo(b) > 0 && !f && a.a(entry.getKey())) 
            {
                b.a a2 = c(a1.a);
                b(b(a2));
                a1.a(c, a2);
                b();
            }
        }

    }

    private void e()
    {
        do
        {
            if (a())
            {
                break;
            }
            f = false;
            if (b.compareTo(((a)a.d().getValue()).a) < 0)
            {
                d();
            }
            java.util.Map.Entry entry = a.e();
            if (!f && entry != null && b.compareTo(((a)entry.getValue()).a) > 0)
            {
                c();
            }
        } while (true);
        f = false;
    }

    public void a(b.a a1)
    {
        b = b(a1);
        if (e || d != 0)
        {
            f = true;
            return;
        } else
        {
            e = true;
            e();
            e = false;
            return;
        }
    }

    public void a(b.b b1)
    {
        b = b1;
    }
}
