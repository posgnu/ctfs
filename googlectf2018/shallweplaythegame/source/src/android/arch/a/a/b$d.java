// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.a.a;

import java.util.Iterator;

// Referenced classes of package android.arch.a.a:
//            b

private class <init>
    implements Iterator
{

    final b a;
    private a b;
    private boolean c;

    public java.util.Entry a()
    {
        if (c)
        {
            c = false;
            b = android.arch.a.a.b.a(a);
        } else
        {
            <init> <init>1;
            if (b != null)
            {
                <init>1 = b.c;
            } else
            {
                <init>1 = null;
            }
            b = <init>1;
        }
        return b;
    }

    public boolean hasNext()
    {
        if (!c) goto _L2; else goto _L1
_L1:
        if (android.arch.a.a.b.a(a) == null) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (b == null || b.c == null)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public Object next()
    {
        return a();
    }

    private (b b1)
    {
        a = b1;
        super();
        c = true;
    }

    c(b b1, c c1)
    {
        this(b1);
    }
}
