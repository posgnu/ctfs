// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a;

import java.util.ArrayList;

// Referenced classes of package android.support.constraint.a:
//            e, c, g, b, 
//            a

public class d
{

    ArrayList a;

    public d()
    {
        a = new ArrayList();
    }

    private void b(e e1)
    {
        a.clear();
        int i = 1;
        while (i < e1.b) 
        {
            g g1 = e1.c.c[i];
            for (int j = 0; j < 6; j++)
            {
                g1.e[j] = 0.0F;
            }

            g1.e[g1.c] = 1.0F;
            if (g1.f == g.a.d)
            {
                a.add(g1);
            }
            i++;
        }
    }

    g a()
    {
        int i1 = a.size();
        int l = 0;
        int j = 0;
        g g1 = null;
        for (; l < i1; l++)
        {
            g g3 = (g)a.get(l);
            for (int i = 5; i >= 0; i--)
            {
                float f = g3.e[i];
                int k = j;
                g g2 = g1;
                if (g1 == null)
                {
                    k = j;
                    g2 = g1;
                    if (f < 0.0F)
                    {
                        k = j;
                        g2 = g1;
                        if (i >= j)
                        {
                            k = i;
                            g2 = g3;
                        }
                    }
                }
                j = k;
                g1 = g2;
                if (f <= 0.0F)
                {
                    continue;
                }
                j = k;
                g1 = g2;
                if (i > k)
                {
                    j = i;
                    g1 = null;
                }
            }

        }

        return g1;
    }

    void a(e e1)
    {
        b(e1);
        int l = a.size();
        for (int i = 0; i < l; i++)
        {
            g g1 = (g)a.get(i);
            if (g1.b == -1)
            {
                continue;
            }
            a a1 = e1.a(g1.b).d;
            int i1 = a1.a;
            int j = 0;
            while (j < i1) 
            {
                g g2 = a1.a(j);
                if (g2 != null)
                {
                    float f = a1.b(j);
                    for (int k = 0; k < 6; k++)
                    {
                        float af[] = g2.e;
                        af[k] = af[k] + g1.e[k] * f;
                    }

                    if (!a.contains(g2))
                    {
                        a.add(g2);
                    }
                }
                j++;
            }
            g1.a();
        }

    }

    public String toString()
    {
        int j = a.size();
        String s = "Goal: ";
        for (int i = 0; i < j; i++)
        {
            g g1 = (g)a.get(i);
            s = (new StringBuilder()).append(s).append(g1.b()).toString();
        }

        return s;
    }
}
