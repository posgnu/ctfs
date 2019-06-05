// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;


// Referenced classes of package android.support.constraint.a.a:
//            g, a, b

static class e
{

    private a a;
    private a b;
    private int c;
    private e d;
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
            d = b;
            e = 0;
            return;
        }
    }

    public void b(b b1)
    {
        b1.a(a.c()).a(b, c, d, e);
    }

    public (a a1)
    {
        a = a1;
        b = a1.f();
        c = a1.d();
        d = a1.e();
        e = a1.h();
    }
}
