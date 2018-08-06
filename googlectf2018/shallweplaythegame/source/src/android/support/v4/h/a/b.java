// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v4.h.a:
//            a, c, d

public class android.support.v4.h.a.b
{
    static interface a
    {

        public abstract Object a(android.support.v4.h.a.b b1);
    }

    private static class b extends d
    {

        public Object a(android.support.v4.h.a.b b1)
        {
            return android.support.v4.h.a.c.a(new c.a(this, b1) {

                final android.support.v4.h.a.b a;
                final b b;

                public Object a(int i)
                {
                    android.support.v4.h.a.a a1 = a.a(i);
                    if (a1 == null)
                    {
                        return null;
                    } else
                    {
                        return a1.a();
                    }
                }

                public List a(String s, int i)
                {
                    s = a.a(s, i);
                    if (s == null)
                    {
                        return null;
                    }
                    ArrayList arraylist = new ArrayList();
                    int j = s.size();
                    for (i = 0; i < j; i++)
                    {
                        arraylist.add(((android.support.v4.h.a.a)s.get(i)).a());
                    }

                    return arraylist;
                }

                public boolean a(int i, int j, Bundle bundle)
                {
                    return a.a(i, j, bundle);
                }

            
            {
                b = b1;
                a = b2;
                super();
            }
            });
        }

        b()
        {
        }
    }

    private static class c extends d
    {

        public Object a(android.support.v4.h.a.b b1)
        {
            return android.support.v4.h.a.d.a(new d.a(this, b1) {

                final android.support.v4.h.a.b a;
                final c b;

                public Object a(int i)
                {
                    android.support.v4.h.a.a a1 = a.a(i);
                    if (a1 == null)
                    {
                        return null;
                    } else
                    {
                        return a1.a();
                    }
                }

                public List a(String s, int i)
                {
                    s = a.a(s, i);
                    if (s == null)
                    {
                        return null;
                    }
                    ArrayList arraylist = new ArrayList();
                    int j = s.size();
                    for (i = 0; i < j; i++)
                    {
                        arraylist.add(((android.support.v4.h.a.a)s.get(i)).a());
                    }

                    return arraylist;
                }

                public boolean a(int i, int j, Bundle bundle)
                {
                    return a.a(i, j, bundle);
                }

                public Object b(int i)
                {
                    android.support.v4.h.a.a a1 = a.b(i);
                    if (a1 == null)
                    {
                        return null;
                    } else
                    {
                        return a1.a();
                    }
                }

            
            {
                b = c1;
                a = b1;
                super();
            }
            });
        }

        c()
        {
        }
    }

    static class d
        implements a
    {

        public Object a(android.support.v4.h.a.b b1)
        {
            return null;
        }

        d()
        {
        }
    }


    private static final a a;
    private final Object b;

    public android.support.v4.h.a.b()
    {
        b = a.a(this);
    }

    public android.support.v4.h.a.b(Object obj)
    {
        b = obj;
    }

    public android.support.v4.h.a.a a(int i)
    {
        return null;
    }

    public Object a()
    {
        return b;
    }

    public List a(String s, int i)
    {
        return null;
    }

    public boolean a(int i, int j, Bundle bundle)
    {
        return false;
    }

    public android.support.v4.h.a.a b(int i)
    {
        return null;
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new c();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new b();
        } else
        {
            a = new d();
        }
    }
}
