// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.support.v4.h.r;
import android.support.v4.h.s;
import android.support.v4.h.t;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public class h
{

    final ArrayList a = new ArrayList();
    s b;
    private long c;
    private Interpolator d;
    private boolean e;
    private final t f = new t() {

        final h a;
        private boolean b;
        private int c;

        void a()
        {
            c = 0;
            b = false;
            a.b();
        }

        public void a(View view)
        {
            if (!b)
            {
                b = true;
                if (a.b != null)
                {
                    a.b.a(null);
                    return;
                }
            }
        }

        public void b(View view)
        {
            int i = c + 1;
            c = i;
            if (i == a.a.size())
            {
                if (a.b != null)
                {
                    a.b.b(null);
                }
                a();
            }
        }

            
            {
                a = h.this;
                super();
                b = false;
                c = 0;
            }
    };

    public h()
    {
        c = -1L;
    }

    public h a(long l)
    {
        if (!e)
        {
            c = l;
        }
        return this;
    }

    public h a(r r1)
    {
        if (!e)
        {
            a.add(r1);
        }
        return this;
    }

    public h a(r r1, r r2)
    {
        a.add(r1);
        r2.b(r1.a());
        a.add(r2);
        return this;
    }

    public h a(s s)
    {
        if (!e)
        {
            b = s;
        }
        return this;
    }

    public h a(Interpolator interpolator)
    {
        if (!e)
        {
            d = interpolator;
        }
        return this;
    }

    public void a()
    {
        if (e)
        {
            return;
        }
        r r1;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); r1.c())
        {
            r1 = (r)iterator.next();
            if (c >= 0L)
            {
                r1.a(c);
            }
            if (d != null)
            {
                r1.a(d);
            }
            if (b != null)
            {
                r1.a(f);
            }
        }

        e = true;
    }

    void b()
    {
        e = false;
    }

    public void c()
    {
        if (!e)
        {
            return;
        }
        for (Iterator iterator = a.iterator(); iterator.hasNext(); ((r)iterator.next()).b()) { }
        e = false;
    }
}
