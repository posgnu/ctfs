// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.lifecycle;

import java.lang.reflect.Method;

// Referenced classes of package android.arch.lifecycle:
//            ReflectiveGenericLifecycleObserver

static class b
{

    final int a;
    final Method b;

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            obj = (b)obj;
            if (a != ((a) (obj)).a || !b.getName().equals(((b) (obj)).b.getName()))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return a * 31 + b.getName().hashCode();
    }

    A(int i, Method method)
    {
        a = i;
        b = method;
        b.setAccessible(true);
    }
}
