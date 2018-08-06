// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package android.arch.lifecycle:
//            a, f, c

class ReflectiveGenericLifecycleObserver
    implements android.arch.lifecycle.a
{
    static class a
    {

        final Map a = new HashMap();
        final Map b;

        a(Map map)
        {
            b = map;
            java.util.Map.Entry entry;
            for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); map.add(entry.getKey()))
            {
                entry = (java.util.Map.Entry)iterator.next();
                b.a a1 = (b.a)entry.getValue();
                List list = (List)a.get(a1);
                map = list;
                if (list == null)
                {
                    map = new ArrayList();
                    a.put(a1, map);
                }
            }

        }
    }

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
                if (a != ((b) (obj)).a || !b.getName().equals(((b) (obj)).b.getName()))
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

        b(int i, Method method)
        {
            a = i;
            b = method;
            b.setAccessible(true);
        }
    }


    static final Map a = new HashMap();
    private final Object b;
    private final a c;

    ReflectiveGenericLifecycleObserver(Object obj)
    {
        b = obj;
        c = a(b.getClass());
    }

    private static a a(Class class1)
    {
        a a1 = (a)a.get(class1);
        if (a1 != null)
        {
            return a1;
        } else
        {
            return b(class1);
        }
    }

    private void a(a a1, c c1, b.a a2)
    {
        a((List)a1.a.get(a2), c1, a2);
        a((List)a1.a.get(b.a.ON_ANY), c1, a2);
    }

    private void a(b b1, c c1, b.a a1)
    {
        b1.a;
        JVM INSTR tableswitch 0 2: default 120
    //                   0 32
    //                   1 64
    //                   2 95;
           goto _L1 _L2 _L3 _L4
_L2:
        b1.b.invoke(b, new Object[0]);
        return;
_L3:
        try
        {
            b1.b.invoke(b, new Object[] {
                c1
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (b b1)
        {
            throw new RuntimeException("Failed to call observer method", b1.getCause());
        }
        // Misplaced declaration of an exception variable
        catch (b b1)
        {
            throw new RuntimeException(b1);
        }
_L4:
        b1.b.invoke(b, new Object[] {
            c1, a1
        });
        return;
_L1:
    }

    private void a(List list, c c1, b.a a1)
    {
        if (list != null)
        {
            for (int i = list.size() - 1; i >= 0; i--)
            {
                a((b)list.get(i), c1, a1);
            }

        }
    }

    private static void a(Map map, b b1, b.a a1, Class class1)
    {
        b.a a2 = (b.a)map.get(b1);
        if (a2 != null && a1 != a2)
        {
            map = b1.b;
            throw new IllegalArgumentException((new StringBuilder()).append("Method ").append(map.getName()).append(" in ").append(class1.getName()).append(" already declared with different @OnLifecycleEvent value: previous").append(" value ").append(a2).append(", new value ").append(a1).toString());
        }
        if (a2 == null)
        {
            map.put(b1, a1);
        }
    }

    private static a b(Class class1)
    {
        Object obj1 = class1.getSuperclass();
        Object obj = new HashMap();
        if (obj1 != null)
        {
            obj1 = a(((Class) (obj1)));
            if (obj1 != null)
            {
                ((Map) (obj)).putAll(((a) (obj1)).b);
            }
        }
        Method amethod[] = class1.getDeclaredMethods();
        Class aclass[] = class1.getInterfaces();
        int j = aclass.length;
        for (int i = 0; i < j; i++)
        {
            java.util.Map.Entry entry;
            for (Iterator iterator = a(aclass[i]).b.entrySet().iterator(); iterator.hasNext(); a(((Map) (obj)), (b)entry.getKey(), (b.a)entry.getValue(), class1))
            {
                entry = (java.util.Map.Entry)iterator.next();
            }

        }

        int k = amethod.length;
        j = 0;
        while (j < k) 
        {
            Method method = amethod[j];
            Object obj2 = (f)method.getAnnotation(android/arch/lifecycle/f);
            if (obj2 != null)
            {
                Class aclass1[] = method.getParameterTypes();
                byte byte0;
                if (aclass1.length > 0)
                {
                    if (!aclass1[0].isAssignableFrom(android/arch/lifecycle/c))
                    {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    byte0 = 1;
                } else
                {
                    byte0 = 0;
                }
                obj2 = ((f) (obj2)).a();
                if (aclass1.length > 1)
                {
                    if (!aclass1[1].isAssignableFrom(android/arch/lifecycle/b$a))
                    {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (obj2 != b.a.ON_ANY)
                    {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    byte0 = 2;
                }
                if (aclass1.length > 2)
                {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                a(((Map) (obj)), new b(byte0, method), ((b.a) (obj2)), class1);
            }
            j++;
        }
        obj = new a(((Map) (obj)));
        a.put(class1, obj);
        return ((a) (obj));
    }

    public void a(c c1, b.a a1)
    {
        a(c, c1, a1);
    }

}
