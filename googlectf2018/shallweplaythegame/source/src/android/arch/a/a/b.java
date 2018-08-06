// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.a.a;

import java.util.Iterator;
import java.util.WeakHashMap;

public class android.arch.a.a.b
    implements Iterable
{
    static class a extends e
    {

        c a(c c1)
        {
            return c1.c;
        }

        a(c c1, c c2)
        {
            super(c1, c2);
        }
    }

    private static class b extends e
    {

        c a(c c1)
        {
            return c1.d;
        }

        b(c c1, c c2)
        {
            super(c1, c2);
        }
    }

    static class c
        implements java.util.Map.Entry
    {

        final Object a;
        final Object b;
        c c;
        c d;

        public boolean equals(Object obj)
        {
            if (obj != this)
            {
                if (!(obj instanceof c))
                {
                    return false;
                }
                obj = (c)obj;
                if (!a.equals(((c) (obj)).a) || !b.equals(((c) (obj)).b))
                {
                    return false;
                }
            }
            return true;
        }

        public Object getKey()
        {
            return a;
        }

        public Object getValue()
        {
            return b;
        }

        public Object setValue(Object obj)
        {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString()
        {
            return (new StringBuilder()).append(a).append("=").append(b).toString();
        }
    }

    private class d
        implements Iterator
    {

        final android.arch.a.a.b a;
        private c b;
        private boolean c;

        public java.util.Map.Entry a()
        {
            if (c)
            {
                c = false;
                b = android.arch.a.a.b.a(a);
            } else
            {
                c c1;
                if (b != null)
                {
                    c1 = b.c;
                } else
                {
                    c1 = null;
                }
                b = c1;
            }
            return b;
        }

        public boolean hasNext()
        {
            if (!c) goto _L2; else goto _L1
_L1:
            if (android.arch.a.a.b.a(a) == null) goto _L4; else goto _L3
_L3:
            return true;
_L4:
            return false;
_L2:
            if (b == null || b.c == null)
            {
                return false;
            }
            if (true) goto _L3; else goto _L5
_L5:
        }

        public Object next()
        {
            return a();
        }

        private d()
        {
            a = android.arch.a.a.b.this;
            super();
            c = true;
        }

    }

    private static abstract class e
        implements Iterator
    {

        c a;
        c b;

        private c b()
        {
            if (b == a || a == null)
            {
                return null;
            } else
            {
                return a(b);
            }
        }

        abstract c a(c c1);

        public java.util.Map.Entry a()
        {
            c c1 = b;
            b = b();
            return c1;
        }

        public boolean hasNext()
        {
            return b != null;
        }

        public Object next()
        {
            return a();
        }

        e(c c1, c c2)
        {
            a = c2;
            b = c1;
        }
    }


    private c a;
    private c b;
    private WeakHashMap c;
    private int d;

    public android.arch.a.a.b()
    {
        c = new WeakHashMap();
        d = 0;
    }

    static c a(android.arch.a.a.b b1)
    {
        return b1.a;
    }

    public int a()
    {
        return d;
    }

    public Iterator b()
    {
        b b1 = new b(b, a);
        c.put(b1, Boolean.valueOf(false));
        return b1;
    }

    public d c()
    {
        d d1 = new d();
        c.put(d1, Boolean.valueOf(false));
        return d1;
    }

    public java.util.Map.Entry d()
    {
        return a;
    }

    public java.util.Map.Entry e()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        boolean flag2 = false;
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag2;
        if (!(obj instanceof android.arch.a.a.b)) goto _L4; else goto _L3
_L3:
        Object obj1;
        obj1 = (android.arch.a.a.b)obj;
        flag = flag2;
        if (a() != ((android.arch.a.a.b) (obj1)).a()) goto _L4; else goto _L5
_L5:
        obj = iterator();
        obj1 = ((android.arch.a.a.b) (obj1)).iterator();
_L8:
        java.util.Map.Entry entry;
        Object obj2;
        if (!((Iterator) (obj)).hasNext() || !((Iterator) (obj1)).hasNext())
        {
            break MISSING_BLOCK_LABEL_121;
        }
        entry = (java.util.Map.Entry)((Iterator) (obj)).next();
        obj2 = ((Iterator) (obj1)).next();
        if (entry != null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag2;
        if (obj2 != null) goto _L4; else goto _L6
_L6:
        if (entry == null || entry.equals(obj2)) goto _L8; else goto _L7
_L7:
        return false;
        boolean flag1;
        if (!((Iterator) (obj)).hasNext() && !((Iterator) (obj1)).hasNext())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag1;
    }

    public Iterator iterator()
    {
        a a1 = new a(a, b);
        c.put(a1, Boolean.valueOf(false));
        return a1;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("[");
        Iterator iterator1 = iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            stringbuilder.append(((java.util.Map.Entry)iterator1.next()).toString());
            if (iterator1.hasNext())
            {
                stringbuilder.append(", ");
            }
        } while (true);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }
}
