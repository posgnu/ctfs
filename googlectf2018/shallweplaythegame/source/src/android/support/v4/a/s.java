// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.graphics.Rect;
import android.support.v4.g.a;
import android.support.v4.h.p;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;

// Referenced classes of package android.support.v4.a:
//            c, h, t, x, 
//            n, j, l, y

class s
{
    static class a
    {

        public h a;
        public boolean b;
        public c c;
        public h d;
        public boolean e;
        public c f;

        a()
        {
        }
    }


    private static final int a[] = {
        0, 3, 0, 1, 5, 4, 7, 6, 9, 8
    };

    private static a a(a a1, SparseArray sparsearray, int i)
    {
        a a2 = a1;
        if (a1 == null)
        {
            a2 = new a();
            sparsearray.put(i, a2);
        }
        return a2;
    }

    private static android.support.v4.g.a a(int i, ArrayList arraylist, ArrayList arraylist1, int k, int i1)
    {
        android.support.v4.g.a a1 = new android.support.v4.g.a();
        i1--;
        while (i1 >= k) 
        {
            Object obj = (c)arraylist.get(i1);
            if (((c) (obj)).b(i))
            {
                boolean flag = ((Boolean)arraylist1.get(i1)).booleanValue();
                if (((c) (obj)).s != null)
                {
                    int k1 = ((c) (obj)).s.size();
                    ArrayList arraylist2;
                    ArrayList arraylist3;
                    int j1;
                    if (flag)
                    {
                        arraylist2 = ((c) (obj)).s;
                        arraylist3 = ((c) (obj)).t;
                    } else
                    {
                        arraylist3 = ((c) (obj)).s;
                        arraylist2 = ((c) (obj)).t;
                    }
                    j1 = 0;
                    while (j1 < k1) 
                    {
                        obj = (String)arraylist3.get(j1);
                        String s1 = (String)arraylist2.get(j1);
                        String s2 = (String)a1.remove(s1);
                        if (s2 != null)
                        {
                            a1.put(obj, s2);
                        } else
                        {
                            a1.put(obj, s1);
                        }
                        j1++;
                    }
                }
            }
            i1--;
        }
        return a1;
    }

    static android.support.v4.g.a a(android.support.v4.g.a a1, Object obj, a a2)
    {
        return c(a1, obj, a2);
    }

    static View a(android.support.v4.g.a a1, a a2, Object obj, boolean flag)
    {
        return b(a1, a2, obj, flag);
    }

    private static Object a(h h1, h h2, boolean flag)
    {
        if (h1 == null || h2 == null)
        {
            return null;
        }
        if (flag)
        {
            h1 = ((h) (h2.x()));
        } else
        {
            h1 = ((h) (h1.w()));
        }
        return t.b(android.support.v4.a.t.a(h1));
    }

    private static Object a(h h1, boolean flag)
    {
        if (h1 == null)
        {
            return null;
        }
        if (flag)
        {
            h1 = ((h) (h1.v()));
        } else
        {
            h1 = ((h) (h1.s()));
        }
        return android.support.v4.a.t.a(h1);
    }

    private static Object a(ViewGroup viewgroup, View view, android.support.v4.g.a a1, a a2, ArrayList arraylist, ArrayList arraylist1, Object obj, Object obj1)
    {
        Object obj3 = null;
        h h1 = a2.a;
        h h2 = a2.d;
        if (h1 != null)
        {
            h1.i().setVisibility(0);
        }
        if (h1 != null && h2 != null)
        {
            boolean flag = a2.b;
            Object obj2;
            android.support.v4.g.a a3;
            android.support.v4.g.a a4;
            if (a1.isEmpty())
            {
                obj2 = null;
            } else
            {
                obj2 = a(h1, h2, flag);
            }
            a4 = b(a1, obj2, a2);
            a3 = c(a1, obj2, a2);
            if (a1.isEmpty())
            {
                if (a4 != null)
                {
                    a4.clear();
                }
                if (a3 != null)
                {
                    a3.clear();
                    a1 = null;
                } else
                {
                    a1 = null;
                }
            } else
            {
                a(arraylist, a4, ((Collection) (a1.keySet())));
                a(arraylist1, a3, a1.values());
                a1 = ((android.support.v4.g.a) (obj2));
            }
            if (obj != null || obj1 != null || a1 != null)
            {
                b(h1, h2, flag, a4, true);
                if (a1 != null)
                {
                    arraylist1.add(view);
                    android.support.v4.a.t.a(a1, view, arraylist);
                    a(a1, obj1, a4, a2.e, a2.f);
                    arraylist = new Rect();
                    arraylist1 = b(a3, a2, obj, flag);
                    view = arraylist1;
                    a2 = arraylist;
                    if (arraylist1 != null)
                    {
                        android.support.v4.a.t.a(obj, arraylist);
                        a2 = arraylist;
                        view = arraylist1;
                    }
                } else
                {
                    a2 = null;
                    view = obj3;
                }
                android.support.v4.a.x.a(viewgroup, new Runnable(h1, h2, flag, a3, view, a2) {

                    final h a;
                    final h b;
                    final boolean c;
                    final android.support.v4.g.a d;
                    final View e;
                    final Rect f;

                    public void run()
                    {
                        android.support.v4.a.s.a(a, b, c, d, false);
                        if (e != null)
                        {
                            android.support.v4.a.t.a(e, f);
                        }
                    }

            
            {
                a = h1;
                b = h2;
                c = flag;
                d = a1;
                e = view;
                f = rect;
                super();
            }
                });
                return a1;
            }
        }
        return null;
    }

    private static Object a(Object obj, Object obj1, Object obj2, h h1, boolean flag)
    {
        boolean flag2 = true;
        boolean flag1 = flag2;
        if (obj != null)
        {
            flag1 = flag2;
            if (obj1 != null)
            {
                flag1 = flag2;
                if (h1 != null)
                {
                    if (flag)
                    {
                        flag1 = h1.z();
                    } else
                    {
                        flag1 = h1.y();
                    }
                }
            }
        }
        if (flag1)
        {
            return android.support.v4.a.t.a(obj1, obj, obj2);
        } else
        {
            return t.b(obj1, obj, obj2);
        }
    }

    private static String a(android.support.v4.g.a a1, String s1)
    {
        int k = a1.size();
        for (int i = 0; i < k; i++)
        {
            if (s1.equals(a1.c(i)))
            {
                return (String)a1.b(i);
            }
        }

        return null;
    }

    static ArrayList a(Object obj, h h1, ArrayList arraylist, View view)
    {
        return b(obj, h1, arraylist, view);
    }

    private static void a(c c1, c.a a1, SparseArray sparsearray, boolean flag, boolean flag1)
    {
        h h1 = a1.b;
        if (h1 != null) goto _L2; else goto _L1
_L1:
        int k;
        return;
_L2:
        if ((k = h1.x) == 0) goto _L4; else goto _L3
_L3:
        int i;
        boolean flag2;
        boolean flag3;
        boolean flag5;
        if (flag)
        {
            i = a[a1.a];
        } else
        {
            i = a1.a;
        }
        i;
        JVM INSTR tableswitch 1 7: default 84
    //                   1 352
    //                   2 84
    //                   3 490
    //                   4 404
    //                   5 292
    //                   6 490
    //                   7 352;
           goto _L5 _L6 _L5 _L7 _L8 _L9 _L7 _L6
_L5:
        i = 0;
        flag2 = false;
        flag3 = false;
        flag5 = false;
_L10:
        a1 = (a)sparsearray.get(k);
        if (flag5)
        {
            a1 = a(((a) (a1)), sparsearray, k);
            a1.a = h1;
            a1.b = flag;
            a1.c = c1;
        }
        if (!flag1 && i != 0)
        {
            if (a1 != null && ((a) (a1)).d == h1)
            {
                a1.d = null;
            }
            n n1 = c1.b;
            if (h1.b < 1 && n1.l >= 1 && !c1.u)
            {
                n1.f(h1);
                n1.a(h1, 1, 0, 0, false);
            }
        }
        boolean flag4;
        if (flag2 && (a1 == null || ((a) (a1)).d == null))
        {
            a1 = a(((a) (a1)), sparsearray, k);
            a1.d = h1;
            a1.e = flag;
            a1.f = c1;
            c1 = a1;
        } else
        {
            c1 = a1;
        }
        if (!flag1 && flag3 && c1 != null && ((a) (c1)).a == h1)
        {
            c1.a = null;
            return;
        }
_L4:
        if (true) goto _L1; else goto _L9
_L9:
        if (flag1)
        {
            if (h1.Q && !h1.z && h1.k)
            {
                flag5 = true;
            } else
            {
                flag5 = false;
            }
        } else
        {
            flag5 = h1.z;
        }
        i = 1;
        flag2 = false;
        flag3 = false;
          goto _L10
_L6:
        if (flag1)
        {
            flag5 = h1.P;
        } else
        if (!h1.k && !h1.z)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        i = 1;
        flag2 = false;
        flag3 = false;
          goto _L10
_L8:
        if (flag1)
        {
            if (h1.Q && h1.k && h1.z)
            {
                i = 1;
            } else
            {
                i = 0;
            }
        } else
        if (h1.k && !h1.z)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        flag4 = false;
        flag2 = i;
        flag3 = true;
        flag5 = false;
        i = ((flag4) ? 1 : 0);
          goto _L10
_L7:
        if (flag1)
        {
            if (!h1.k && h1.H != null && h1.H.getVisibility() == 0 && h1.R >= 0.0F)
            {
                i = 1;
            } else
            {
                i = 0;
            }
        } else
        if (h1.k && !h1.z)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        flag4 = false;
        flag2 = i;
        flag3 = true;
        flag5 = false;
        i = ((flag4) ? 1 : 0);
          goto _L10
    }

    public static void a(c c1, SparseArray sparsearray, boolean flag)
    {
        int k = c1.c.size();
        for (int i = 0; i < k; i++)
        {
            a(c1, (c.a)c1.c.get(i), sparsearray, false, flag);
        }

    }

    static void a(h h1, h h2, boolean flag, android.support.v4.g.a a1, boolean flag1)
    {
        b(h1, h2, flag, a1, flag1);
    }

    private static void a(n n1, int i, a a1, View view, android.support.v4.g.a a2)
    {
        ViewGroup viewgroup = null;
        if (n1.n.a())
        {
            viewgroup = (ViewGroup)n1.n.a(i);
        }
        if (viewgroup != null)
        {
            Object obj3 = a1.a;
            Object obj2 = a1.d;
            boolean flag = a1.b;
            boolean flag1 = a1.e;
            n1 = new ArrayList();
            ArrayList arraylist = new ArrayList();
            Object obj = a(((h) (obj3)), flag);
            Object obj1 = b(((h) (obj2)), flag1);
            a1 = ((a) (a(viewgroup, view, a2, a1, arraylist, ((ArrayList) (n1)), obj, obj1)));
            if (obj != null || a1 != null || obj1 != null)
            {
                ArrayList arraylist1 = b(obj1, ((h) (obj2)), arraylist, view);
                view = b(obj, ((h) (obj3)), n1, view);
                b(view, 4);
                obj3 = a(obj, obj1, a1, ((h) (obj3)), flag);
                if (obj3 != null)
                {
                    a(obj1, ((h) (obj2)), arraylist1);
                    obj2 = android.support.v4.a.t.a(n1);
                    android.support.v4.a.t.a(obj3, obj, view, obj1, arraylist1, a1, n1);
                    android.support.v4.a.t.a(viewgroup, obj3);
                    android.support.v4.a.t.a(viewgroup, arraylist, n1, ((ArrayList) (obj2)), a2);
                    b(view, 0);
                    android.support.v4.a.t.a(a1, arraylist, n1);
                    return;
                }
            }
        }
    }

    static void a(n n1, ArrayList arraylist, ArrayList arraylist1, int i, int k, boolean flag)
    {
_L2:
        return;
        if (n1.l < 1 || android.os.Build.VERSION.SDK_INT < 21) goto _L2; else goto _L1
_L1:
        SparseArray sparsearray = new SparseArray();
        int i1 = i;
        while (i1 < k) 
        {
            c c1 = (c)arraylist.get(i1);
            if (((Boolean)arraylist1.get(i1)).booleanValue())
            {
                b(c1, sparsearray, flag);
            } else
            {
                a(c1, sparsearray, flag);
            }
            i1++;
        }
        if (sparsearray.size() != 0)
        {
            View view = new View(n1.m.g());
            int k1 = sparsearray.size();
            int j1 = 0;
            while (j1 < k1) 
            {
                int l1 = sparsearray.keyAt(j1);
                android.support.v4.g.a a1 = a(l1, arraylist, arraylist1, i, k);
                a a2 = (a)sparsearray.valueAt(j1);
                if (flag)
                {
                    a(n1, l1, a2, view, a1);
                } else
                {
                    b(n1, l1, a2, view, a1);
                }
                j1++;
            }
        }
        if (true) goto _L2; else goto _L3
_L3:
    }

    private static void a(android.support.v4.g.a a1, android.support.v4.g.a a2)
    {
        for (int i = a1.size() - 1; i >= 0; i--)
        {
            if (!a2.containsKey((String)a1.c(i)))
            {
                a1.d(i);
            }
        }

    }

    private static void a(ViewGroup viewgroup, h h1, View view, ArrayList arraylist, Object obj, ArrayList arraylist1, Object obj1, ArrayList arraylist2)
    {
        android.support.v4.a.x.a(viewgroup, new Runnable(obj, view, h1, arraylist, arraylist1, arraylist2, obj1) {

            final Object a;
            final View b;
            final h c;
            final ArrayList d;
            final ArrayList e;
            final ArrayList f;
            final Object g;

            public void run()
            {
                if (a != null)
                {
                    t.c(a, b);
                    ArrayList arraylist3 = android.support.v4.a.s.a(a, c, d, b);
                    e.addAll(arraylist3);
                }
                if (f != null)
                {
                    if (g != null)
                    {
                        ArrayList arraylist4 = new ArrayList();
                        arraylist4.add(b);
                        t.b(g, f, arraylist4);
                    }
                    f.clear();
                    f.add(b);
                }
            }

            
            {
                a = obj;
                b = view;
                c = h1;
                d = arraylist;
                e = arraylist1;
                f = arraylist2;
                g = obj1;
                super();
            }
        });
    }

    private static void a(Object obj, h h1, ArrayList arraylist)
    {
        if (h1 != null && obj != null && h1.k && h1.z && h1.Q)
        {
            h1.f(true);
            t.b(obj, h1.i(), arraylist);
            android.support.v4.a.x.a(h1.G, new Runnable(arraylist) {

                final ArrayList a;

                public void run()
                {
                    android.support.v4.a.s.a(a, 4);
                }

            
            {
                a = arraylist;
                super();
            }
            });
        }
    }

    private static void a(Object obj, Object obj1, android.support.v4.g.a a1, boolean flag, c c1)
    {
        if (c1.s != null && !c1.s.isEmpty())
        {
            if (flag)
            {
                c1 = (String)c1.t.get(0);
            } else
            {
                c1 = (String)c1.s.get(0);
            }
            a1 = (View)a1.get(c1);
            android.support.v4.a.t.a(obj, a1);
            if (obj1 != null)
            {
                android.support.v4.a.t.a(obj1, a1);
            }
        }
    }

    static void a(ArrayList arraylist, int i)
    {
        b(arraylist, i);
    }

    private static void a(ArrayList arraylist, android.support.v4.g.a a1, Collection collection)
    {
        for (int i = a1.size() - 1; i >= 0; i--)
        {
            View view = (View)a1.c(i);
            if (collection.contains(p.e(view)))
            {
                arraylist.add(view);
            }
        }

    }

    private static android.support.v4.g.a b(android.support.v4.g.a a1, Object obj, a a2)
    {
        if (a1.isEmpty() || obj == null)
        {
            a1.clear();
            return null;
        }
        Object obj1 = a2.d;
        android.support.v4.g.a a3 = new android.support.v4.g.a();
        android.support.v4.a.t.a(a3, ((h) (obj1)).i());
        obj = a2.f;
        if (a2.e)
        {
            a2 = ((h) (obj1)).P();
            obj = ((c) (obj)).t;
        } else
        {
            a2 = ((h) (obj1)).Q();
            obj = ((c) (obj)).s;
        }
        a3.a(((Collection) (obj)));
        if (a2 != null)
        {
            a2.a(((java.util.List) (obj)), a3);
            int i = ((ArrayList) (obj)).size() - 1;
            while (i >= 0) 
            {
                obj1 = (String)((ArrayList) (obj)).get(i);
                a2 = (View)a3.get(obj1);
                if (a2 == null)
                {
                    a1.remove(obj1);
                } else
                if (!((String) (obj1)).equals(p.e(a2)))
                {
                    obj1 = (String)a1.remove(obj1);
                    a1.put(p.e(a2), obj1);
                }
                i--;
            }
        } else
        {
            a1.a(a3.keySet());
        }
        return a3;
    }

    private static View b(android.support.v4.g.a a1, a a2, Object obj, boolean flag)
    {
        a2 = a2.c;
        if (obj != null && a1 != null && ((c) (a2)).s != null && !((c) (a2)).s.isEmpty())
        {
            if (flag)
            {
                a2 = (String)((c) (a2)).s.get(0);
            } else
            {
                a2 = (String)((c) (a2)).t.get(0);
            }
            return (View)a1.get(a2);
        } else
        {
            return null;
        }
    }

    private static Object b(h h1, boolean flag)
    {
        if (h1 == null)
        {
            return null;
        }
        if (flag)
        {
            h1 = ((h) (h1.t()));
        } else
        {
            h1 = ((h) (h1.u()));
        }
        return android.support.v4.a.t.a(h1);
    }

    private static Object b(ViewGroup viewgroup, View view, android.support.v4.g.a a1, a a2, ArrayList arraylist, ArrayList arraylist1, Object obj, Object obj1)
    {
        h h1 = a2.a;
        h h2 = a2.d;
        if (h1 == null || h2 == null)
        {
            return null;
        }
        boolean flag = a2.b;
        Object obj2;
        android.support.v4.g.a a3;
        if (a1.isEmpty())
        {
            obj2 = null;
        } else
        {
            obj2 = a(h1, h2, flag);
        }
        a3 = b(a1, obj2, a2);
        if (a1.isEmpty())
        {
            obj2 = null;
        } else
        {
            arraylist.addAll(a3.values());
        }
        if (obj == null && obj1 == null && obj2 == null)
        {
            return null;
        }
        b(h1, h2, flag, a3, true);
        if (obj2 != null)
        {
            Rect rect = new Rect();
            android.support.v4.a.t.a(obj2, view, arraylist);
            a(obj2, obj1, a3, a2.e, a2.f);
            obj1 = rect;
            if (obj != null)
            {
                android.support.v4.a.t.a(obj, rect);
                obj1 = rect;
            }
        } else
        {
            obj1 = null;
        }
        android.support.v4.a.x.a(viewgroup, new Runnable(a1, obj2, a2, arraylist1, view, h1, h2, flag, arraylist, obj, ((Rect) (obj1))) {

            final android.support.v4.g.a a;
            final Object b;
            final a c;
            final ArrayList d;
            final View e;
            final h f;
            final h g;
            final boolean h;
            final ArrayList i;
            final Object j;
            final Rect k;

            public void run()
            {
                Object obj3 = android.support.v4.a.s.a(a, b, c);
                if (obj3 != null)
                {
                    d.addAll(((android.support.v4.g.a) (obj3)).values());
                    d.add(e);
                }
                android.support.v4.a.s.a(f, g, h, ((android.support.v4.g.a) (obj3)), false);
                if (b != null)
                {
                    android.support.v4.a.t.a(b, i, d);
                    obj3 = android.support.v4.a.s.a(((android.support.v4.g.a) (obj3)), c, j, h);
                    if (obj3 != null)
                    {
                        android.support.v4.a.t.a(((View) (obj3)), k);
                    }
                }
            }

            
            {
                a = a1;
                b = obj;
                c = a2;
                d = arraylist;
                e = view;
                f = h1;
                g = h2;
                h = flag;
                i = arraylist1;
                j = obj1;
                k = rect;
                super();
            }
        });
        return obj2;
    }

    private static ArrayList b(Object obj, h h1, ArrayList arraylist, View view)
    {
        ArrayList arraylist1 = null;
        if (obj != null)
        {
            ArrayList arraylist2 = new ArrayList();
            h1 = h1.i();
            if (h1 != null)
            {
                android.support.v4.a.t.a(arraylist2, h1);
            }
            if (arraylist != null)
            {
                arraylist2.removeAll(arraylist);
            }
            arraylist1 = arraylist2;
            if (!arraylist2.isEmpty())
            {
                arraylist2.add(view);
                android.support.v4.a.t.a(obj, arraylist2);
                arraylist1 = arraylist2;
            }
        }
        return arraylist1;
    }

    public static void b(c c1, SparseArray sparsearray, boolean flag)
    {
        if (c1.b.n.a())
        {
            int i = c1.c.size() - 1;
            while (i >= 0) 
            {
                a(c1, (c.a)c1.c.get(i), sparsearray, true, flag);
                i--;
            }
        }
    }

    private static void b(h h1, h h2, boolean flag, android.support.v4.g.a a1, boolean flag1)
    {
        ArrayList arraylist;
label0:
        {
            int k = 0;
            if (flag)
            {
                h1 = h2.P();
            } else
            {
                h1 = h1.P();
            }
            if (h1 != null)
            {
                h2 = new ArrayList();
                arraylist = new ArrayList();
                int i;
                if (a1 == null)
                {
                    i = 0;
                } else
                {
                    i = a1.size();
                }
                for (; k < i; k++)
                {
                    arraylist.add(a1.b(k));
                    h2.add(a1.c(k));
                }

                if (!flag1)
                {
                    break label0;
                }
                h1.a(arraylist, h2, null);
            }
            return;
        }
        h1.b(arraylist, h2, null);
    }

    private static void b(n n1, int i, a a1, View view, android.support.v4.g.a a2)
    {
        ViewGroup viewgroup = null;
        if (n1.n.a())
        {
            viewgroup = (ViewGroup)n1.n.a(i);
        }
        if (viewgroup != null)
        {
            h h1 = a1.a;
            Object obj2 = a1.d;
            boolean flag = a1.b;
            boolean flag1 = a1.e;
            Object obj = a(h1, flag);
            n1 = ((n) (b(((h) (obj2)), flag1)));
            ArrayList arraylist1 = new ArrayList();
            ArrayList arraylist = new ArrayList();
            Object obj1 = b(viewgroup, view, a2, a1, arraylist1, arraylist, obj, n1);
            if (obj != null || obj1 != null || n1 != null)
            {
                obj2 = b(n1, ((h) (obj2)), arraylist1, view);
                if (obj2 == null || ((ArrayList) (obj2)).isEmpty())
                {
                    n1 = null;
                }
                t.b(obj, view);
                a1 = ((a) (a(obj, n1, obj1, h1, a1.b)));
                if (a1 != null)
                {
                    ArrayList arraylist2 = new ArrayList();
                    android.support.v4.a.t.a(a1, obj, arraylist2, n1, ((ArrayList) (obj2)), obj1, arraylist);
                    a(viewgroup, h1, view, arraylist, obj, arraylist2, n1, ((ArrayList) (obj2)));
                    android.support.v4.a.t.a(viewgroup, arraylist, a2);
                    android.support.v4.a.t.a(viewgroup, a1);
                    android.support.v4.a.t.a(viewgroup, arraylist, a2);
                    return;
                }
            }
        }
    }

    private static void b(ArrayList arraylist, int i)
    {
        if (arraylist != null)
        {
            int k = arraylist.size() - 1;
            while (k >= 0) 
            {
                ((View)arraylist.get(k)).setVisibility(i);
                k--;
            }
        }
    }

    private static android.support.v4.g.a c(android.support.v4.g.a a1, Object obj, a a2)
    {
        Object obj1 = a2.a;
        View view = ((h) (obj1)).i();
        if (a1.isEmpty() || obj == null || view == null)
        {
            a1.clear();
            return null;
        }
        android.support.v4.g.a a3 = new android.support.v4.g.a();
        android.support.v4.a.t.a(a3, view);
        obj = a2.c;
        if (a2.b)
        {
            a2 = ((h) (obj1)).Q();
            obj = ((c) (obj)).s;
        } else
        {
            a2 = ((h) (obj1)).P();
            obj = ((c) (obj)).t;
        }
        if (obj != null)
        {
            a3.a(((Collection) (obj)));
        }
        if (a2 != null)
        {
            a2.a(((java.util.List) (obj)), a3);
            int i = ((ArrayList) (obj)).size() - 1;
            while (i >= 0) 
            {
                obj1 = (String)((ArrayList) (obj)).get(i);
                a2 = (View)a3.get(obj1);
                if (a2 == null)
                {
                    a2 = a(a1, ((String) (obj1)));
                    if (a2 != null)
                    {
                        a1.remove(a2);
                    }
                } else
                if (!((String) (obj1)).equals(p.e(a2)))
                {
                    obj1 = a(a1, ((String) (obj1)));
                    if (obj1 != null)
                    {
                        a1.put(obj1, p.e(a2));
                    }
                }
                i--;
            }
        } else
        {
            a(a1, a3);
        }
        return a3;
    }

}
