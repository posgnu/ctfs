// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a;


// Referenced classes of package android.support.constraint.a:
//            f

static class a
    implements a
{

    private final Object a[];
    private int b;

    public Object a()
    {
        if (b > 0)
        {
            int i = b - 1;
            Object obj = a[i];
            a[i] = null;
            b = b - 1;
            return obj;
        } else
        {
            return null;
        }
    }

    public void a(Object aobj[], int i)
    {
        int j = i;
        if (i > aobj.length)
        {
            j = aobj.length;
        }
        for (i = 0; i < j; i++)
        {
            Object obj = aobj[i];
            if (b < a.length)
            {
                a[b] = obj;
                b = b + 1;
            }
        }

    }

    public boolean a(Object obj)
    {
        if (b < a.length)
        {
            a[b] = obj;
            b = b + 1;
            return true;
        } else
        {
            return false;
        }
    }

    n(int i)
    {
        if (i <= 0)
        {
            throw new IllegalArgumentException("The max pool size must be > 0");
        } else
        {
            a = new Object[i];
            return;
        }
    }
}
