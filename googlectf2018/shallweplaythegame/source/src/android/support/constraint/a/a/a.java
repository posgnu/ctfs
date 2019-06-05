// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;

import android.support.constraint.a.c;
import android.support.constraint.a.g;
import java.util.HashSet;

// Referenced classes of package android.support.constraint.a.a:
//            b, d

public class android.support.constraint.a.a.a
{
    public static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(android/support/constraint/a/a/a$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("RELAXED", 0);
            b = new a("STRICT", 1);
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int k)
        {
            super(s, k);
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        private static final b d[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(android/support/constraint/a/a/a$b, s);
        }

        public static b[] values()
        {
            return (b[])d.clone();
        }

        static 
        {
            a = new b("NONE", 0);
            b = new b("STRONG", 1);
            c = new b("WEAK", 2);
            d = (new b[] {
                a, b, c
            });
        }

        private b(String s, int k)
        {
            super(s, k);
        }
    }

    public static final class c extends Enum
    {

        public static final c a;
        public static final c b;
        public static final c c;
        public static final c d;
        public static final c e;
        public static final c f;
        public static final c g;
        public static final c h;
        public static final c i;
        private static final c j[];

        public static c valueOf(String s)
        {
            return (c)Enum.valueOf(android/support/constraint/a/a/a$c, s);
        }

        public static c[] values()
        {
            return (c[])j.clone();
        }

        static 
        {
            a = new c("NONE", 0);
            b = new c("LEFT", 1);
            c = new c("TOP", 2);
            d = new c("RIGHT", 3);
            e = new c("BOTTOM", 4);
            f = new c("BASELINE", 5);
            g = new c("CENTER", 6);
            h = new c("CENTER_X", 7);
            i = new c("CENTER_Y", 8);
            j = (new c[] {
                a, b, c, d, e, f, g, h, i
            });
        }

        private c(String s, int k)
        {
            super(s, k);
        }
    }


    final android.support.constraint.a.a.b a;
    final c b;
    android.support.constraint.a.a.a c;
    public int d;
    int e;
    g f;
    int g;
    private b h;
    private a i;
    private int j;

    public android.support.constraint.a.a.a(android.support.constraint.a.a.b b1, c c1)
    {
        d = 0;
        e = -1;
        h = b.a;
        i = a.a;
        j = 0;
        g = 0x7fffffff;
        a = b1;
        b = c1;
    }

    private String a(HashSet hashset)
    {
        if (hashset.add(this))
        {
            StringBuilder stringbuilder = (new StringBuilder()).append(a.e()).append(":").append(b.toString());
            if (c != null)
            {
                hashset = (new StringBuilder()).append(" connected to ").append(c.a(hashset)).toString();
            } else
            {
                hashset = "";
            }
            return stringbuilder.append(hashset).toString();
        } else
        {
            return "<-";
        }
    }

    public g a()
    {
        return f;
    }

    public void a(a a1)
    {
        i = a1;
    }

    public void a(android.support.constraint.a.c c1)
    {
        if (f == null)
        {
            f = new g(android.support.constraint.a.g.a.a);
            return;
        } else
        {
            f.c();
            return;
        }
    }

    public boolean a(android.support.constraint.a.a.a a1)
    {
        boolean flag = true;
        if (a1 != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        c c1;
        c1 = a1.c();
        if (c1 != b)
        {
            break; /* Loop/switch isn't completed */
        }
        if (b != android.support.constraint.a.a.c.g && (b != c.f || a1.b().v() && b().v()))
        {
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        boolean flag3;
        static class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[c.values().length];
                try
                {
                    a[android.support.constraint.a.a.c.g.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    a[c.b.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    a[c.d.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[android.support.constraint.a.a.c.c.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[c.e.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[c.h.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[c.i.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[c.f.ordinal()] = 8;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[b.ordinal()])
        {
        default:
            return false;

        case 1: // '\001'
            if (c1 == c.f || c1 == c.h || c1 == c.i)
            {
                flag = false;
            }
            return flag;

        case 2: // '\002'
        case 3: // '\003'
            boolean flag1;
            if (c1 == c.b || c1 == c.d)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            flag3 = flag1;
            if (!(a1.b() instanceof d))
            {
                break; /* Loop/switch isn't completed */
            }
            if (flag1 || c1 == c.h)
            {
                return true;
            }
            continue; /* Loop/switch isn't completed */

        case 4: // '\004'
        case 5: // '\005'
            boolean flag2;
            if (c1 == android.support.constraint.a.a.c.c || c1 == c.e)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            flag3 = flag2;
            break;
        }
        if (!(a1.b() instanceof d))
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag2 || c1 == c.i)
        {
            return true;
        }
        if (true) goto _L1; else goto _L4
_L4:
        return flag3;
    }

    public boolean a(android.support.constraint.a.a.a a1, int k, int l, b b1, int i1, boolean flag)
    {
        if (a1 == null)
        {
            c = null;
            d = 0;
            e = -1;
            h = b.a;
            j = 2;
            return true;
        }
        if (!flag && !a(a1))
        {
            return false;
        }
        c = a1;
        if (k > 0)
        {
            d = k;
        } else
        {
            d = 0;
        }
        e = l;
        h = b1;
        j = i1;
        return true;
    }

    public boolean a(android.support.constraint.a.a.a a1, int k, b b1, int l)
    {
        return a(a1, k, -1, b1, l, false);
    }

    public android.support.constraint.a.a.b b()
    {
        return a;
    }

    public c c()
    {
        return b;
    }

    public int d()
    {
        if (a.d() == 8)
        {
            return 0;
        }
        if (e > -1 && c != null && c.a.d() == 8)
        {
            return e;
        } else
        {
            return d;
        }
    }

    public b e()
    {
        return h;
    }

    public android.support.constraint.a.a.a f()
    {
        return c;
    }

    public a g()
    {
        return i;
    }

    public int h()
    {
        return j;
    }

    public void i()
    {
        c = null;
        d = 0;
        e = -1;
        h = b.b;
        j = 0;
        i = a.a;
    }

    public boolean j()
    {
        return c != null;
    }

    public String toString()
    {
        Object obj = new HashSet();
        StringBuilder stringbuilder = (new StringBuilder()).append(a.e()).append(":").append(b.toString());
        if (c != null)
        {
            obj = (new StringBuilder()).append(" connected to ").append(c.a(((HashSet) (obj)))).toString();
        } else
        {
            obj = "";
        }
        return stringbuilder.append(((String) (obj))).toString();
    }
}
