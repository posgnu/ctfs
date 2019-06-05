// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;

import android.support.constraint.a.c;
import android.support.constraint.a.e;
import android.support.constraint.a.g;
import java.util.ArrayList;

// Referenced classes of package android.support.constraint.a.a:
//            a, c

public class b
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        private static final a e[];

        public static a valueOf(String s1)
        {
            return (a)Enum.valueOf(android/support/constraint/a/a/b$a, s1);
        }

        public static a[] values()
        {
            return (a[])e.clone();
        }

        static 
        {
            a = new a("FIXED", 0);
            b = new a("WRAP_CONTENT", 1);
            c = new a("MATCH_CONSTRAINT", 2);
            d = new a("MATCH_PARENT", 3);
            e = (new a[] {
                a, b, c, d
            });
        }

        private a(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    public static float D = 0.5F;
    int A;
    protected int B;
    protected int C;
    float E;
    float F;
    a G;
    a H;
    int I;
    int J;
    int K;
    int L;
    boolean M;
    boolean N;
    boolean O;
    boolean P;
    boolean Q;
    boolean R;
    int S;
    int T;
    boolean U;
    boolean V;
    float W;
    float X;
    b Y;
    b Z;
    public int a;
    private int aa;
    private int ab;
    private int ac;
    private int ad;
    private int ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private Object ak;
    private int al;
    private int am;
    private String an;
    private String ao;
    public int b;
    int c;
    int d;
    int e;
    int f;
    int g;
    int h;
    android.support.constraint.a.a.a i;
    android.support.constraint.a.a.a j;
    android.support.constraint.a.a.a k;
    android.support.constraint.a.a.a l;
    android.support.constraint.a.a.a m;
    android.support.constraint.a.a.a n;
    android.support.constraint.a.a.a o;
    android.support.constraint.a.a.a p;
    protected ArrayList q;
    b r;
    int s;
    int t;
    protected float u;
    protected int v;
    protected int w;
    protected int x;
    protected int y;
    protected int z;

    public b()
    {
        a = -1;
        b = -1;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        i = new android.support.constraint.a.a.a(this, a.c.b);
        j = new android.support.constraint.a.a.a(this, android.support.constraint.a.a.a.c.c);
        k = new android.support.constraint.a.a.a(this, a.c.d);
        l = new android.support.constraint.a.a.a(this, android.support.constraint.a.a.a.c.e);
        m = new android.support.constraint.a.a.a(this, a.c.f);
        n = new android.support.constraint.a.a.a(this, a.c.h);
        o = new android.support.constraint.a.a.a(this, a.c.i);
        p = new android.support.constraint.a.a.a(this, android.support.constraint.a.a.a.c.g);
        q = new ArrayList();
        r = null;
        s = 0;
        t = 0;
        u = 0.0F;
        v = -1;
        aa = 0;
        ab = 0;
        ac = 0;
        ad = 0;
        w = 0;
        x = 0;
        ae = 0;
        af = 0;
        ag = 0;
        ah = 0;
        y = 0;
        z = 0;
        A = 0;
        E = D;
        F = D;
        G = a.a;
        H = a.a;
        al = 0;
        am = 0;
        an = null;
        ao = null;
        S = 0;
        T = 0;
        W = 0.0F;
        X = 0.0F;
        Y = null;
        Z = null;
        D();
    }

    private void D()
    {
        q.add(i);
        q.add(j);
        q.add(k);
        q.add(l);
        q.add(n);
        q.add(o);
        q.add(m);
    }

    private void a(e e1, boolean flag, boolean flag1, android.support.constraint.a.a.a a1, android.support.constraint.a.a.a a2, int i1, int j1, 
            int k1, int l1, float f1, boolean flag2, boolean flag3, int i2, int j2, 
            int k2)
    {
        g g1;
        g g2;
        g g3;
        g g4;
        int l2;
        int i3;
        g3 = e1.a(a1);
        g1 = e1.a(a2);
        g4 = e1.a(a1.f());
        g2 = e1.a(a2.f());
        l2 = a1.d();
        i3 = a2.d();
        if (am == 8)
        {
            k1 = 0;
            flag1 = true;
        }
        if (g4 != null || g2 != null) goto _L2; else goto _L1
_L1:
        e1.a(e1.b().b(g3, i1));
        if (flag2) goto _L4; else goto _L3
_L3:
        if (!flag) goto _L6; else goto _L5
_L5:
        e1.a(android.support.constraint.a.e.a(e1, g1, g3, l1, true));
_L4:
        return;
_L6:
        if (flag1)
        {
            e1.a(android.support.constraint.a.e.a(e1, g1, g3, k1, false));
            return;
        } else
        {
            e1.a(e1.b().b(g1, j1));
            return;
        }
_L2:
        if (g4 == null || g2 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        e1.a(e1.b().a(g3, g4, l2));
        if (flag)
        {
            e1.a(android.support.constraint.a.e.a(e1, g1, g3, l1, true));
            return;
        }
        if (!flag2)
        {
            if (flag1)
            {
                e1.a(e1.b().a(g1, g3, k1));
                return;
            } else
            {
                e1.a(e1.b().b(g1, j1));
                return;
            }
        }
        if (true) goto _L4; else goto _L7
_L7:
        if (g4 != null || g2 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        e1.a(e1.b().a(g1, g2, i3 * -1));
        if (flag)
        {
            e1.a(android.support.constraint.a.e.a(e1, g1, g3, l1, true));
            return;
        }
        if (!flag2)
        {
            if (flag1)
            {
                e1.a(e1.b().a(g1, g3, k1));
                return;
            } else
            {
                e1.a(e1.b().b(g3, i1));
                return;
            }
        }
        if (true) goto _L4; else goto _L8
_L8:
        if (!flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            e1.a(android.support.constraint.a.e.a(e1, g1, g3, l1, true));
        } else
        {
            e1.a(e1.b().a(g1, g3, k1));
        }
        if (a1.e() != a2.e())
        {
            if (a1.e() == a.b.b)
            {
                e1.a(e1.b().a(g3, g4, l2));
                a1 = e1.c();
                a2 = e1.b();
                a2.b(g1, g2, a1, i3 * -1);
                e1.a(a2);
                return;
            } else
            {
                a1 = e1.c();
                a2 = e1.b();
                a2.a(g3, g4, a1, l2);
                e1.a(a2);
                e1.a(e1.b().a(g1, g2, i3 * -1));
                return;
            }
        }
        if (g4 == g2)
        {
            e1.a(android.support.constraint.a.e.a(e1, g3, g4, 0, 0.5F, g2, g1, 0, true));
            return;
        }
        if (!flag3)
        {
            if (a1.g() != a.a.b)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            e1.a(android.support.constraint.a.e.b(e1, g3, g4, l2, flag));
            if (a2.g() != a.a.b)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            e1.a(android.support.constraint.a.e.c(e1, g1, g2, i3 * -1, flag));
            e1.a(android.support.constraint.a.e.a(e1, g3, g4, l2, f1, g2, g1, i3, false));
            return;
        }
        if (true) goto _L4; else goto _L9
_L9:
        if (flag2)
        {
            e1.a(g3, g4, l2, 3);
            e1.b(g1, g2, i3 * -1, 3);
            e1.a(android.support.constraint.a.e.a(e1, g3, g4, l2, f1, g2, g1, i3, true));
            return;
        }
        if (flag3) goto _L4; else goto _L10
_L10:
        if (i2 != 1) goto _L12; else goto _L11
_L11:
        i1 = k1;
        if (j2 > k1)
        {
            i1 = j2;
        }
        if (k2 <= 0) goto _L14; else goto _L13
_L13:
        if (k2 >= i1) goto _L16; else goto _L15
_L15:
        e1.c(g1, g3, k2, 3);
        e1.a(g3, g4, l2, 2);
        e1.b(g1, g2, -i3, 2);
        e1.a(g3, g4, l2, f1, g2, g1, i3, 4);
        return;
_L16:
        e1.b(g1, g3, k2, 3);
_L14:
        k2 = i1;
        if (true) goto _L15; else goto _L12
_L12:
        if (j2 == 0 && k2 == 0)
        {
            e1.a(e1.b().a(g3, g4, l2));
            e1.a(e1.b().a(g1, g2, i3 * -1));
            return;
        }
        if (k2 > 0)
        {
            e1.b(g1, g3, k2, 3);
        }
        e1.a(g3, g4, l2, 2);
        e1.b(g1, g2, -i3, 2);
        e1.a(g3, g4, l2, f1, g2, g1, i3, 4);
        return;
    }

    public void A()
    {
        b b1 = c();
        if (b1 == null || !(b1 instanceof android.support.constraint.a.a.c) || !((android.support.constraint.a.a.c)c()).G())
        {
            int j1 = q.size();
            int i1 = 0;
            while (i1 < j1) 
            {
                ((android.support.constraint.a.a.a)q.get(i1)).i();
                i1++;
            }
        }
    }

    public a B()
    {
        return G;
    }

    public a C()
    {
        return H;
    }

    public android.support.constraint.a.a.a a(a.c c1)
    {
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[android.support.constraint.a.a.a.c.values().length];
                try
                {
                    a[a.c.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[android.support.constraint.a.a.a.c.c.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[a.c.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[android.support.constraint.a.a.a.c.e.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[a.c.f.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[a.c.h.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[a.c.i.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[android.support.constraint.a.a.a.c.g.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[c1.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return i;

        case 2: // '\002'
            return j;

        case 3: // '\003'
            return k;

        case 4: // '\004'
            return l;

        case 5: // '\005'
            return m;

        case 6: // '\006'
            return n;

        case 7: // '\007'
            return o;

        case 8: // '\b'
            return p;
        }
    }

    public void a()
    {
        i.i();
        j.i();
        k.i();
        l.i();
        m.i();
        n.i();
        o.i();
        p.i();
        r = null;
        s = 0;
        t = 0;
        u = 0.0F;
        v = -1;
        w = 0;
        x = 0;
        ae = 0;
        af = 0;
        ag = 0;
        ah = 0;
        y = 0;
        z = 0;
        A = 0;
        B = 0;
        C = 0;
        ai = 0;
        aj = 0;
        E = D;
        F = D;
        G = a.a;
        H = a.a;
        ak = null;
        al = 0;
        am = 0;
        an = null;
        ao = null;
        Q = false;
        R = false;
        S = 0;
        T = 0;
        U = false;
        V = false;
        W = 0.0F;
        X = 0.0F;
        a = -1;
        b = -1;
    }

    public void a(float f1)
    {
        E = f1;
    }

    public void a(int i1)
    {
        am = i1;
    }

    public void a(int i1, int j1)
    {
        w = i1;
        x = j1;
    }

    public void a(int i1, int j1, int k1)
    {
        c = i1;
        e = j1;
        f = k1;
    }

    public void a(int i1, int j1, int k1, int l1)
    {
        int i2 = k1 - i1;
        k1 = l1 - j1;
        w = i1;
        x = j1;
        if (am == 8)
        {
            s = 0;
            t = 0;
        } else
        {
            i1 = i2;
            if (G == a.a)
            {
                i1 = i2;
                if (i2 < s)
                {
                    i1 = s;
                }
            }
            j1 = k1;
            if (H == a.a)
            {
                j1 = k1;
                if (k1 < t)
                {
                    j1 = t;
                }
            }
            s = i1;
            t = j1;
            if (t < C)
            {
                t = C;
            }
            if (s < B)
            {
                s = B;
                return;
            }
        }
    }

    public void a(a.c c1, b b1, a.c c2, int i1, int j1)
    {
        a(c1).a(b1.a(c2), i1, j1, a.b.b, 0, true);
    }

    public void a(a a1)
    {
        G = a1;
        if (G == a.b)
        {
            d(ai);
        }
    }

    public void a(b b1)
    {
        r = b1;
    }

    public void a(c c1)
    {
        i.a(c1);
        j.a(c1);
        k.a(c1);
        l.a(c1);
        m.a(c1);
        p.a(c1);
        n.a(c1);
        o.a(c1);
    }

    public void a(e e1, int i1)
    {
        float f1;
        g g1;
        g g2;
        g g3;
        g g4;
        Object obj;
        Object obj1;
        Object obj2;
        g g5;
        g g6;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        if (i1 == 0x7fffffff || i.g == i1)
        {
            g1 = e1.a(i);
        } else
        {
            g1 = null;
        }
        if (i1 == 0x7fffffff || k.g == i1)
        {
            g2 = e1.a(k);
        } else
        {
            g2 = null;
        }
        if (i1 == 0x7fffffff || j.g == i1)
        {
            g3 = e1.a(j);
        } else
        {
            g3 = null;
        }
        if (i1 == 0x7fffffff || l.g == i1)
        {
            g4 = e1.a(l);
        } else
        {
            g4 = null;
        }
        if (i1 == 0x7fffffff || m.g == i1)
        {
            obj = e1.a(m);
        } else
        {
            obj = null;
        }
        if (r == null) goto _L2; else goto _L1
_L1:
        if (i.c != null && i.c.c == i || k.c != null && k.c.c == k)
        {
            ((android.support.constraint.a.a.c)r).a(this, 0);
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (j.c != null && j.c.c == j || l.c != null && l.c.c == l)
        {
            ((android.support.constraint.a.a.c)r).a(this, 1);
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (r.B() == a.b && !flag1)
        {
            if (i.c == null || i.c.a != r)
            {
                obj1 = e1.a(r.i);
                obj2 = e1.b();
                ((android.support.constraint.a.b) (obj2)).a(g1, ((g) (obj1)), e1.c(), 0);
                e1.a(((android.support.constraint.a.b) (obj2)));
            } else
            if (i.c != null && i.c.a == r)
            {
                i.a(a.a.b);
            }
            if (k.c == null || k.c.a != r)
            {
                obj1 = e1.a(r.k);
                obj2 = e1.b();
                ((android.support.constraint.a.b) (obj2)).a(((g) (obj1)), g2, e1.c(), 0);
                e1.a(((android.support.constraint.a.b) (obj2)));
            } else
            if (k.c != null && k.c.a == r)
            {
                k.a(a.a.b);
            }
        }
        if (r.C() != a.b || flag2) goto _L4; else goto _L3
_L3:
        if (j.c == null || j.c.a != r)
        {
            obj1 = e1.a(r.j);
            obj2 = e1.b();
            ((android.support.constraint.a.b) (obj2)).a(g3, ((g) (obj1)), e1.c(), 0);
            e1.a(((android.support.constraint.a.b) (obj2)));
        } else
        if (j.c != null && j.c.a == r)
        {
            j.a(a.a.b);
        }
        if (l.c != null && l.c.a == r) goto _L6; else goto _L5
_L5:
        obj1 = e1.a(r.l);
        obj2 = e1.b();
        ((android.support.constraint.a.b) (obj2)).a(((g) (obj1)), g4, e1.c(), 0);
        e1.a(((android.support.constraint.a.b) (obj2)));
        flag3 = flag2;
        flag4 = flag1;
_L20:
        k1 = s;
        j1 = k1;
        if (k1 < B)
        {
            j1 = B;
        }
        l1 = t;
        k1 = l1;
        if (l1 < C)
        {
            k1 = C;
        }
        if (G != android.support.constraint.a.a.a.c)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (H != android.support.constraint.a.a.a.c)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (!flag1 && i != null && k != null && (i.c == null || k.c == null))
        {
            flag1 = true;
        }
        if (!flag2 && j != null && l != null && (j.c == null || l.c == null) && (A == 0 || m != null && (j.c == null || m.c == null)))
        {
            flag2 = true;
        }
        flag = false;
        j2 = v;
        f1 = u;
        i2 = j2;
        l1 = ((flag) ? 1 : 0);
        if (u <= 0.0F) goto _L8; else goto _L7
_L7:
        i2 = j2;
        l1 = ((flag) ? 1 : 0);
        if (am == 8) goto _L8; else goto _L9
_L9:
        if (G != android.support.constraint.a.a.a.c || H != android.support.constraint.a.a.a.c) goto _L11; else goto _L10
_L10:
        flag = true;
        if (!flag1 || flag2) goto _L13; else goto _L12
_L12:
        l1 = 0;
        i2 = 1;
        j2 = j1;
        flag5 = flag1;
        flag1 = flag2;
        j1 = k1;
        k1 = j2;
        flag2 = flag5;
_L18:
        if (i2 != 0 && (l1 == 0 || l1 == -1))
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        if (G == a.b && (this instanceof android.support.constraint.a.a.c))
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        if (a != 2 && (i1 == 0x7fffffff || i.g == i1 && k.g == i1))
        {
            if (flag5 && i.c != null && k.c != null)
            {
                obj1 = e1.a(i);
                obj2 = e1.a(k);
                g5 = e1.a(i.f());
                g6 = e1.a(k.f());
                e1.a(((g) (obj1)), g5, i.d(), 3);
                e1.b(((g) (obj2)), g6, k.d() * -1, 3);
                if (!flag4)
                {
                    e1.a(((g) (obj1)), g5, i.d(), E, g6, ((g) (obj2)), k.d(), 4);
                }
            } else
            {
                a(e1, flag6, flag2, i, k, w, w + k1, k1, B, E, flag5, flag4, c, e, f);
            }
        }
        if (b != 2) goto _L15; else goto _L14
_L14:
        return;
_L6:
        if (l.c != null && l.c.a == r)
        {
            l.a(a.a.b);
        }
_L4:
        flag4 = flag1;
        flag3 = flag2;
        continue; /* Loop/switch isn't completed */
_L13:
        i2 = j2;
        l1 = ((flag) ? 1 : 0);
        if (!flag1)
        {
            i2 = j2;
            l1 = ((flag) ? 1 : 0);
            if (flag2)
            {
                i2 = 1;
                l1 = ((flag) ? 1 : 0);
                if (v == -1)
                {
                    f1 = 1.0F / f1;
                    j2 = 1;
                    i2 = 1;
                    flag5 = flag2;
                    l1 = k1;
                    flag2 = flag1;
                    k1 = j1;
                    j1 = l1;
                    l1 = j2;
                    flag1 = flag5;
                    continue; /* Loop/switch isn't completed */
                }
            }
        }
          goto _L8
_L11:
        if (G == android.support.constraint.a.a.a.c)
        {
            j2 = (int)((float)t * f1);
            l1 = 0;
            i2 = 0;
            flag1 = flag2;
            j1 = k1;
            flag2 = true;
            k1 = j2;
            continue; /* Loop/switch isn't completed */
        }
        i2 = j2;
        l1 = ((flag) ? 1 : 0);
        if (H == android.support.constraint.a.a.a.c)
        {
            if (v == -1)
            {
                f1 = 1.0F / f1;
            }
            j2 = (int)((float)s * f1);
            l1 = 1;
            i2 = 0;
            flag5 = true;
            flag2 = flag1;
            k1 = j1;
            j1 = j2;
            flag1 = flag5;
            continue; /* Loop/switch isn't completed */
        }
          goto _L8
_L15:
        if (H == a.b && (this instanceof android.support.constraint.a.a.c))
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (i2 != 0 && (l1 == 1 || l1 == -1))
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        if (A > 0)
        {
            obj1 = l;
            if (i1 == 0x7fffffff || l.g == i1 && m.g == i1)
            {
                e1.c(((g) (obj)), g3, w(), 5);
            }
            if (m.c != null)
            {
                k1 = A;
                obj = m;
            } else
            {
                k1 = j1;
                obj = obj1;
            }
            if (i1 == 0x7fffffff || j.g == i1 && ((android.support.constraint.a.a.a) (obj)).g == i1)
            {
                if (flag4 && j.c != null && l.c != null)
                {
                    obj = e1.a(j);
                    obj1 = e1.a(l);
                    obj2 = e1.a(j.f());
                    g5 = e1.a(l.f());
                    e1.a(((g) (obj)), ((g) (obj2)), j.d(), 3);
                    e1.b(((g) (obj1)), g5, l.d() * -1, 3);
                    if (!flag3)
                    {
                        e1.a(((g) (obj)), ((g) (obj2)), j.d(), F, g5, ((g) (obj1)), l.d(), 4);
                    }
                } else
                {
                    a(e1, flag2, flag1, j, ((android.support.constraint.a.a.a) (obj)), x, x + k1, k1, C, F, flag4, flag3, d, g, h);
                    e1.c(g4, g3, j1, 5);
                }
            }
        } else
        if (i1 == 0x7fffffff || j.g == i1 && l.g == i1)
        {
            if (flag4 && j.c != null && l.c != null)
            {
                obj = e1.a(j);
                obj1 = e1.a(l);
                obj2 = e1.a(j.f());
                g5 = e1.a(l.f());
                e1.a(((g) (obj)), ((g) (obj2)), j.d(), 3);
                e1.b(((g) (obj1)), g5, l.d() * -1, 3);
                if (!flag3)
                {
                    e1.a(((g) (obj)), ((g) (obj2)), j.d(), F, g5, ((g) (obj1)), l.d(), 4);
                }
            } else
            {
                a(e1, flag2, flag1, j, l, x, x + j1, j1, C, F, flag4, flag3, d, g, h);
            }
        }
        if (i2 == 0) goto _L14; else goto _L16
_L16:
        obj = e1.b();
        if (i1 != 0x7fffffff && (i.g != i1 || k.g != i1)) goto _L14; else goto _L17
_L17:
        if (l1 == 0)
        {
            e1.a(((android.support.constraint.a.b) (obj)).a(g2, g1, g4, g3, f1));
            return;
        }
        if (l1 == 1)
        {
            e1.a(((android.support.constraint.a.b) (obj)).a(g4, g3, g2, g1, f1));
            return;
        }
        if (e > 0)
        {
            e1.a(g2, g1, e, 3);
        }
        if (g > 0)
        {
            e1.a(g4, g3, g, 3);
        }
        ((android.support.constraint.a.b) (obj)).a(g2, g1, g4, g3, f1);
        g1 = e1.d();
        g2 = e1.d();
        g1.c = 4;
        g2.c = 4;
        ((android.support.constraint.a.b) (obj)).a(g1, g2);
        e1.a(((android.support.constraint.a.b) (obj)));
        return;
_L8:
        j2 = l1;
        flag5 = flag2;
        l1 = k1;
        flag2 = flag1;
        k1 = j1;
        j1 = l1;
        l1 = i2;
        i2 = j2;
        flag1 = flag5;
        if (true) goto _L18; else goto _L2
_L2:
        flag3 = false;
        flag4 = false;
        if (true) goto _L20; else goto _L19
_L19:
    }

    public void a(Object obj)
    {
        ak = obj;
    }

    public void a(String s1)
    {
        int k1;
        boolean flag;
        flag = false;
        k1 = 0;
        if (s1 != null && s1.length() != 0) goto _L2; else goto _L1
_L1:
        u = 0.0F;
_L7:
        return;
_L2:
        byte byte0 = -1;
        int l1 = s1.length();
        int i2 = s1.indexOf(',');
        int j1 = ((flag) ? 1 : 0);
        int i1 = byte0;
        if (i2 > 0)
        {
            j1 = ((flag) ? 1 : 0);
            i1 = byte0;
            if (i2 < l1 - 1)
            {
                String s2 = s1.substring(0, i2);
                float f1;
                float f2;
                if (s2.equalsIgnoreCase("W"))
                {
                    i1 = k1;
                } else
                if (s2.equalsIgnoreCase("H"))
                {
                    i1 = 1;
                } else
                {
                    i1 = -1;
                }
                j1 = i2 + 1;
            }
        }
        k1 = s1.indexOf(':');
        if (k1 < 0 || k1 >= l1 - 1) goto _L4; else goto _L3
_L3:
        s2 = s1.substring(j1, k1);
        s1 = s1.substring(k1 + 1);
        if (s2.length() <= 0 || s1.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        f1 = Float.parseFloat(s2);
        f2 = Float.parseFloat(s1);
        if (f1 <= 0.0F || f2 <= 0.0F)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        if (i1 != 1) goto _L6; else goto _L5
_L5:
        try
        {
            f1 = Math.abs(f2 / f1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            f1 = 0.0F;
        }
_L8:
        if (f1 > 0.0F)
        {
            u = f1;
            v = i1;
            return;
        }
          goto _L7
_L6:
        f1 /= f2;
        f1 = Math.abs(f1);
        break MISSING_BLOCK_LABEL_192;
_L4:
        s1 = s1.substring(j1);
        if (s1.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        try
        {
            f1 = Float.parseFloat(s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            f1 = 0.0F;
        }
          goto _L8
        f1 = 0.0F;
          goto _L8
    }

    public void b(float f1)
    {
        F = f1;
    }

    public void b(int i1)
    {
        w = i1;
    }

    public void b(int i1, int j1)
    {
        y = i1;
        z = j1;
    }

    public void b(int i1, int j1, int k1)
    {
        d = i1;
        g = j1;
        h = k1;
    }

    public void b(a a1)
    {
        H = a1;
        if (H == a.b)
        {
            e(aj);
        }
    }

    public void b(e e1, int i1)
    {
        if (i1 == 0x7fffffff)
        {
            a(e1.b(i), e1.b(j), e1.b(k), e1.b(l));
        } else
        {
            if (i1 == -2)
            {
                a(aa, ab, ac, ad);
                return;
            }
            if (i.g == i1)
            {
                aa = e1.b(i);
            }
            if (j.g == i1)
            {
                ab = e1.b(j);
            }
            if (k.g == i1)
            {
                ac = e1.b(k);
            }
            if (l.g == i1)
            {
                ad = e1.b(l);
                return;
            }
        }
    }

    public boolean b()
    {
        return r == null;
    }

    public b c()
    {
        return r;
    }

    public void c(float f1)
    {
        W = f1;
    }

    public void c(int i1)
    {
        x = i1;
    }

    public void c(int i1, int j1)
    {
        w = i1;
        s = j1 - i1;
        if (s < B)
        {
            s = B;
        }
    }

    public int d()
    {
        return am;
    }

    public void d(float f1)
    {
        X = f1;
    }

    public void d(int i1)
    {
        s = i1;
        if (s < B)
        {
            s = B;
        }
    }

    public void d(int i1, int j1)
    {
        x = i1;
        t = j1 - i1;
        if (t < C)
        {
            t = C;
        }
    }

    public String e()
    {
        return an;
    }

    public void e(int i1)
    {
        t = i1;
        if (t < C)
        {
            t = C;
        }
    }

    public int f()
    {
        return w;
    }

    public void f(int i1)
    {
        if (i1 < 0)
        {
            B = 0;
            return;
        } else
        {
            B = i1;
            return;
        }
    }

    public int g()
    {
        return x;
    }

    public void g(int i1)
    {
        if (i1 < 0)
        {
            C = 0;
            return;
        } else
        {
            C = i1;
            return;
        }
    }

    public int h()
    {
        if (am == 8)
        {
            return 0;
        } else
        {
            return s;
        }
    }

    public void h(int i1)
    {
        ai = i1;
    }

    public int i()
    {
        int i1 = s;
        int j1 = i1;
        if (G == android.support.constraint.a.a.a.c)
        {
            if (c == 1)
            {
                i1 = Math.max(e, i1);
            } else
            if (e > 0)
            {
                i1 = e;
                s = i1;
            } else
            {
                i1 = 0;
            }
            j1 = i1;
            if (f > 0)
            {
                j1 = i1;
                if (f < i1)
                {
                    j1 = f;
                }
            }
        }
        return j1;
    }

    public void i(int i1)
    {
        aj = i1;
    }

    public int j()
    {
        int i1 = t;
        int j1 = i1;
        if (H == android.support.constraint.a.a.a.c)
        {
            if (d == 1)
            {
                i1 = Math.max(g, i1);
            } else
            if (g > 0)
            {
                i1 = g;
                t = i1;
            } else
            {
                i1 = 0;
            }
            j1 = i1;
            if (h > 0)
            {
                j1 = i1;
                if (h < i1)
                {
                    j1 = h;
                }
            }
        }
        return j1;
    }

    public void j(int i1)
    {
        A = i1;
    }

    public int k()
    {
        return ai;
    }

    public void k(int i1)
    {
        S = i1;
    }

    public int l()
    {
        if (am == 8)
        {
            return 0;
        } else
        {
            return t;
        }
    }

    public void l(int i1)
    {
        T = i1;
    }

    public int m()
    {
        return aj;
    }

    public int n()
    {
        return ae + y;
    }

    public int o()
    {
        return af + z;
    }

    public int p()
    {
        return o() + ah;
    }

    public int q()
    {
        return n() + ag;
    }

    protected int r()
    {
        return w + y;
    }

    protected int s()
    {
        return x + z;
    }

    public int t()
    {
        return f() + s;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s1;
        if (ao != null)
        {
            s1 = (new StringBuilder()).append("type: ").append(ao).append(" ").toString();
        } else
        {
            s1 = "";
        }
        stringbuilder = stringbuilder.append(s1);
        if (an != null)
        {
            s1 = (new StringBuilder()).append("id: ").append(an).append(" ").toString();
        } else
        {
            s1 = "";
        }
        return stringbuilder.append(s1).append("(").append(w).append(", ").append(x).append(") - (").append(s).append(" x ").append(t).append(")").append(" wrap: (").append(ai).append(" x ").append(aj).append(")").toString();
    }

    public int u()
    {
        return g() + t;
    }

    public boolean v()
    {
        return A > 0;
    }

    public int w()
    {
        return A;
    }

    public Object x()
    {
        return ak;
    }

    public ArrayList y()
    {
        return q;
    }

    public void z()
    {
        int i1 = w;
        int j1 = x;
        int k1 = w;
        int l1 = s;
        int i2 = x;
        int j2 = t;
        ae = i1;
        af = j1;
        ag = (k1 + l1) - i1;
        ah = (i2 + j2) - j1;
    }

}
