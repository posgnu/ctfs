// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.g;

import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package android.support.v4.g:
//            h

final class b
    implements Iterator
{

    final int a;
    int b;
    int c;
    boolean d;
    final h e;

    public boolean hasNext()
    {
        return c < b;
    }

    public Object next()
    {
        if (!hasNext())
        {
            throw new NoSuchElementException();
        } else
        {
            Object obj = e.a(c, a);
            c = c + 1;
            d = true;
            return obj;
        }
    }

    public void remove()
    {
        if (!d)
        {
            throw new IllegalStateException();
        } else
        {
            c = c - 1;
            b = b - 1;
            d = false;
            e.a(c);
            return;
        }
    }

    eption(h h1, int i)
    {
        e = h1;
        super();
        d = false;
        a = i;
        b = h1.a();
    }
}
