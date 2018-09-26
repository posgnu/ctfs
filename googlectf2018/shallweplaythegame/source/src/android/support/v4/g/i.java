// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.g;


public class i
{

    public final Object a;
    public final Object b;

    private static boolean a(Object obj, Object obj1)
    {
        return obj == obj1 || obj != null && obj.equals(obj1);
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof i)
        {
            if (a(((i) (obj = (i)obj)).a, a) && a(((i) (obj)).b, b))
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        int k = 0;
        int j;
        if (a == null)
        {
            j = 0;
        } else
        {
            j = a.hashCode();
        }
        if (b != null)
        {
            k = b.hashCode();
        }
        return j ^ k;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Pair{").append(String.valueOf(a)).append(" ").append(String.valueOf(b)).append("}").toString();
    }
}
