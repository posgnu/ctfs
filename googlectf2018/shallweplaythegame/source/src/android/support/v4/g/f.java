// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.g;


// Referenced classes of package android.support.v4.g:
//            c

public class f
    implements Cloneable
{

    private static final Object a = new Object();
    private boolean b;
    private long c[];
    private Object d[];
    private int e;

    public f()
    {
        this(10);
    }

    public f(int i)
    {
        b = false;
        if (i == 0)
        {
            c = c.b;
            d = c.c;
        } else
        {
            i = android.support.v4.g.c.b(i);
            c = new long[i];
            d = new Object[i];
        }
        e = 0;
    }

    private void d()
    {
        int l = e;
        long al[] = c;
        Object aobj[] = d;
        int i = 0;
        int j;
        int k;
        for (j = 0; i < l; j = k)
        {
            Object obj = aobj[i];
            k = j;
            if (obj != a)
            {
                if (i != j)
                {
                    al[j] = al[i];
                    aobj[j] = obj;
                    aobj[i] = null;
                }
                k = j + 1;
            }
            i++;
        }

        b = false;
        e = j;
    }

    public long a(int i)
    {
        if (b)
        {
            d();
        }
        return c[i];
    }

    public f a()
    {
        Object obj;
        try
        {
            obj = (f)super.clone();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return null;
        }
        try
        {
            obj.c = (long[])c.clone();
            obj.d = (Object[])((Object []) (d)).clone();
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            return ((f) (obj));
        }
        return ((f) (obj));
    }

    public Object a(long l)
    {
        return a(l, null);
    }

    public Object a(long l, Object obj)
    {
        int i = android.support.v4.g.c.a(c, e, l);
        if (i < 0 || d[i] == a)
        {
            return obj;
        } else
        {
            return d[i];
        }
    }

    public int b()
    {
        if (b)
        {
            d();
        }
        return e;
    }

    public Object b(int i)
    {
        if (b)
        {
            d();
        }
        return d[i];
    }

    public void b(long l)
    {
        int i = android.support.v4.g.c.a(c, e, l);
        if (i >= 0 && d[i] != a)
        {
            d[i] = a;
            b = true;
        }
    }

    public void b(long l, Object obj)
    {
        int i = android.support.v4.g.c.a(c, e, l);
        if (i >= 0)
        {
            d[i] = obj;
            return;
        }
        int j = ~i;
        if (j < e && d[j] == a)
        {
            c[j] = l;
            d[j] = obj;
            return;
        }
        i = j;
        if (b)
        {
            i = j;
            if (e >= c.length)
            {
                d();
                i = ~android.support.v4.g.c.a(c, e, l);
            }
        }
        if (e >= c.length)
        {
            int k = android.support.v4.g.c.b(e + 1);
            long al[] = new long[k];
            Object aobj[] = new Object[k];
            System.arraycopy(c, 0, al, 0, c.length);
            System.arraycopy(((Object) (d)), 0, ((Object) (aobj)), 0, d.length);
            c = al;
            d = aobj;
        }
        if (e - i != 0)
        {
            System.arraycopy(c, i, c, i + 1, e - i);
            System.arraycopy(((Object) (d)), i, ((Object) (d)), i + 1, e - i);
        }
        c[i] = l;
        d[i] = obj;
        e = e + 1;
    }

    public void c()
    {
        int j = e;
        Object aobj[] = d;
        for (int i = 0; i < j; i++)
        {
            aobj[i] = null;
        }

        e = 0;
        b = false;
    }

    public Object clone()
    {
        return a();
    }

    public String toString()
    {
        if (b() <= 0)
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(e * 28);
        stringbuilder.append('{');
        int i = 0;
        while (i < e) 
        {
            if (i > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(a(i));
            stringbuilder.append('=');
            Object obj = b(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            i++;
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
