// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.a.a;

import java.util.Iterator;

// Referenced classes of package android.arch.a.a:
//            b

private static abstract class b
    implements Iterator
{

    a a;
    a b;

    private b b()
    {
        if (b == a || a == null)
        {
            return null;
        } else
        {
            return a(b);
        }
    }

    abstract b a(b b1);

    public java.util.Entry a()
    {
        b b1 = b;
        b = b();
        return b1;
    }

    public boolean hasNext()
    {
        return b != null;
    }

    public Object next()
    {
        return a();
    }

    ( ,  1)
    {
        a = 1;
        b = ;
    }
}
