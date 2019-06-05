// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.b.a;

import java.lang.reflect.Array;

final class c
{

    static final boolean a;

    private c()
    {
    }

    public static int a(int i)
    {
        if (i <= 4)
        {
            return 8;
        } else
        {
            return i * 2;
        }
    }

    public static int[] a(int ai[], int i, int j)
    {
        if (!a && i > ai.length)
        {
            throw new AssertionError();
        }
        int ai1[] = ai;
        if (i + 1 > ai.length)
        {
            ai1 = new int[a(i)];
            System.arraycopy(ai, 0, ai1, 0, i);
        }
        ai1[i] = j;
        return ai1;
    }

    public static Object[] a(Object aobj[], int i, Object obj)
    {
        if (!a && i > aobj.length)
        {
            throw new AssertionError();
        }
        if (i + 1 > aobj.length)
        {
            Object aobj1[] = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), a(i));
            System.arraycopy(((Object) (aobj)), 0, ((Object) (aobj1)), 0, i);
            aobj = aobj1;
        }
        aobj[i] = obj;
        return aobj;
    }

    static 
    {
        boolean flag;
        if (!android/support/v7/b/a/c.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
