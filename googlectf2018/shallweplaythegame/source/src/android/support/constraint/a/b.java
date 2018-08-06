// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a;


// Referenced classes of package android.support.constraint.a:
//            a, g, c

public class b
{

    g a;
    float b;
    boolean c;
    final a d;
    boolean e;

    public b(c c1)
    {
        a = null;
        b = 0.0F;
        c = false;
        e = false;
        d = new a(this, c1);
    }

    public b a(float f1, float f2, float f3, g g1, int i, g g2, int j, 
            g g3, int k, g g4, int l)
    {
        if (f2 == 0.0F || f1 == f3)
        {
            b = (-i - j) + k + l;
            d.a(g1, 1.0F);
            d.a(g2, -1F);
            d.a(g4, 1.0F);
            d.a(g3, -1F);
            return this;
        } else
        {
            f1 = f1 / f2 / (f3 / f2);
            b = (float)(-i - j) + (float)k * f1 + (float)l * f1;
            d.a(g1, 1.0F);
            d.a(g2, -1F);
            d.a(g4, f1);
            d.a(g3, -f1);
            return this;
        }
    }

    b a(g g1, int i)
    {
        a = g1;
        g1.d = i;
        b = i;
        e = true;
        return this;
    }

    public b a(g g1, g g2)
    {
        d.a(g1, 1.0F);
        d.a(g2, -1F);
        return this;
    }

    public b a(g g1, g g2, int i)
    {
        boolean flag = false;
        int j = 0;
        if (i != 0)
        {
            flag = j;
            j = i;
            if (i < 0)
            {
                j = i * -1;
                flag = true;
            }
            b = j;
        }
        if (!flag)
        {
            d.a(g1, -1F);
            d.a(g2, 1.0F);
            return this;
        } else
        {
            d.a(g1, 1.0F);
            d.a(g2, -1F);
            return this;
        }
    }

    b a(g g1, g g2, int i, float f1, g g3, g g4, int j)
    {
        if (g2 != g3) goto _L2; else goto _L1
_L1:
        d.a(g1, 1.0F);
        d.a(g4, 1.0F);
        d.a(g2, -2F);
_L4:
        return this;
_L2:
        if (f1 != 0.5F)
        {
            break; /* Loop/switch isn't completed */
        }
        d.a(g1, 1.0F);
        d.a(g2, -1F);
        d.a(g3, -1F);
        d.a(g4, 1.0F);
        if (i > 0 || j > 0)
        {
            b = -i + j;
            return this;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (f1 <= 0.0F)
        {
            d.a(g1, -1F);
            d.a(g2, 1.0F);
            b = i;
            return this;
        }
        if (f1 >= 1.0F)
        {
            d.a(g3, -1F);
            d.a(g4, 1.0F);
            b = j;
            return this;
        }
        d.a(g1, (1.0F - f1) * 1.0F);
        d.a(g2, (1.0F - f1) * -1F);
        d.a(g3, -1F * f1);
        d.a(g4, 1.0F * f1);
        if (i > 0 || j > 0)
        {
            b = (float)(-i) * (1.0F - f1) + (float)j * f1;
            return this;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    b a(g g1, g g2, g g3, float f1)
    {
        d.a(g1, -1F);
        d.a(g2, 1.0F - f1);
        d.a(g3, f1);
        return this;
    }

    public b a(g g1, g g2, g g3, int i)
    {
        boolean flag = false;
        int j = 0;
        if (i != 0)
        {
            flag = j;
            j = i;
            if (i < 0)
            {
                j = i * -1;
                flag = true;
            }
            b = j;
        }
        if (!flag)
        {
            d.a(g1, -1F);
            d.a(g2, 1.0F);
            d.a(g3, 1.0F);
            return this;
        } else
        {
            d.a(g1, 1.0F);
            d.a(g2, -1F);
            d.a(g3, -1F);
            return this;
        }
    }

    public b a(g g1, g g2, g g3, g g4, float f1)
    {
        d.a(g1, -1F);
        d.a(g2, 1.0F);
        d.a(g3, f1);
        d.a(g4, -f1);
        return this;
    }

    void a()
    {
        d.a(this);
    }

    boolean a(b b1)
    {
        d.a(this, b1);
        return true;
    }

    boolean a(g g1)
    {
        return d.b(g1);
    }

    public b b(g g1, int i)
    {
        if (i < 0)
        {
            b = i * -1;
            d.a(g1, 1.0F);
            return this;
        } else
        {
            b = i;
            d.a(g1, -1F);
            return this;
        }
    }

    public b b(g g1, g g2, g g3, int i)
    {
        boolean flag = false;
        int j = 0;
        if (i != 0)
        {
            flag = j;
            j = i;
            if (i < 0)
            {
                j = i * -1;
                flag = true;
            }
            b = j;
        }
        if (!flag)
        {
            d.a(g1, -1F);
            d.a(g2, 1.0F);
            d.a(g3, -1F);
            return this;
        } else
        {
            d.a(g1, 1.0F);
            d.a(g2, -1F);
            d.a(g3, 1.0F);
            return this;
        }
    }

    void b(g g1)
    {
        if (a != null)
        {
            d.a(a, -1F);
            a = null;
        }
        float f1 = d.a(g1) * -1F;
        a = g1;
        if (f1 == 1.0F)
        {
            return;
        } else
        {
            b = b / f1;
            d.a(f1);
            return;
        }
    }

    boolean b()
    {
        return a != null && (a.f == g.a.a || b >= 0.0F);
    }

    b c(g g1, int i)
    {
        d.a(g1, i);
        return this;
    }

    String c()
    {
        String s;
        boolean flag;
        int i;
        int j;
        if (a == null)
        {
            s = (new StringBuilder()).append("").append("0").toString();
        } else
        {
            s = (new StringBuilder()).append("").append(a).toString();
        }
        s = (new StringBuilder()).append(s).append(" = ").toString();
        String s1;
        if (b != 0.0F)
        {
            s = (new StringBuilder()).append(s).append(b).toString();
            flag = true;
        } else
        {
            flag = false;
        }
        j = d.a;
        i = 0;
        while (i < j) 
        {
            Object obj = d.a(i);
            if (obj != null)
            {
                float f1 = d.b(i);
                obj = ((g) (obj)).toString();
                if (!flag)
                {
                    if (f1 < 0.0F)
                    {
                        s = (new StringBuilder()).append(s).append("- ").toString();
                        f1 *= -1F;
                    }
                } else
                if (f1 > 0.0F)
                {
                    s = (new StringBuilder()).append(s).append(" + ").toString();
                } else
                {
                    s = (new StringBuilder()).append(s).append(" - ").toString();
                    f1 *= -1F;
                }
                if (f1 == 1.0F)
                {
                    s = (new StringBuilder()).append(s).append(((String) (obj))).toString();
                } else
                {
                    s = (new StringBuilder()).append(s).append(f1).append(" ").append(((String) (obj))).toString();
                }
                flag = true;
            }
            i++;
        }
        s1 = s;
        if (!flag)
        {
            s1 = (new StringBuilder()).append(s).append("0.0").toString();
        }
        return s1;
    }

    public void d()
    {
        a = null;
        d.a();
        b = 0.0F;
        e = false;
    }

    void e()
    {
        if (b < 0.0F)
        {
            b = b * -1F;
            d.b();
        }
    }

    void f()
    {
        g g1 = d.c();
        if (g1 != null)
        {
            b(g1);
        }
        if (d.a == 0)
        {
            e = true;
        }
    }

    public String toString()
    {
        return c();
    }
}
