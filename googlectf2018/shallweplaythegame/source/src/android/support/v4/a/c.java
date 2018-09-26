// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            r, h, n

final class c extends r
    implements n.f
{
    static final class a
    {

        int a;
        h b;
        int c;
        int d;
        int e;
        int f;

        a()
        {
        }

        a(int i1, h h1)
        {
            a = i1;
            b = h1;
        }
    }


    static final boolean a;
    final n b;
    ArrayList c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    boolean j;
    boolean k;
    String l;
    boolean m;
    int n;
    int o;
    CharSequence p;
    int q;
    CharSequence r;
    ArrayList s;
    ArrayList t;
    boolean u;
    ArrayList v;

    public c(n n1)
    {
        c = new ArrayList();
        k = true;
        n = -1;
        u = false;
        b = n1;
    }

    private static boolean b(a a1)
    {
        a1 = a1.b;
        return a1 != null && ((h) (a1)).k && ((h) (a1)).H != null && !((h) (a1)).A && !((h) (a1)).z && a1.U();
    }

    h a(ArrayList arraylist, h h1)
    {
        h h2;
        int i1;
        i1 = 0;
        h2 = h1;
_L8:
        a a1;
        int j1;
        if (i1 >= c.size())
        {
            break MISSING_BLOCK_LABEL_448;
        }
        a1 = (a)c.get(i1);
        j1 = i1;
        h1 = h2;
        a1.a;
        JVM INSTR tableswitch 1 8: default 88
    //                   1 105
    //                   2 183
    //                   3 124
    //                   4 94
    //                   5 94
    //                   6 124
    //                   7 105
    //                   8 414;
           goto _L1 _L2 _L3 _L4 _L5 _L5 _L4 _L2 _L6
_L6:
        break MISSING_BLOCK_LABEL_414;
_L2:
        break; /* Loop/switch isn't completed */
_L5:
        break; /* Loop/switch isn't completed */
_L1:
        h1 = h2;
        j1 = i1;
_L9:
        i1 = j1 + 1;
        h2 = h1;
        if (true) goto _L8; else goto _L7
_L7:
        arraylist.add(a1.b);
        j1 = i1;
        h1 = h2;
          goto _L9
_L4:
        arraylist.remove(a1.b);
        j1 = i1;
        h1 = h2;
        if (a1.b == h2)
        {
            c.add(i1, new a(9, a1.b));
            j1 = i1 + 1;
            h1 = null;
        }
          goto _L9
_L3:
        h h3 = a1.b;
        int i2 = h3.x;
        j1 = 0;
        int k1 = arraylist.size() - 1;
        h1 = h2;
        while (k1 >= 0) 
        {
            h h4 = (h)arraylist.get(k1);
            if (h4.x == i2)
            {
                if (h4 == h3)
                {
                    j1 = 1;
                } else
                {
                    int l1 = i1;
                    h2 = h1;
                    if (h4 == h1)
                    {
                        c.add(i1, new a(9, h4));
                        l1 = i1 + 1;
                        h2 = null;
                    }
                    h1 = new a(3, h4);
                    h1.c = a1.c;
                    h1.e = a1.e;
                    h1.d = a1.d;
                    h1.f = a1.f;
                    c.add(l1, h1);
                    arraylist.remove(h4);
                    i1 = l1 + 1;
                    h1 = h2;
                }
            }
            k1--;
        }
        if (j1 != 0)
        {
            c.remove(i1);
            i1--;
        } else
        {
            a1.a = 1;
            arraylist.add(h3);
        }
        j1 = i1;
          goto _L9
        c.add(i1, new a(9, h2));
        j1 = i1 + 1;
        h1 = a1.b;
          goto _L9
        return h2;
    }

    public void a()
    {
        if (v != null)
        {
            int j1 = v.size();
            for (int i1 = 0; i1 < j1; i1++)
            {
                ((Runnable)v.get(i1)).run();
            }

            v = null;
        }
    }

    void a(int i1)
    {
        if (j)
        {
            if (n.a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("Bump nesting in ").append(this).append(" by ").append(i1).toString());
            }
            int k1 = c.size();
            int j1 = 0;
            while (j1 < k1) 
            {
                a a1 = (a)c.get(j1);
                if (a1.b != null)
                {
                    h h1 = a1.b;
                    h1.q = h1.q + i1;
                    if (n.a)
                    {
                        Log.v("FragmentManager", (new StringBuilder()).append("Bump nesting of ").append(a1.b).append(" to ").append(a1.b.q).toString());
                    }
                }
                j1++;
            }
        }
    }

    void a(a a1)
    {
        c.add(a1);
        a1.c = d;
        a1.d = e;
        a1.e = f;
        a1.f = g;
    }

    void a(h.c c1)
    {
        for (int i1 = 0; i1 < c.size(); i1++)
        {
            a a1 = (a)c.get(i1);
            if (b(a1))
            {
                a1.b.a(c1);
            }
        }

    }

    public void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        a(s1, printwriter, true);
    }

    public void a(String s1, PrintWriter printwriter, boolean flag)
    {
        int i1;
        int j1;
        if (flag)
        {
            printwriter.print(s1);
            printwriter.print("mName=");
            printwriter.print(l);
            printwriter.print(" mIndex=");
            printwriter.print(n);
            printwriter.print(" mCommitted=");
            printwriter.println(m);
            if (h != 0)
            {
                printwriter.print(s1);
                printwriter.print("mTransition=#");
                printwriter.print(Integer.toHexString(h));
                printwriter.print(" mTransitionStyle=#");
                printwriter.println(Integer.toHexString(i));
            }
            if (d != 0 || e != 0)
            {
                printwriter.print(s1);
                printwriter.print("mEnterAnim=#");
                printwriter.print(Integer.toHexString(d));
                printwriter.print(" mExitAnim=#");
                printwriter.println(Integer.toHexString(e));
            }
            if (f != 0 || g != 0)
            {
                printwriter.print(s1);
                printwriter.print("mPopEnterAnim=#");
                printwriter.print(Integer.toHexString(f));
                printwriter.print(" mPopExitAnim=#");
                printwriter.println(Integer.toHexString(g));
            }
            if (o != 0 || p != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbTitleRes=#");
                printwriter.print(Integer.toHexString(o));
                printwriter.print(" mBreadCrumbTitleText=");
                printwriter.println(p);
            }
            if (q != 0 || r != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbShortTitleRes=#");
                printwriter.print(Integer.toHexString(q));
                printwriter.print(" mBreadCrumbShortTitleText=");
                printwriter.println(r);
            }
        }
        if (c.isEmpty())
        {
            break MISSING_BLOCK_LABEL_724;
        }
        printwriter.print(s1);
        printwriter.println("Operations:");
        (new StringBuilder()).append(s1).append("    ").toString();
        j1 = c.size();
        i1 = 0;
_L13:
        a a1;
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_724;
        }
        a1 = (a)c.get(i1);
        a1.a;
        JVM INSTR tableswitch 0 9: default 440
    //                   0 644
    //                   1 652
    //                   2 660
    //                   3 668
    //                   4 676
    //                   5 684
    //                   6 692
    //                   7 700
    //                   8 708
    //                   9 716;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_716;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        String s2 = (new StringBuilder()).append("cmd=").append(a1.a).toString();
_L14:
        printwriter.print(s1);
        printwriter.print("  Op #");
        printwriter.print(i1);
        printwriter.print(": ");
        printwriter.print(s2);
        printwriter.print(" ");
        printwriter.println(a1.b);
        if (flag)
        {
            if (a1.c != 0 || a1.d != 0)
            {
                printwriter.print(s1);
                printwriter.print("enterAnim=#");
                printwriter.print(Integer.toHexString(a1.c));
                printwriter.print(" exitAnim=#");
                printwriter.println(Integer.toHexString(a1.d));
            }
            if (a1.e != 0 || a1.f != 0)
            {
                printwriter.print(s1);
                printwriter.print("popEnterAnim=#");
                printwriter.print(Integer.toHexString(a1.e));
                printwriter.print(" popExitAnim=#");
                printwriter.println(Integer.toHexString(a1.f));
            }
        }
        i1++;
        if (true) goto _L13; else goto _L12
_L12:
        s2 = "NULL";
          goto _L14
_L3:
        s2 = "ADD";
          goto _L14
_L4:
        s2 = "REPLACE";
          goto _L14
_L5:
        s2 = "REMOVE";
          goto _L14
_L6:
        s2 = "HIDE";
          goto _L14
_L7:
        s2 = "SHOW";
          goto _L14
_L8:
        s2 = "DETACH";
          goto _L14
_L9:
        s2 = "ATTACH";
          goto _L14
_L10:
        s2 = "SET_PRIMARY_NAV";
          goto _L14
        s2 = "UNSET_PRIMARY_NAV";
          goto _L14
    }

    void a(boolean flag)
    {
        int i1 = c.size() - 1;
_L11:
        a a1;
        h h1;
        if (i1 < 0)
        {
            break MISSING_BLOCK_LABEL_309;
        }
        a1 = (a)c.get(i1);
        h1 = a1.b;
        if (h1 != null)
        {
            h1.a(android.support.v4.a.n.d(h), i);
        }
        a1.a;
        JVM INSTR tableswitch 1 9: default 108
    //                   1 139
    //                   2 108
    //                   3 191
    //                   4 211
    //                   5 230
    //                   6 249
    //                   7 268
    //                   8 287
    //                   9 298;
           goto _L1 _L2 _L1 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_298;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown cmd: ").append(a1.a).toString());
_L2:
        h1.a(a1.f);
        b.h(h1);
_L12:
        if (!u && a1.a != 3 && h1 != null)
        {
            b.e(h1);
        }
        i1--;
        if (true) goto _L11; else goto _L10
_L10:
        h1.a(a1.e);
        b.a(h1, false);
          goto _L12
_L4:
        h1.a(a1.e);
        b.j(h1);
          goto _L12
_L5:
        h1.a(a1.f);
        b.i(h1);
          goto _L12
_L6:
        h1.a(a1.e);
        b.l(h1);
          goto _L12
_L7:
        h1.a(a1.f);
        b.k(h1);
          goto _L12
_L8:
        b.o(null);
          goto _L12
        b.o(h1);
          goto _L12
        if (!u && flag)
        {
            b.a(b.l, true);
        }
        return;
    }

    boolean a(ArrayList arraylist, int i1, int j1)
    {
        if (j1 == i1)
        {
            return false;
        }
        int l2 = c.size();
        int l1 = -1;
        int i2 = 0;
        while (i2 < l2) 
        {
            a a1 = (a)c.get(i2);
            int k1;
            if (a1.b != null)
            {
                k1 = a1.b.x;
            } else
            {
                k1 = 0;
            }
            if (k1 != 0 && k1 != l1)
            {
                for (l1 = i1; l1 < j1; l1++)
                {
                    c c1 = (c)arraylist.get(l1);
                    int i3 = c1.c.size();
                    int k2;
                    for (int j2 = 0; j2 < i3; j2++)
                    {
                        a a2 = (a)c1.c.get(j2);
                        if (a2.b != null)
                        {
                            k2 = a2.b.x;
                        } else
                        {
                            k2 = 0;
                        }
                        if (k2 == k1)
                        {
                            return true;
                        }
                    }

                }

            } else
            {
                k1 = l1;
            }
            i2++;
            l1 = k1;
        }
        return false;
    }

    public boolean a(ArrayList arraylist, ArrayList arraylist1)
    {
        if (n.a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Run: ").append(this).toString());
        }
        arraylist.add(this);
        arraylist1.add(Boolean.valueOf(false));
        if (j)
        {
            b.a(this);
        }
        return true;
    }

    h b(ArrayList arraylist, h h1)
    {
        h h2;
        int i1;
        i1 = 0;
        h2 = h1;
_L8:
        a a1;
        if (i1 >= c.size())
        {
            break MISSING_BLOCK_LABEL_145;
        }
        a1 = (a)c.get(i1);
        h1 = h2;
        a1.a;
        JVM INSTR tableswitch 1 9: default 88
    //                   1 101
    //                   2 90
    //                   3 116
    //                   4 90
    //                   5 90
    //                   6 116
    //                   7 101
    //                   8 140
    //                   9 131;
           goto _L1 _L2 _L3 _L4 _L3 _L3 _L4 _L2 _L5 _L6
_L5:
        break MISSING_BLOCK_LABEL_140;
_L2:
        break; /* Loop/switch isn't completed */
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        h1 = h2;
_L9:
        i1++;
        h2 = h1;
        if (true) goto _L8; else goto _L7
_L7:
        arraylist.remove(a1.b);
        h1 = h2;
          goto _L9
_L4:
        arraylist.add(a1.b);
        h1 = h2;
          goto _L9
_L6:
        h1 = a1.b;
          goto _L9
        h1 = null;
          goto _L9
        return h2;
    }

    void b()
    {
        int i1;
        int j1;
        j1 = c.size();
        i1 = 0;
_L11:
        a a1;
        h h1;
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_303;
        }
        a1 = (a)c.get(i1);
        h1 = a1.b;
        if (h1 != null)
        {
            h1.a(h, i);
        }
        a1.a;
        JVM INSTR tableswitch 1 9: default 104
    //                   1 135
    //                   2 104
    //                   3 186
    //                   4 205
    //                   5 224
    //                   6 243
    //                   7 262
    //                   8 281
    //                   9 292;
           goto _L1 _L2 _L1 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_292;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown cmd: ").append(a1.a).toString());
_L2:
        h1.a(a1.c);
        b.a(h1, false);
_L12:
        if (!u && a1.a != 1 && h1 != null)
        {
            b.e(h1);
        }
        i1++;
        if (true) goto _L11; else goto _L10
_L10:
        h1.a(a1.d);
        b.h(h1);
          goto _L12
_L4:
        h1.a(a1.d);
        b.i(h1);
          goto _L12
_L5:
        h1.a(a1.c);
        b.j(h1);
          goto _L12
_L6:
        h1.a(a1.d);
        b.k(h1);
          goto _L12
_L7:
        h1.a(a1.c);
        b.l(h1);
          goto _L12
_L8:
        b.o(h1);
          goto _L12
        b.o(null);
          goto _L12
        if (!u)
        {
            b.a(b.l, true);
        }
        return;
    }

    boolean b(int i1)
    {
        int l1 = c.size();
        int k1;
        for (int j1 = 0; j1 < l1; j1++)
        {
            a a1 = (a)c.get(j1);
            if (a1.b != null)
            {
                k1 = a1.b.x;
            } else
            {
                k1 = 0;
            }
            if (k1 != 0 && k1 == i1)
            {
                return true;
            }
        }

        return false;
    }

    boolean c()
    {
        boolean flag1 = false;
        int i1 = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i1 < c.size())
                {
                    if (!b((a)c.get(i1)))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i1++;
        } while (true);
    }

    public String d()
    {
        return l;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("BackStackEntry{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (n >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(n);
        }
        if (l != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(l);
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
