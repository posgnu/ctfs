// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a;

import java.util.Arrays;

// Referenced classes of package android.support.constraint.a:
//            g, c, b

public class a
{

    int a;
    private final b b;
    private final c c;
    private int d;
    private g e;
    private int f[];
    private int g[];
    private float h[];
    private int i;
    private int j;
    private boolean k;

    a(b b1, c c1)
    {
        a = 0;
        d = 8;
        e = null;
        f = new int[d];
        g = new int[d];
        h = new float[d];
        i = -1;
        j = -1;
        k = false;
        b = b1;
        c = c1;
    }

    public final float a(g g1)
    {
        if (e == g1)
        {
            e = null;
        }
        if (i != -1)
        {
            int l = i;
            int i1 = 0;
            int j1 = -1;
            while (l != -1 && i1 < a) 
            {
                int k1 = f[l];
                if (k1 == g1.a)
                {
                    if (l == i)
                    {
                        i = g[l];
                    } else
                    {
                        g[j1] = g[l];
                    }
                    c.c[k1].b(b);
                    a = a - 1;
                    f[l] = -1;
                    if (k)
                    {
                        j = l;
                    }
                    return h[l];
                }
                k1 = g[l];
                i1++;
                j1 = l;
                l = k1;
            }
        }
        return 0.0F;
    }

    final g a(int l)
    {
        int j1 = i;
        for (int i1 = 0; j1 != -1 && i1 < a; i1++)
        {
            if (i1 == l)
            {
                return c.c[f[j1]];
            }
            j1 = g[j1];
        }

        return null;
    }

    public final void a()
    {
        i = -1;
        j = -1;
        k = false;
        a = 0;
    }

    void a(float f1)
    {
        int i1 = i;
        for (int l = 0; i1 != -1 && l < a; l++)
        {
            float af[] = h;
            af[i1] = af[i1] / f1;
            i1 = g[i1];
        }

    }

    void a(b b1)
    {
        int i1 = i;
        for (int l = 0; i1 != -1 && l < a; l++)
        {
            c.c[f[i1]].a(b1);
            i1 = g[i1];
        }

    }

    void a(b b1, b b2)
    {
        int i1 = i;
        for (int l = 0; i1 != -1 && l < a;)
        {
            if (f[i1] == b2.a.a)
            {
                float f1 = h[i1];
                a(b2.a);
                a a1 = b2.d;
                i1 = a1.i;
                for (l = 0; i1 != -1 && l < a1.a; l++)
                {
                    b(c.c[a1.f[i1]], a1.h[i1] * f1);
                    i1 = a1.g[i1];
                }

                b1.b = b1.b + b2.b * f1;
                b2.a.b(b1);
                i1 = i;
                l = 0;
            } else
            {
                i1 = g[i1];
                l++;
            }
        }

    }

    void a(b b1, b ab[])
    {
        int i1 = i;
        for (int l = 0; i1 != -1 && l < a;)
        {
            Object obj = c.c[f[i1]];
            if (((g) (obj)).b != -1)
            {
                float f1 = h[i1];
                a(((g) (obj)));
                obj = ab[((g) (obj)).b];
                if (!((b) (obj)).e)
                {
                    a a1 = ((b) (obj)).d;
                    i1 = a1.i;
                    for (l = 0; i1 != -1 && l < a1.a; l++)
                    {
                        b(c.c[a1.f[i1]], a1.h[i1] * f1);
                        i1 = a1.g[i1];
                    }

                }
                b1.b = b1.b + ((b) (obj)).b * f1;
                ((b) (obj)).a.b(b1);
                i1 = i;
                l = 0;
            } else
            {
                i1 = g[i1];
                l++;
            }
        }

    }

    public final void a(g g1, float f1)
    {
        if (f1 != 0.0F) goto _L2; else goto _L1
_L1:
        a(g1);
_L4:
        return;
_L2:
        if (i != -1)
        {
            break; /* Loop/switch isn't completed */
        }
        i = 0;
        h[i] = f1;
        f[i] = g1.a;
        g[i] = -1;
        a = a + 1;
        if (!k)
        {
            j = j + 1;
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        int l;
        int j1;
        l = i;
        int i1 = 0;
        int k1 = -1;
        for (; l != -1 && i1 < a; i1++)
        {
            if (f[l] == g1.a)
            {
                h[l] = f1;
                return;
            }
            if (f[l] < g1.a)
            {
                k1 = l;
            }
            l = g[l];
        }

        l = j + 1;
        if (k)
        {
            if (f[j] == -1)
            {
                l = j;
            } else
            {
                l = f.length;
            }
        }
        i1 = l;
        if (l < f.length) goto _L6; else goto _L5
_L5:
        i1 = l;
        if (a >= f.length) goto _L6; else goto _L7
_L7:
        j1 = 0;
_L8:
        i1 = l;
        if (j1 < f.length)
        {
            if (f[j1] != -1)
            {
                break MISSING_BLOCK_LABEL_439;
            }
            i1 = j1;
        }
_L6:
        l = i1;
        if (i1 >= f.length)
        {
            l = f.length;
            d = d * 2;
            k = false;
            j = l - 1;
            h = Arrays.copyOf(h, d);
            f = Arrays.copyOf(f, d);
            g = Arrays.copyOf(g, d);
        }
        f[l] = g1.a;
        h[l] = f1;
        if (k1 != -1)
        {
            g[l] = g[k1];
            g[k1] = l;
        } else
        {
            g[l] = i;
            i = l;
        }
        a = a + 1;
        if (!k)
        {
            j = j + 1;
        }
        if (a >= f.length)
        {
            k = true;
            return;
        }
          goto _L4
        j1++;
          goto _L8
    }

    final float b(int l)
    {
        int j1 = i;
        for (int i1 = 0; j1 != -1 && i1 < a; i1++)
        {
            if (i1 == l)
            {
                return h[j1];
            }
            j1 = g[j1];
        }

        return 0.0F;
    }

    void b()
    {
        int i1 = i;
        for (int l = 0; i1 != -1 && l < a; l++)
        {
            float af[] = h;
            af[i1] = af[i1] * -1F;
            i1 = g[i1];
        }

    }

    public final void b(g g1, float f1)
    {
        if (f1 != 0.0F) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (i != -1)
        {
            break; /* Loop/switch isn't completed */
        }
        i = 0;
        h[i] = f1;
        f[i] = g1.a;
        g[i] = -1;
        a = a + 1;
        if (!k)
        {
            j = j + 1;
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        int l;
        int i1;
        int i2;
        l = i;
        i1 = 0;
        i2 = -1;
_L6:
        if (l == -1 || i1 >= a) goto _L5; else goto _L4
_L4:
label0:
        {
            int k1 = f[l];
            if (k1 != g1.a)
            {
                break label0;
            }
            g1 = h;
            g1[l] = g1[l] + f1;
            if (h[l] == 0.0F)
            {
                if (l == i)
                {
                    i = g[l];
                } else
                {
                    g[i2] = g[l];
                }
                c.c[k1].b(b);
                if (k)
                {
                    j = l;
                }
                a = a - 1;
                return;
            }
        }
          goto _L1
        if (f[l] < g1.a)
        {
            i2 = l;
        }
        l = g[l];
        i1++;
          goto _L6
_L5:
        int l1;
        l = j + 1;
        int j1;
        if (k)
        {
            if (f[j] == -1)
            {
                l = j;
            } else
            {
                l = f.length;
            }
        }
        j1 = l;
        if (l < f.length) goto _L8; else goto _L7
_L7:
        j1 = l;
        if (a >= f.length) goto _L8; else goto _L9
_L9:
        l1 = 0;
_L10:
        j1 = l;
        if (l1 < f.length)
        {
            if (f[l1] != -1)
            {
                break MISSING_BLOCK_LABEL_538;
            }
            j1 = l1;
        }
_L8:
        l = j1;
        if (j1 >= f.length)
        {
            l = f.length;
            d = d * 2;
            k = false;
            j = l - 1;
            h = Arrays.copyOf(h, d);
            f = Arrays.copyOf(f, d);
            g = Arrays.copyOf(g, d);
        }
        f[l] = g1.a;
        h[l] = f1;
        if (i2 != -1)
        {
            g[l] = g[i2];
            g[i2] = l;
        } else
        {
            g[l] = i;
            i = l;
        }
        a = a + 1;
        if (!k)
        {
            j = j + 1;
        }
        if (j >= f.length)
        {
            k = true;
            j = f.length - 1;
            return;
        }
          goto _L1
        l1++;
          goto _L10
    }

    final boolean b(g g1)
    {
        if (i != -1)
        {
            int i1 = i;
            int l = 0;
            while (i1 != -1 && l < a) 
            {
                if (f[i1] == g1.a)
                {
                    return true;
                }
                i1 = g[i1];
                l++;
            }
        }
        return false;
    }

    public final float c(g g1)
    {
        int i1 = i;
        for (int l = 0; i1 != -1 && l < a; l++)
        {
            if (f[i1] == g1.a)
            {
                return h[i1];
            }
            i1 = g[i1];
        }

        return 0.0F;
    }

    g c()
    {
        g g2 = null;
        int i1 = i;
        int l = 0;
        g g1 = null;
        while (i1 != -1 && l < a) 
        {
            float f1 = h[i1];
            if (f1 < 0.0F)
            {
                if (f1 > -0.001F)
                {
                    h[i1] = 0.0F;
                    f1 = 0.0F;
                }
            } else
            if (f1 < 0.001F)
            {
                h[i1] = 0.0F;
                f1 = 0.0F;
            }
            if (f1 != 0.0F)
            {
                g g3 = c.c[f[i1]];
                if (g3.f == g.a.a)
                {
                    if (f1 < 0.0F)
                    {
                        return g3;
                    }
                    if (g1 == null)
                    {
                        g1 = g3;
                    }
                } else
                if (f1 < 0.0F && (g2 == null || g3.c < g2.c))
                {
                    g2 = g3;
                }
            }
            i1 = g[i1];
            l++;
        }
        if (g1 != null)
        {
            return g1;
        } else
        {
            return g2;
        }
    }

    public String toString()
    {
        String s = "";
        int i1 = i;
        for (int l = 0; i1 != -1 && l < a; l++)
        {
            s = (new StringBuilder()).append(s).append(" -> ").toString();
            s = (new StringBuilder()).append(s).append(h[i1]).append(" : ").toString();
            s = (new StringBuilder()).append(s).append(c.c[f[i1]]).toString();
            i1 = g[i1];
        }

        return s;
    }
}
