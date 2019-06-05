// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.graphics.Path;
import android.support.v4.c.b;

// Referenced classes of package android.support.b.a:
//            i

private static class m
{

    protected android.support.v4.c. m[];
    String n;
    int o;

    public void a(Path path)
    {
        path.reset();
        if (m != null)
        {
            android.support.v4.c.a(m, path);
        }
    }

    public boolean a()
    {
        return false;
    }

    public android.support.v4.c.[] getPathData()
    {
        return m;
    }

    public String getPathName()
    {
        return n;
    }

    public void setPathData(android.support.v4.c. a1[])
    {
        if (!b.a(m, a1))
        {
            m = b.a(a1);
            return;
        } else
        {
            b.b(m, a1);
            return;
        }
    }

    public ()
    {
        m = null;
    }

    public (m m1)
    {
        m = null;
        n = m1.n;
        o = m1.o;
        m = b.a(m1.m);
    }
}
