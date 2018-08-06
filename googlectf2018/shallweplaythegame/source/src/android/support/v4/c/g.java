// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package android.support.v4.c:
//            h, c

class g
    implements c.a
{
    private static interface a
    {

        public abstract boolean a(Object obj);

        public abstract int b(Object obj);
    }


    g()
    {
    }

    private android.support.v4.b.a.a.c a(android.support.v4.b.a.a.b b, int i)
    {
        return (android.support.v4.b.a.a.c)a(((Object []) (b.a())), i, new a() {

            final g a;

            public int a(android.support.v4.b.a.a.c c1)
            {
                return c1.b();
            }

            public boolean a(Object obj)
            {
                return b((android.support.v4.b.a.a.c)obj);
            }

            public int b(Object obj)
            {
                return a((android.support.v4.b.a.a.c)obj);
            }

            public boolean b(android.support.v4.b.a.a.c c1)
            {
                return c1.c();
            }

            
            {
                a = g.this;
                super();
            }
        });
    }

    private static Object a(Object aobj[], int i, a a1)
    {
        Object obj;
        char c1;
        int j;
        int l;
        boolean flag;
        if ((i & 1) == 0)
        {
            c1 = '\u0190';
        } else
        {
            c1 = '\u02BC';
        }
        if ((i & 2) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj = null;
        j = 0x7fffffff;
        l = aobj.length;
        i = 0;
        while (i < l) 
        {
            Object obj1 = aobj[i];
            int i1 = Math.abs(a1.b(obj1) - c1);
            int k;
            if (a1.a(obj1) == flag)
            {
                k = 0;
            } else
            {
                k = 1;
            }
            k += i1 * 2;
            if (obj == null || j > k)
            {
                j = k;
                obj = obj1;
            }
            i++;
        }
        return obj;
    }

    public Typeface a(Context context, Resources resources, int i, String s, int j)
    {
        context = h.a(context);
        if (context == null)
        {
            return null;
        }
        boolean flag;
        try
        {
            flag = h.a(context, resources, i);
        }
        // Misplaced declaration of an exception variable
        catch (Resources resources)
        {
            context.delete();
            return null;
        }
        finally
        {
            context.delete();
        }
        if (!flag)
        {
            context.delete();
            return null;
        }
        resources = Typeface.createFromFile(context.getPath());
        context.delete();
        return resources;
        throw resources;
    }

    public Typeface a(Context context, CancellationSignal cancellationsignal, android.support.v4.f.b.b ab[], int i)
    {
        if (ab.length < 1)
        {
            return null;
        }
        cancellationsignal = a(ab, i);
        cancellationsignal = context.getContentResolver().openInputStream(cancellationsignal.a());
        context = a(context, ((InputStream) (cancellationsignal)));
        h.a(cancellationsignal);
        return context;
        context;
        cancellationsignal = null;
_L4:
        h.a(cancellationsignal);
        return null;
        context;
        cancellationsignal = null;
_L2:
        h.a(cancellationsignal);
        throw context;
        context;
        if (true) goto _L2; else goto _L1
_L1:
        context;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Typeface a(Context context, android.support.v4.b.a.a.b b, Resources resources, int i)
    {
        b = a(b, i);
        if (b == null)
        {
            return null;
        } else
        {
            return c.a(context, resources, b.d(), b.a(), i);
        }
    }

    protected Typeface a(Context context, InputStream inputstream)
    {
        context = h.a(context);
        if (context == null)
        {
            return null;
        }
        boolean flag;
        try
        {
            flag = h.a(context, inputstream);
        }
        // Misplaced declaration of an exception variable
        catch (InputStream inputstream)
        {
            context.delete();
            return null;
        }
        finally
        {
            context.delete();
        }
        if (!flag)
        {
            context.delete();
            return null;
        }
        inputstream = Typeface.createFromFile(context.getPath());
        context.delete();
        return inputstream;
        throw inputstream;
    }

    protected android.support.v4.f.b.b a(android.support.v4.f.b.b ab[], int i)
    {
        return (android.support.v4.f.b.b)a(((Object []) (ab)), i, new a() {

            final g a;

            public int a(android.support.v4.f.b.b b1)
            {
                return b1.c();
            }

            public boolean a(Object obj)
            {
                return b((android.support.v4.f.b.b)obj);
            }

            public int b(Object obj)
            {
                return a((android.support.v4.f.b.b)obj);
            }

            public boolean b(android.support.v4.f.b.b b1)
            {
                return b1.d();
            }

            
            {
                a = g.this;
                super();
            }
        });
    }
}
