// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a;

import android.support.constraint.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

// Referenced classes of package android.support.constraint.a:
//            d, g, b, c, 
//            a

public class e
{

    private static int d = 1000;
    int a;
    int b;
    final c c = new c();
    private HashMap e;
    private d f;
    private int g;
    private int h;
    private b i[];
    private boolean j[];
    private int k;
    private int l;
    private g m[];
    private int n;
    private b o[];

    public e()
    {
        a = 0;
        e = null;
        f = new d();
        g = 32;
        h = g;
        i = null;
        j = new boolean[g];
        b = 1;
        k = 0;
        l = g;
        m = new g[d];
        n = 0;
        o = new b[g];
        i = new b[g];
        h();
    }

    public static b a(e e1, g g1, g g2, int i1, float f1, g g3, g g4, int j1, 
            boolean flag)
    {
        b b1 = e1.b();
        b1.a(g1, g2, i1, f1, g3, g4, j1);
        if (flag)
        {
            g1 = e1.d();
            e1 = e1.d();
            g1.c = 4;
            e1.c = 4;
            b1.a(g1, e1);
        }
        return b1;
    }

    public static b a(e e1, g g1, g g2, int i1, boolean flag)
    {
        b b1 = e1.b();
        b1.a(g1, g2, i1);
        if (flag)
        {
            e1.a(b1, 1);
        }
        return b1;
    }

    public static b a(e e1, g g1, g g2, g g3, float f1, boolean flag)
    {
        b b1 = e1.b();
        if (flag)
        {
            e1.b(b1);
        }
        return b1.a(g1, g2, g3, f1);
    }

    private g a(g.a a1)
    {
        Object obj = (g)c.b.a();
        int i1;
        if (obj == null)
        {
            a1 = new g(a1);
        } else
        {
            ((g) (obj)).c();
            ((g) (obj)).a(a1);
            a1 = ((g.a) (obj));
        }
        if (n >= d)
        {
            d *= 2;
            m = (g[])Arrays.copyOf(m, d);
        }
        obj = m;
        i1 = n;
        n = i1 + 1;
        obj[i1] = a1;
        return a1;
    }

    private void a(b b1, int i1)
    {
        b1.c(d(), i1);
    }

    private int b(d d1)
    {
        int j1;
        boolean flag;
        int l1;
        for (int i1 = 0; i1 < b; i1++)
        {
            j[i1] = false;
        }

        j1 = 0;
        l1 = 0;
        flag = false;
_L3:
        if (flag) goto _L2; else goto _L1
_L1:
        g g1;
        int k1;
        g1 = d1.a();
        k1 = j1;
        if (g1 == null)
        {
            break MISSING_BLOCK_LABEL_372;
        }
        if (j[g1.a])
        {
            g1 = null;
        } else
        {
            j[g1.a] = true;
            j1++;
            k1 = j1;
            if (j1 < b)
            {
                break MISSING_BLOCK_LABEL_372;
            }
            flag = true;
        }
_L4:
        if (g1 != null)
        {
            int i2 = -1;
            float f1 = 3.402823E+38F;
            k1 = 0;
            while (k1 < k) 
            {
                b b1 = i[k1];
                float f2;
                int j2;
                if (b1.a.f == android.support.constraint.a.g.a.a)
                {
                    f2 = f1;
                    j2 = i2;
                } else
                {
                    j2 = i2;
                    f2 = f1;
                    if (b1.a(g1))
                    {
                        float f3 = b1.d.c(g1);
                        j2 = i2;
                        f2 = f1;
                        if (f3 < 0.0F)
                        {
                            f3 = -b1.b / f3;
                            j2 = i2;
                            f2 = f1;
                            if (f3 < f1)
                            {
                                j2 = k1;
                                f2 = f3;
                            }
                        }
                    }
                }
                k1++;
                i2 = j2;
                f1 = f2;
            }
            if (i2 > -1)
            {
                b b2 = i[i2];
                b2.a.b = -1;
                b2.b(g1);
                b2.a.b = i2;
                for (k1 = 0; k1 < k; k1++)
                {
                    i[k1].a(b2);
                }

                d1.a(this);
                try
                {
                    c(d1);
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            } else
            {
                flag = true;
            }
        } else
        {
            flag = true;
        }
        l1++;
          goto _L3
_L2:
        return l1;
          goto _L3
        j1 = k1;
          goto _L4
    }

    public static b b(e e1, g g1, g g2, int i1, boolean flag)
    {
        g g3 = e1.c();
        b b1 = e1.b();
        b1.a(g1, g2, g3, i1);
        if (flag)
        {
            e1.a(b1, (int)(b1.d.c(g3) * -1F));
        }
        return b1;
    }

    private void b(b b1)
    {
        b1.a(d(), d());
    }

    private int c(d d1)
    {
        int i1 = 0;
_L3:
        if (i1 >= k)
        {
            break; /* Loop/switch isn't completed */
        }
          goto _L1
_L5:
        i1++;
        if (true) goto _L3; else goto _L2
_L1:
        if (i[i1].a.f == android.support.constraint.a.g.a.a || i[i1].b >= 0.0F) goto _L5; else goto _L4
_L4:
        i1 = 1;
_L19:
        if (i1 == 0) goto _L7; else goto _L6
_L6:
        int l1;
        int i2;
        i2 = 0;
        l1 = 0;
_L17:
        i1 = l1;
        if (i2 != 0) goto _L9; else goto _L8
_L8:
        float f1;
        int j1;
        int k1;
        int j2;
        f1 = 3.402823E+38F;
        k1 = 0;
        j1 = -1;
        i1 = -1;
        j2 = 0;
_L14:
        if (j2 >= k) goto _L11; else goto _L10
_L10:
        b b1 = i[j2];
        if (b1.a.f != android.support.constraint.a.g.a.a) goto _L13; else goto _L12
_L12:
        float f2;
        int k2;
        int l2;
        int i3;
        f2 = f1;
        i3 = k1;
        l2 = j1;
        k2 = i1;
_L16:
        j2++;
        i1 = k2;
        j1 = l2;
        k1 = i3;
        f1 = f2;
          goto _L14
_L13:
        k2 = i1;
        l2 = j1;
        i3 = k1;
        f2 = f1;
        if (b1.b >= 0.0F) goto _L16; else goto _L15
_L15:
        k2 = 1;
        while (k2 < b) 
        {
            g g1 = c.c[k2];
            float f3 = b1.d.c(g1);
            if (f3 > 0.0F)
            {
                l2 = 0;
                while (l2 < 6) 
                {
                    f2 = g1.e[l2] / f3;
                    if (f2 < f1 && l2 == k1 || l2 > k1)
                    {
                        i1 = k2;
                        j1 = j2;
                        k1 = l2;
                        f1 = f2;
                    }
                    l2++;
                }
            }
            k2++;
        }
        break MISSING_BLOCK_LABEL_481;
_L11:
        if (j1 != -1)
        {
            b b2 = i[j1];
            b2.a.b = -1;
            b2.b(c.c[i1]);
            b2.a.b = j1;
            for (i1 = 0; i1 < k; i1++)
            {
                i[i1].a(b2);
            }

            d1.a(this);
            i1 = i2;
        } else
        {
            i1 = 1;
        }
        l1++;
        i2 = i1;
          goto _L17
_L7:
        i1 = 0;
_L9:
        for (j1 = 0; j1 < k && (i[j1].a.f == android.support.constraint.a.g.a.a || i[j1].b >= 0.0F); j1++) { }
        return i1;
        k2 = i1;
        l2 = j1;
        i3 = k1;
        f2 = f1;
          goto _L16
_L2:
        i1 = 0;
        if (true) goto _L19; else goto _L18
_L18:
    }

    public static b c(e e1, g g1, g g2, int i1, boolean flag)
    {
        g g3 = e1.c();
        b b1 = e1.b();
        b1.b(g1, g2, g3, i1);
        if (flag)
        {
            e1.a(b1, (int)(b1.d.c(g3) * -1F));
        }
        return b1;
    }

    private void c(b b1)
    {
        if (k > 0)
        {
            b1.d.(b1, i);
            if (b1.d. == 0)
            {
                b1.e = true;
            }
        }
    }

    private void g()
    {
        g = g * 2;
        i = (b[])Arrays.copyOf(i, g);
        c.c = (g[])Arrays.copyOf(c.c, g);
        j = new boolean[g];
        h = g;
        l = g;
        f.a.clear();
    }

    private void h()
    {
        for (int i1 = 0; i1 < i.length; i1++)
        {
            b b1 = i[i1];
            if (b1 != null)
            {
                c.a.a(b1);
            }
            i[i1] = null;
        }

    }

    private void i()
    {
        for (int i1 = 0; i1 < k; i1++)
        {
            b b1 = i[i1];
            b1.a.d = b1.b;
        }

    }

    b a(int i1)
    {
        return i[i1];
    }

    public g a(Object obj)
    {
        g g2 = null;
        if (obj != null) goto _L2; else goto _L1
_L1:
        return g2;
_L2:
        if (b + 1 >= h)
        {
            g();
        }
        if (!(obj instanceof a)) goto _L1; else goto _L3
_L3:
        g g1;
        g2 = ((a)obj).a();
        g1 = g2;
        if (g2 == null)
        {
            ((a)obj).a(c);
            g1 = ((a)obj).a();
        }
        if (g1.a == -1 || g1.a > a)
        {
            break; /* Loop/switch isn't completed */
        }
        g2 = g1;
        if (c.c[g1.a] != null) goto _L1; else goto _L4
_L4:
        if (g1.a != -1)
        {
            g1.c();
        }
        a = a + 1;
        b = b + 1;
        g1.a = a;
        g1.f = android.support.constraint.a.g.a.a;
        c.c[a] = g1;
        return g1;
    }

    public void a()
    {
        for (int i1 = 0; i1 < c.c.length; i1++)
        {
            g g1 = c.c[i1];
            if (g1 != null)
            {
                g1.c();
            }
        }

        c.b.a(m, n);
        n = 0;
        Arrays.fill(c.c, null);
        if (e != null)
        {
            e.clear();
        }
        a = 0;
        f.a.clear();
        b = 1;
        for (int j1 = 0; j1 < k; j1++)
        {
            i[j1].c = false;
        }

        h();
        k = 0;
    }

    public void a(b b1)
    {
        boolean flag = false;
        if (b1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (k + 1 >= l || b + 1 >= h)
        {
            g();
        }
        if (b1.e)
        {
            break; /* Loop/switch isn't completed */
        }
        c(b1);
        b1.e();
        b1.f();
        if (!b1.b()) goto _L1; else goto _L3
_L3:
        if (i[k] != null)
        {
            c.a.a(i[k]);
        }
        if (!b1.e)
        {
            b1.a();
        }
        i[k] = b1;
        b1.a.b = k;
        k = k + 1;
        int k1 = b1.a.h;
        if (k1 > 0)
        {
            for (; o.length < k1; o = new b[o.length * 2]) { }
            b ab[] = o;
            int i1 = 0;
            int j1;
            do
            {
                j1 = ((flag) ? 1 : 0);
                if (i1 >= k1)
                {
                    break;
                }
                ab[i1] = b1.a.g[i1];
                i1++;
            } while (true);
            while (j1 < k1) 
            {
                b b2 = ab[j1];
                if (b2 != b1)
                {
                    b2.d.(b2, b1);
                    b2.a();
                }
                j1++;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    void a(d d1)
    {
        d1.a(this);
        c(d1);
        b(d1);
        i();
    }

    public void a(g g1, int i1)
    {
        int j1 = g1.b;
        if (g1.b != -1)
        {
            b b1 = i[j1];
            if (b1.e)
            {
                b1.b = i1;
                return;
            } else
            {
                b b2 = b();
                b2.b(g1, i1);
                a(b2);
                return;
            }
        } else
        {
            b b3 = b();
            b3.a(g1, i1);
            a(b3);
            return;
        }
    }

    public void a(g g1, g g2, int i1, float f1, g g3, g g4, int j1, 
            int k1)
    {
        b b1 = b();
        b1.a(g1, g2, i1, f1, g3, g4, j1);
        g1 = d();
        g2 = d();
        g1.c = k1;
        g2.c = k1;
        b1.a(g1, g2);
        a(b1);
    }

    public void a(g g1, g g2, int i1, int j1)
    {
        b b1 = b();
        g g3 = c();
        g3.c = j1;
        b1.a(g1, g2, g3, i1);
        a(b1);
    }

    public int b(Object obj)
    {
        obj = ((a)obj).a();
        if (obj != null)
        {
            return (int)(((g) (obj)).d + 0.5F);
        } else
        {
            return 0;
        }
    }

    public b b()
    {
        b b1 = (b)c.a.a();
        if (b1 == null)
        {
            return new b(c);
        } else
        {
            b1.d();
            return b1;
        }
    }

    public void b(g g1, g g2, int i1, int j1)
    {
        b b1 = b();
        g g3 = c();
        g3.c = j1;
        b1.b(g1, g2, g3, i1);
        a(b1);
    }

    public b c(g g1, g g2, int i1, int j1)
    {
        b b1 = b();
        b1.a(g1, g2, i1);
        g1 = d();
        g2 = d();
        g1.c = j1;
        g2.c = j1;
        b1.a(g1, g2);
        a(b1);
        return b1;
    }

    public g c()
    {
        if (b + 1 >= h)
        {
            g();
        }
        g g1 = a(g.a.c);
        a = a + 1;
        b = b + 1;
        g1.a = a;
        c.c[a] = g1;
        return g1;
    }

    public g d()
    {
        if (b + 1 >= h)
        {
            g();
        }
        g g1 = a(g.a.d);
        a = a + 1;
        b = b + 1;
        g1.a = a;
        c.c[a] = g1;
        return g1;
    }

    public void e()
    {
        a(f);
    }

    public c f()
    {
        return c;
    }

}
