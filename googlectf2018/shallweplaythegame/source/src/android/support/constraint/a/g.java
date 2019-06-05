// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a;

import java.util.Arrays;

// Referenced classes of package android.support.constraint.a:
//            b

public class g
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        private static final a f[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(android/support/constraint/a/g$a, s);
        }

        public static a[] values()
        {
            return (a[])f.clone();
        }

        static 
        {
            a = new a("UNRESTRICTED", 0);
            b = new a("CONSTANT", 1);
            c = new a("SLACK", 2);
            d = new a("ERROR", 3);
            e = new a("UNKNOWN", 4);
            f = (new a[] {
                a, b, c, d, e
            });
        }

        private a(String s, int k)
        {
            super(s, k);
        }
    }


    private static int i = 1;
    public int a;
    int b;
    public int c;
    public float d;
    float e[];
    a f;
    b g[];
    int h;
    private String j;

    public g(a a1)
    {
        a = -1;
        b = -1;
        c = 0;
        e = new float[6];
        g = new b[8];
        h = 0;
        f = a1;
    }

    void a()
    {
        for (int k = 0; k < 6; k++)
        {
            e[k] = 0.0F;
        }

    }

    void a(b b1)
    {
        for (int k = 0; k < h; k++)
        {
            if (g[k] == b1)
            {
                return;
            }
        }

        if (h >= g.length)
        {
            g = (b[])Arrays.copyOf(g, g.length * 2);
        }
        g[h] = b1;
        h = h + 1;
    }

    public void a(a a1)
    {
        f = a1;
    }

    String b()
    {
        String s = (new StringBuilder()).append(this).append("[").toString();
        int k = 0;
        while (k < e.length) 
        {
            s = (new StringBuilder()).append(s).append(e[k]).toString();
            if (k < e.length - 1)
            {
                s = (new StringBuilder()).append(s).append(", ").toString();
            } else
            {
                s = (new StringBuilder()).append(s).append("] ").toString();
            }
            k++;
        }
        return s;
    }

    void b(b b1)
    {
        int l = 0;
        int k = 0;
        do
        {
label0:
            {
                if (k < h)
                {
                    if (g[k] != b1)
                    {
                        break label0;
                    }
                    for (; l < h - k - 1; l++)
                    {
                        g[k + l] = g[k + l + 1];
                    }

                    h = h - 1;
                }
                return;
            }
            k++;
        } while (true);
    }

    public void c()
    {
        j = null;
        f = a.e;
        c = 0;
        a = -1;
        b = -1;
        d = 0.0F;
        h = 0;
    }

    public String toString()
    {
        return (new StringBuilder()).append("").append(j).toString();
    }

}
