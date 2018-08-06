// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.view.WindowInsets;

public class v
{

    private final Object a;

    private v(Object obj)
    {
        a = obj;
    }

    static v a(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return new v(obj);
        }
    }

    static Object a(v v1)
    {
        if (v1 == null)
        {
            return null;
        } else
        {
            return v1.a;
        }
    }

    public int a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 20)
        {
            return ((WindowInsets)a).getSystemWindowInsetLeft();
        } else
        {
            return 0;
        }
    }

    public v a(int i, int j, int k, int l)
    {
        if (android.os.Build.VERSION.SDK_INT >= 20)
        {
            return new v(((WindowInsets)a).replaceSystemWindowInsets(i, j, k, l));
        } else
        {
            return null;
        }
    }

    public int b()
    {
        if (android.os.Build.VERSION.SDK_INT >= 20)
        {
            return ((WindowInsets)a).getSystemWindowInsetTop();
        } else
        {
            return 0;
        }
    }

    public int c()
    {
        if (android.os.Build.VERSION.SDK_INT >= 20)
        {
            return ((WindowInsets)a).getSystemWindowInsetRight();
        } else
        {
            return 0;
        }
    }

    public int d()
    {
        if (android.os.Build.VERSION.SDK_INT >= 20)
        {
            return ((WindowInsets)a).getSystemWindowInsetBottom();
        } else
        {
            return 0;
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (v)obj;
            if (a == null)
            {
                if (((v) (obj)).a != null)
                {
                    return false;
                }
            } else
            {
                return a.equals(((v) (obj)).a);
            }
        }
        return true;
    }

    public int hashCode()
    {
        if (a == null)
        {
            return 0;
        } else
        {
            return a.hashCode();
        }
    }
}
