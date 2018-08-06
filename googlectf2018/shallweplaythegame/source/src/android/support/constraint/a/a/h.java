// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;

import android.support.constraint.a.c;
import java.util.ArrayList;

// Referenced classes of package android.support.constraint.a.a:
//            b, c

public class h extends b
{

    protected ArrayList aj;

    public h()
    {
        aj = new ArrayList();
    }

    public void F()
    {
        z();
        if (aj != null)
        {
            int j = aj.size();
            int i = 0;
            while (i < j) 
            {
                b b1 = (b)aj.get(i);
                if (b1 instanceof h)
                {
                    ((h)b1).F();
                }
                i++;
            }
        }
    }

    public android.support.constraint.a.a.c H()
    {
        b b1 = c();
        android.support.constraint.a.a.c c1;
        if (this instanceof android.support.constraint.a.a.c)
        {
            c1 = (android.support.constraint.a.a.c)this;
        } else
        {
            c1 = null;
        }
        while (b1 != null) 
        {
            b b2 = b1.c();
            if (b1 instanceof android.support.constraint.a.a.c)
            {
                c1 = (android.support.constraint.a.a.c)b1;
                b1 = b2;
            } else
            {
                b1 = b2;
            }
        }
        return c1;
    }

    public void I()
    {
        aj.clear();
    }

    public void a()
    {
        aj.clear();
        super.a();
    }

    public void a(c c1)
    {
        super.a(c1);
        int j = aj.size();
        for (int i = 0; i < j; i++)
        {
            ((b)aj.get(i)).a(c1);
        }

    }

    public void b(int i, int j)
    {
        super.b(i, j);
        j = aj.size();
        for (i = 0; i < j; i++)
        {
            ((b)aj.get(i)).b(r(), s());
        }

    }

    public void b(b b1)
    {
        aj.add(b1);
        if (b1.c() != null)
        {
            ((h)b1.c()).c(b1);
        }
        b1.a(this);
    }

    public void c(b b1)
    {
        aj.remove(b1);
        b1.a(null);
    }

    public void z()
    {
        super.z();
        if (aj != null)
        {
            int j = aj.size();
            int i = 0;
            while (i < j) 
            {
                b b1 = (b)aj.get(i);
                b1.b(n(), o());
                if (!(b1 instanceof android.support.constraint.a.a.c))
                {
                    b1.z();
                }
                i++;
            }
        }
    }
}
