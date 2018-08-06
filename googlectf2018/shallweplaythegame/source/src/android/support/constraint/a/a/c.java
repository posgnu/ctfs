// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;

import android.support.constraint.a.b;
import android.support.constraint.a.e;
import java.util.ArrayList;
import java.util.Arrays;

// Referenced classes of package android.support.constraint.a.a:
//            h, b, a, e, 
//            g, d

public class c extends h
{

    static boolean ac = true;
    protected e aa;
    protected e ab;
    int ad;
    int ae;
    int af;
    int ag;
    int ah;
    int ai;
    private g ak;
    private int al;
    private int am;
    private android.support.constraint.a.a.b an[];
    private android.support.constraint.a.a.b ao[];
    private android.support.constraint.a.a.b ap[];
    private int aq;
    private boolean ar[];
    private android.support.constraint.a.a.b as[];
    private boolean at;
    private boolean au;

    public c()
    {
        aa = new e();
        ab = null;
        al = 0;
        am = 0;
        an = new android.support.constraint.a.a.b[4];
        ao = new android.support.constraint.a.a.b[4];
        ap = new android.support.constraint.a.a.b[4];
        aq = 2;
        ar = new boolean[3];
        as = new android.support.constraint.a.a.b[4];
        at = false;
        au = false;
    }

    private void J()
    {
        al = 0;
        am = 0;
    }

    private int a(e e1, android.support.constraint.a.a.b ab1[], android.support.constraint.a.a.b b1, int i, boolean aflag[])
    {
        aflag[0] = true;
        aflag[1] = false;
        ab1[0] = null;
        ab1[2] = null;
        ab1[1] = null;
        ab1[3] = null;
        if (i != 0) goto _L2; else goto _L1
_L1:
        android.support.constraint.a.a.b b2;
        android.support.constraint.a.a.b b3;
        android.support.constraint.a.a.b b4;
        android.support.constraint.a.a.b b5;
        android.support.constraint.a.a.b b6;
        android.support.constraint.a.a.b b7;
        int j;
        boolean flag;
        boolean flag1;
        if (b1.i.c != null && b1.i.c.a != this)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        b1.Y = null;
        b4 = null;
        if (b1.d() != 8)
        {
            b4 = b1;
        }
        b5 = null;
        j = 0;
        b3 = b1;
        b2 = b4;
        if (b3.k.c == null)
        {
            break MISSING_BLOCK_LABEL_1056;
        }
        b3.Y = null;
        if (b3.d() != 8)
        {
            if (b2 == null)
            {
                b2 = b3;
            }
            if (b4 != null && b4 != b3)
            {
                b4.Y = b3;
            }
            b4 = b3;
        } else
        {
            e1.c(b3.i.f, b3.i.c.f, 0, 5);
            e1.c(b3.k.f, b3.i.f, 0, 5);
        }
        i = j;
        if (b3.d() != 8)
        {
            i = j;
            if (b3.G == b.a.c)
            {
                if (b3.H == b.a.c)
                {
                    aflag[0] = false;
                }
                i = j;
                if (b3.u <= 0.0F)
                {
                    aflag[0] = false;
                    if (j + 1 >= an.length)
                    {
                        an = (android.support.constraint.a.a.b[])Arrays.copyOf(an, an.length * 2);
                    }
                    an[j] = b3;
                    i = j + 1;
                }
            }
        }
        if (b3.k.c.a.i.c != null) goto _L4; else goto _L3
_L3:
        j = i;
        b7 = b2;
        b6 = b4;
_L10:
        flag1 = flag;
        if (b3.k.c != null)
        {
            flag1 = flag;
            if (b3.k.c.a != this)
            {
                flag1 = false;
            }
        }
        if (b1.i.c == null || b5.k.c == null)
        {
            aflag[1] = true;
        }
        b1.U = flag1;
        b5.Y = null;
        ab1[0] = b1;
        ab1[2] = b7;
        ab1[1] = b5;
        ab1[3] = b6;
        return j;
_L4:
        b6 = b4;
        b7 = b2;
        j = i;
        if (b3.k.c.a.i.c.a == b3)
        {
            b6 = b4;
            b7 = b2;
            j = i;
            if (b3.k.c.a != b3)
            {
                b3 = b3.k.c.a;
                b5 = b3;
                j = i;
                break MISSING_BLOCK_LABEL_91;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (b1.j.c != null && b1.j.c.a != this)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        b1.Z = null;
        b4 = null;
        if (b1.d() != 8)
        {
            b4 = b1;
        }
        b5 = null;
        j = 0;
        b3 = b1;
        b2 = b4;
        if (b3.l.c == null)
        {
            break MISSING_BLOCK_LABEL_1036;
        }
        b3.Z = null;
        if (b3.d() != 8)
        {
            if (b2 == null)
            {
                b2 = b3;
            }
            if (b4 != null && b4 != b3)
            {
                b4.Z = b3;
            }
            b4 = b3;
        } else
        {
            e1.c(b3.j.f, b3.j.c.f, 0, 5);
            e1.c(b3.l.f, b3.j.f, 0, 5);
        }
        i = j;
        if (b3.d() != 8)
        {
            i = j;
            if (b3.H == b.a.c)
            {
                if (b3.G == b.a.c)
                {
                    aflag[0] = false;
                }
                i = j;
                if (b3.u <= 0.0F)
                {
                    aflag[0] = false;
                    if (j + 1 >= an.length)
                    {
                        an = (android.support.constraint.a.a.b[])Arrays.copyOf(an, an.length * 2);
                    }
                    an[j] = b3;
                    i = j + 1;
                }
            }
        }
        if (b3.l.c.a.j.c != null) goto _L6; else goto _L5
_L5:
        j = i;
        b7 = b2;
        b6 = b4;
_L8:
        flag1 = flag;
        if (b3.l.c != null)
        {
            flag1 = flag;
            if (b3.l.c.a != this)
            {
                flag1 = false;
            }
        }
        if (b1.j.c == null || b5.l.c == null)
        {
            aflag[1] = true;
        }
        b1.V = flag1;
        b5.Z = null;
        ab1[0] = b1;
        ab1[2] = b7;
        ab1[1] = b5;
        ab1[3] = b6;
        return j;
_L6:
        b6 = b4;
        b7 = b2;
        j = i;
        if (b3.l.c.a.j.c.a == b3)
        {
            b6 = b4;
            b7 = b2;
            j = i;
            if (b3.l.c.a != b3)
            {
                b3 = b3.l.c.a;
                b5 = b3;
                j = i;
                break MISSING_BLOCK_LABEL_592;
            }
        }
        continue; /* Loop/switch isn't completed */
        b6 = b4;
        b7 = b2;
        if (true) goto _L8; else goto _L7
_L7:
        b6 = b4;
        b7 = b2;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private boolean a(e e1)
    {
        int l2;
        l2 = aj.size();
        for (int i = 0; i < l2; i++)
        {
            android.support.constraint.a.a.b b1 = (android.support.constraint.a.a.b)aj.get(i);
            b1.a = -1;
            b1.b = -1;
            if (b1.G == b.a.c || b1.H == b.a.c)
            {
                b1.a = 1;
                b1.b = 1;
            }
        }

        break MISSING_BLOCK_LABEL_369;
_L4:
        int l;
        int k1;
        int l1;
        int i2;
        android.support.constraint.a.a.b b2;
        int j;
        int i1;
        int j2;
        int k2;
        if (i1 == 0 && j == 0)
        {
            l = 1;
        } else
        if (i2 == i1 && l1 == j)
        {
            l = 1;
        }
        k1++;
        i2 = i1;
        l1 = j;
_L2:
        if (l == 0)
        {
            j2 = 0;
            j = 0;
            i1 = 0;
            while (j2 < l2) 
            {
                b2 = (android.support.constraint.a.a.b)aj.get(j2);
                if (b2.a == -1)
                {
                    if (G == android.support.constraint.a.a.b.a.b)
                    {
                        b2.a = 1;
                    } else
                    {
                        android.support.constraint.a.a.e.b(this, e1, b2);
                    }
                }
                if (b2.b == -1)
                {
                    if (H == android.support.constraint.a.a.b.a.b)
                    {
                        b2.b = 1;
                    } else
                    {
                        android.support.constraint.a.a.e.c(this, e1, b2);
                    }
                }
                k2 = i1;
                if (b2.b == -1)
                {
                    k2 = i1 + 1;
                }
                if (b2.a == -1)
                {
                    j++;
                }
                j2++;
                i1 = k2;
            }
        } else
        {
            l = 0;
            int k = 0;
            int j1;
            for (k1 = 0; l < l2; k1 = j1)
            {
label0:
                {
                    e1 = (android.support.constraint.a.a.b)aj.get(l);
                    if (((android.support.constraint.a.a.b) (e1)).a != 1)
                    {
                        j1 = k1;
                        if (((android.support.constraint.a.a.b) (e1)).a != -1)
                        {
                            break label0;
                        }
                    }
                    j1 = k1 + 1;
                }
                if (((android.support.constraint.a.a.b) (e1)).b == 1 || ((android.support.constraint.a.a.b) (e1)).b == -1)
                {
                    k++;
                }
                l++;
            }

            return k1 == 0 && k == 0;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        k1 = 0;
        l1 = 0;
        i2 = 0;
        l = 0;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void b(e e1)
    {
        int k1 = 0;
        while (k1 < al) 
        {
            android.support.constraint.a.a.b b8 = ap[k1];
            int k3 = a(e1, as, ap[k1], 0, ar);
            Object obj1 = as[2];
            if (obj1 != null)
            {
                if (ar[1])
                {
                    int i = b8.n();
                    while (obj1 != null) 
                    {
                        e1.a(((android.support.constraint.a.a.b) (obj1)).i.f, i);
                        android.support.constraint.a.a.b b1 = ((android.support.constraint.a.a.b) (obj1)).Y;
                        i += ((android.support.constraint.a.a.b) (obj1)).i.d() + ((android.support.constraint.a.a.b) (obj1)).h() + ((android.support.constraint.a.a.b) (obj1)).k.d();
                        obj1 = b1;
                    }
                } else
                {
                    boolean flag;
                    boolean flag2;
                    boolean flag3;
                    if (b8.S == 0)
                    {
                        flag2 = true;
                    } else
                    {
                        flag2 = false;
                    }
                    if (b8.S == 2)
                    {
                        flag3 = true;
                    } else
                    {
                        flag3 = false;
                    }
                    if (G == android.support.constraint.a.a.b.a.b)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    if ((aq == 2 || aq == 8) && ar[0] && b8.U && !flag3 && !flag && b8.S == 0)
                    {
                        android.support.constraint.a.a.e.a(this, e1, k3, b8);
                    } else
                    if (k3 == 0 || flag3)
                    {
                        android.support.constraint.a.a.b b6 = null;
                        boolean flag1 = false;
                        Object obj5 = null;
                        Object obj3 = obj1;
                        while (obj3 != null) 
                        {
                            android.support.constraint.a.a.b b2 = ((android.support.constraint.a.a.b) (obj3)).Y;
                            if (b2 == null)
                            {
                                b6 = as[1];
                                flag1 = true;
                            }
                            if (flag3)
                            {
                                a a2 = ((android.support.constraint.a.a.b) (obj3)).i;
                                k3 = a2.d();
                                if (obj5 != null)
                                {
                                    k3 += ((android.support.constraint.a.a.b) (obj5)).k.d();
                                }
                                byte byte0 = 1;
                                if (obj1 != obj3)
                                {
                                    byte0 = 3;
                                }
                                e1.a(a2.f, a2.c.f, k3, byte0);
                                if (((android.support.constraint.a.a.b) (obj3)).G == b.a.c)
                                {
                                    a a4 = ((android.support.constraint.a.a.b) (obj3)).k;
                                    if (((android.support.constraint.a.a.b) (obj3)).c == 1)
                                    {
                                        k3 = Math.max(((android.support.constraint.a.a.b) (obj3)).e, ((android.support.constraint.a.a.b) (obj3)).h());
                                        e1.c(a4.f, a2.f, k3, 3);
                                    } else
                                    {
                                        e1.a(a2.f, a2.c.f, a2.d, 3);
                                        e1.b(a4.f, a2.f, ((android.support.constraint.a.a.b) (obj3)).e, 3);
                                    }
                                }
                            } else
                            if (!flag2 && flag1 && obj5 != null)
                            {
                                if (((android.support.constraint.a.a.b) (obj3)).k.c == null)
                                {
                                    e1.a(((android.support.constraint.a.a.b) (obj3)).k.f, ((android.support.constraint.a.a.b) (obj3)).q());
                                } else
                                {
                                    k3 = ((android.support.constraint.a.a.b) (obj3)).k.d();
                                    e1.c(((android.support.constraint.a.a.b) (obj3)).k.f, b6.k.c.f, -k3, 5);
                                }
                            } else
                            if (!flag2 && !flag1 && obj5 == null)
                            {
                                if (((android.support.constraint.a.a.b) (obj3)).i.c == null)
                                {
                                    e1.a(((android.support.constraint.a.a.b) (obj3)).i.f, ((android.support.constraint.a.a.b) (obj3)).n());
                                } else
                                {
                                    k3 = ((android.support.constraint.a.a.b) (obj3)).i.d();
                                    e1.c(((android.support.constraint.a.a.b) (obj3)).i.f, b8.i.c.f, k3, 5);
                                }
                            } else
                            {
                                a a5 = ((android.support.constraint.a.a.b) (obj3)).i;
                                a a6 = ((android.support.constraint.a.a.b) (obj3)).k;
                                k3 = a5.d();
                                int l3 = a6.d();
                                e1.a(a5.f, a5.c.f, k3, 1);
                                e1.b(a6.f, a6.c.f, -l3, 1);
                                android.support.constraint.a.g g4;
                                android.support.constraint.a.g g6;
                                if (a5.c != null)
                                {
                                    g4 = a5.c.f;
                                } else
                                {
                                    g4 = null;
                                }
                                g6 = g4;
                                if (obj5 == null)
                                {
                                    if (b8.i.c != null)
                                    {
                                        g4 = b8.i.c.f;
                                    } else
                                    {
                                        g4 = null;
                                    }
                                    g6 = g4;
                                }
                                if (b2 == null)
                                {
                                    if (b6.k.c != null)
                                    {
                                        b2 = b6.k.c.a;
                                    } else
                                    {
                                        b2 = null;
                                    }
                                }
                                if (b2 != null)
                                {
                                    g4 = b2.i.f;
                                    if (flag1)
                                    {
                                        if (b6.k.c != null)
                                        {
                                            g4 = b6.k.c.f;
                                        } else
                                        {
                                            g4 = null;
                                        }
                                    }
                                    if (g6 != null && g4 != null)
                                    {
                                        e1.a(a5.f, g6, k3, 0.5F, g4, a6.f, l3, 4);
                                    }
                                }
                            }
                            if (flag1)
                            {
                                b2 = null;
                            }
                            obj5 = obj3;
                            obj3 = b2;
                        }
                        if (flag3)
                        {
                            a a1 = ((android.support.constraint.a.a.b) (obj1)).i;
                            a a3 = b6.k;
                            int j = a1.d();
                            int l1 = a3.d();
                            android.support.constraint.a.g g1;
                            if (b8.i.c != null)
                            {
                                g1 = b8.i.c.f;
                            } else
                            {
                                g1 = null;
                            }
                            if (b6.k.c != null)
                            {
                                obj1 = b6.k.c.f;
                            } else
                            {
                                obj1 = null;
                            }
                            if (g1 != null && obj1 != null)
                            {
                                e1.b(a3.f, ((android.support.constraint.a.g) (obj1)), -l1, 1);
                                e1.a(a1.f, g1, j, b8.E, ((android.support.constraint.a.g) (obj1)), a3.f, l1, 4);
                            }
                        }
                    } else
                    {
                        float f = 0.0F;
                        Object obj4 = null;
                        Object obj = obj1;
                        obj1 = obj4;
                        while (obj != null) 
                        {
                            android.support.constraint.a.a.b b4;
                            if (((android.support.constraint.a.a.b) (obj)).G != b.a.c)
                            {
                                int i2 = ((android.support.constraint.a.a.b) (obj)).i.d();
                                int k = i2;
                                if (obj1 != null)
                                {
                                    k = i2 + ((android.support.constraint.a.a.b) (obj1)).k.d();
                                }
                                i2 = 3;
                                if (((android.support.constraint.a.a.b) (obj)).i.c.a.G == b.a.c)
                                {
                                    i2 = 2;
                                }
                                e1.a(((android.support.constraint.a.a.b) (obj)).i.f, ((android.support.constraint.a.a.b) (obj)).i.c.f, k, i2);
                                i2 = ((android.support.constraint.a.a.b) (obj)).k.d();
                                k = i2;
                                if (((android.support.constraint.a.a.b) (obj)).k.c.a.i.c != null)
                                {
                                    k = i2;
                                    if (((android.support.constraint.a.a.b) (obj)).k.c.a.i.c.a == obj)
                                    {
                                        k = i2 + ((android.support.constraint.a.a.b) (obj)).k.c.a.i.d();
                                    }
                                }
                                i2 = 3;
                                if (((android.support.constraint.a.a.b) (obj)).k.c.a.G == b.a.c)
                                {
                                    i2 = 2;
                                }
                                e1.b(((android.support.constraint.a.a.b) (obj)).k.f, ((android.support.constraint.a.a.b) (obj)).k.c.f, -k, i2);
                            } else
                            {
                                f += ((android.support.constraint.a.a.b) (obj)).W;
                                int l = 0;
                                if (((android.support.constraint.a.a.b) (obj)).k.c != null)
                                {
                                    int j2 = ((android.support.constraint.a.a.b) (obj)).k.d();
                                    l = j2;
                                    if (obj != as[3])
                                    {
                                        l = j2 + ((android.support.constraint.a.a.b) (obj)).k.c.a.i.d();
                                    }
                                }
                                e1.a(((android.support.constraint.a.a.b) (obj)).k.f, ((android.support.constraint.a.a.b) (obj)).i.f, 0, 1);
                                e1.b(((android.support.constraint.a.a.b) (obj)).k.f, ((android.support.constraint.a.a.b) (obj)).k.c.f, -l, 1);
                            }
                            b4 = ((android.support.constraint.a.a.b) (obj)).Y;
                            obj1 = obj;
                            obj = b4;
                        }
                        if (k3 == 1)
                        {
                            android.support.constraint.a.a.b b3 = an[0];
                            int k2 = b3.i.d();
                            int i1 = k2;
                            if (b3.i.c != null)
                            {
                                i1 = k2 + b3.i.c.d();
                            }
                            int i3 = b3.k.d();
                            k2 = i3;
                            if (b3.k.c != null)
                            {
                                k2 = i3 + b3.k.c.d();
                            }
                            android.support.constraint.a.g g2 = b8.k.c.f;
                            if (b3 == as[3])
                            {
                                g2 = as[1].k.c.f;
                            }
                            if (b3.c == 1)
                            {
                                e1.a(b8.i.f, b8.i.c.f, i1, 1);
                                e1.b(b8.k.f, g2, -k2, 1);
                                e1.c(b8.k.f, b8.i.f, b8.h(), 2);
                            } else
                            {
                                e1.c(b3.i.f, b3.i.c.f, i1, 1);
                                e1.c(b3.k.f, g2, -k2, 1);
                            }
                        } else
                        {
                            int j1 = 0;
                            while (j1 < k3 - 1) 
                            {
                                android.support.constraint.a.a.b b5 = an[j1];
                                android.support.constraint.a.a.b b7 = an[j1 + 1];
                                android.support.constraint.a.g g5 = b5.i.f;
                                android.support.constraint.a.g g7 = b5.k.f;
                                android.support.constraint.a.g g8 = b7.i.f;
                                android.support.constraint.a.g g3 = b7.k.f;
                                if (b7 == as[3])
                                {
                                    g3 = as[1].k.f;
                                }
                                int j3 = b5.i.d();
                                int l2 = j3;
                                if (b5.i.c != null)
                                {
                                    l2 = j3;
                                    if (b5.i.c.a.k.c != null)
                                    {
                                        l2 = j3;
                                        if (b5.i.c.a.k.c.a == b5)
                                        {
                                            l2 = j3 + b5.i.c.a.k.d();
                                        }
                                    }
                                }
                                e1.a(g5, b5.i.c.f, l2, 2);
                                j3 = b5.k.d();
                                if (b5.k.c != null && b5.Y != null)
                                {
                                    Object obj2;
                                    if (b5.Y.i.c != null)
                                    {
                                        l2 = b5.Y.i.d();
                                    } else
                                    {
                                        l2 = 0;
                                    }
                                    l2 += j3;
                                } else
                                {
                                    l2 = j3;
                                }
                                e1.b(g7, b5.k.c.f, -l2, 2);
                                if (j1 + 1 == k3 - 1)
                                {
                                    j3 = b7.i.d();
                                    l2 = j3;
                                    if (b7.i.c != null)
                                    {
                                        l2 = j3;
                                        if (b7.i.c.a.k.c != null)
                                        {
                                            l2 = j3;
                                            if (b7.i.c.a.k.c.a == b7)
                                            {
                                                l2 = j3 + b7.i.c.a.k.d();
                                            }
                                        }
                                    }
                                    e1.a(g8, b7.i.c.f, l2, 2);
                                    obj2 = b7.k;
                                    if (b7 == as[3])
                                    {
                                        obj2 = as[1].k;
                                    }
                                    j3 = ((a) (obj2)).d();
                                    l2 = j3;
                                    if (((a) (obj2)).c != null)
                                    {
                                        l2 = j3;
                                        if (((a) (obj2)).c.a.i.c != null)
                                        {
                                            l2 = j3;
                                            if (((a) (obj2)).c.a.i.c.a == b7)
                                            {
                                                l2 = j3 + ((a) (obj2)).c.a.i.d();
                                            }
                                        }
                                    }
                                    e1.b(g3, ((a) (obj2)).c.f, -l2, 2);
                                }
                                if (b8.f > 0)
                                {
                                    e1.b(g7, g5, b8.f, 2);
                                }
                                obj2 = e1.b();
                                ((b) (obj2)).a(b5.W, f, b7.W, g5, b5.i.d(), g7, b5.k.d(), g8, b7.i.d(), g3, b7.k.d());
                                e1.a(((b) (obj2)));
                                j1++;
                            }
                        }
                    }
                }
            }
            k1++;
        }
    }

    private void c(e e1)
    {
        int l3 = 0;
        while (l3 < am) 
        {
            android.support.constraint.a.a.b b8 = ao[l3];
            int k4 = a(e1, as, ao[l3], 1, ar);
            Object obj1 = as[2];
            if (obj1 != null)
            {
                if (ar[1])
                {
                    int i = b8.o();
                    while (obj1 != null) 
                    {
                        e1.a(((android.support.constraint.a.a.b) (obj1)).j.f, i);
                        android.support.constraint.a.a.b b1 = ((android.support.constraint.a.a.b) (obj1)).Z;
                        i += ((android.support.constraint.a.a.b) (obj1)).j.d() + ((android.support.constraint.a.a.b) (obj1)).l() + ((android.support.constraint.a.a.b) (obj1)).l.d();
                        obj1 = b1;
                    }
                } else
                {
                    boolean flag;
                    boolean flag2;
                    boolean flag3;
                    if (b8.T == 0)
                    {
                        flag2 = true;
                    } else
                    {
                        flag2 = false;
                    }
                    if (b8.T == 2)
                    {
                        flag3 = true;
                    } else
                    {
                        flag3 = false;
                    }
                    if (H == android.support.constraint.a.a.b.a.b)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    if ((aq == 2 || aq == 8) && ar[0] && b8.V && !flag3 && !flag && b8.T == 0)
                    {
                        android.support.constraint.a.a.e.b(this, e1, k4, b8);
                    } else
                    if (k4 == 0 || flag3)
                    {
                        android.support.constraint.a.a.b b6 = null;
                        boolean flag1 = false;
                        Object obj6 = null;
                        Object obj3 = obj1;
                        while (obj3 != null) 
                        {
                            android.support.constraint.a.a.b b2 = ((android.support.constraint.a.a.b) (obj3)).Z;
                            if (b2 == null)
                            {
                                b6 = as[1];
                                flag1 = true;
                            }
                            if (flag3)
                            {
                                a a3 = ((android.support.constraint.a.a.b) (obj3)).j;
                                k4 = a3.d();
                                int k1 = k4;
                                if (obj6 != null)
                                {
                                    k1 = k4 + ((android.support.constraint.a.a.b) (obj6)).l.d();
                                }
                                k4 = 1;
                                if (obj1 != obj3)
                                {
                                    k4 = 3;
                                }
                                android.support.constraint.a.g g6 = null;
                                Object obj5 = null;
                                int l4;
                                if (a3.c != null)
                                {
                                    g6 = a3.f;
                                    obj5 = a3.c.f;
                                    l4 = k1;
                                } else
                                {
                                    l4 = k1;
                                    if (((android.support.constraint.a.a.b) (obj3)).m.c != null)
                                    {
                                        g6 = ((android.support.constraint.a.a.b) (obj3)).m.f;
                                        obj5 = ((android.support.constraint.a.a.b) (obj3)).m.c.f;
                                        l4 = k1 - a3.d();
                                    }
                                }
                                if (g6 != null && obj5 != null)
                                {
                                    e1.a(g6, ((android.support.constraint.a.g) (obj5)), l4, k4);
                                }
                                if (((android.support.constraint.a.a.b) (obj3)).H == b.a.c)
                                {
                                    obj5 = ((android.support.constraint.a.a.b) (obj3)).l;
                                    if (((android.support.constraint.a.a.b) (obj3)).d == 1)
                                    {
                                        k1 = Math.max(((android.support.constraint.a.a.b) (obj3)).g, ((android.support.constraint.a.a.b) (obj3)).l());
                                        e1.c(((a) (obj5)).f, a3.f, k1, 3);
                                    } else
                                    {
                                        e1.a(a3.f, a3.c.f, a3.d, 3);
                                        e1.b(((a) (obj5)).f, a3.f, ((android.support.constraint.a.a.b) (obj3)).g, 3);
                                    }
                                }
                            } else
                            if (!flag2 && flag1 && obj6 != null)
                            {
                                if (((android.support.constraint.a.a.b) (obj3)).l.c == null)
                                {
                                    e1.a(((android.support.constraint.a.a.b) (obj3)).l.f, ((android.support.constraint.a.a.b) (obj3)).p());
                                } else
                                {
                                    int l1 = ((android.support.constraint.a.a.b) (obj3)).l.d();
                                    e1.c(((android.support.constraint.a.a.b) (obj3)).l.f, b6.l.c.f, -l1, 5);
                                }
                            } else
                            if (!flag2 && !flag1 && obj6 == null)
                            {
                                if (((android.support.constraint.a.a.b) (obj3)).j.c == null)
                                {
                                    e1.a(((android.support.constraint.a.a.b) (obj3)).j.f, ((android.support.constraint.a.a.b) (obj3)).o());
                                } else
                                {
                                    int i2 = ((android.support.constraint.a.a.b) (obj3)).j.d();
                                    e1.c(((android.support.constraint.a.a.b) (obj3)).j.f, b8.j.c.f, i2, 5);
                                }
                            } else
                            {
                                a a4 = ((android.support.constraint.a.a.b) (obj3)).j;
                                a a5 = ((android.support.constraint.a.a.b) (obj3)).l;
                                int j2 = a4.d();
                                k4 = a5.d();
                                e1.a(a4.f, a4.c.f, j2, 1);
                                e1.b(a5.f, a5.c.f, -k4, 1);
                                android.support.constraint.a.g g4;
                                android.support.constraint.a.g g7;
                                if (a4.c != null)
                                {
                                    g4 = a4.c.f;
                                } else
                                {
                                    g4 = null;
                                }
                                g7 = g4;
                                if (obj6 == null)
                                {
                                    if (b8.j.c != null)
                                    {
                                        g4 = b8.j.c.f;
                                    } else
                                    {
                                        g4 = null;
                                    }
                                    g7 = g4;
                                }
                                if (b2 == null)
                                {
                                    if (b6.l.c != null)
                                    {
                                        b2 = b6.l.c.a;
                                    } else
                                    {
                                        b2 = null;
                                    }
                                }
                                if (b2 != null)
                                {
                                    g4 = b2.j.f;
                                    if (flag1)
                                    {
                                        if (b6.l.c != null)
                                        {
                                            g4 = b6.l.c.f;
                                        } else
                                        {
                                            g4 = null;
                                        }
                                    }
                                    if (g7 != null && g4 != null)
                                    {
                                        e1.a(a4.f, g7, j2, 0.5F, g4, a5.f, k4, 4);
                                    }
                                }
                            }
                            if (flag1)
                            {
                                b2 = null;
                            }
                            obj6 = obj3;
                            obj3 = b2;
                        }
                        if (flag3)
                        {
                            a a1 = ((android.support.constraint.a.a.b) (obj1)).j;
                            a a2 = b6.l;
                            int j = a1.d();
                            int k2 = a2.d();
                            android.support.constraint.a.g g1;
                            if (b8.j.c != null)
                            {
                                g1 = b8.j.c.f;
                            } else
                            {
                                g1 = null;
                            }
                            if (b6.l.c != null)
                            {
                                obj1 = b6.l.c.f;
                            } else
                            {
                                obj1 = null;
                            }
                            if (g1 != null && obj1 != null)
                            {
                                e1.b(a2.f, ((android.support.constraint.a.g) (obj1)), -k2, 1);
                                e1.a(a1.f, g1, j, b8.F, ((android.support.constraint.a.g) (obj1)), a2.f, k2, 4);
                            }
                        }
                    } else
                    {
                        float f = 0.0F;
                        Object obj4 = null;
                        Object obj = obj1;
                        obj1 = obj4;
                        while (obj != null) 
                        {
                            android.support.constraint.a.a.b b4;
                            if (((android.support.constraint.a.a.b) (obj)).H != b.a.c)
                            {
                                int l2 = ((android.support.constraint.a.a.b) (obj)).j.d();
                                int k = l2;
                                if (obj1 != null)
                                {
                                    k = l2 + ((android.support.constraint.a.a.b) (obj1)).l.d();
                                }
                                l2 = 3;
                                if (((android.support.constraint.a.a.b) (obj)).j.c.a.H == b.a.c)
                                {
                                    l2 = 2;
                                }
                                e1.a(((android.support.constraint.a.a.b) (obj)).j.f, ((android.support.constraint.a.a.b) (obj)).j.c.f, k, l2);
                                l2 = ((android.support.constraint.a.a.b) (obj)).l.d();
                                k = l2;
                                if (((android.support.constraint.a.a.b) (obj)).l.c.a.j.c != null)
                                {
                                    k = l2;
                                    if (((android.support.constraint.a.a.b) (obj)).l.c.a.j.c.a == obj)
                                    {
                                        k = l2 + ((android.support.constraint.a.a.b) (obj)).l.c.a.j.d();
                                    }
                                }
                                l2 = 3;
                                if (((android.support.constraint.a.a.b) (obj)).l.c.a.H == b.a.c)
                                {
                                    l2 = 2;
                                }
                                e1.b(((android.support.constraint.a.a.b) (obj)).l.f, ((android.support.constraint.a.a.b) (obj)).l.c.f, -k, l2);
                            } else
                            {
                                f += ((android.support.constraint.a.a.b) (obj)).X;
                                int l = 0;
                                if (((android.support.constraint.a.a.b) (obj)).l.c != null)
                                {
                                    int i3 = ((android.support.constraint.a.a.b) (obj)).l.d();
                                    l = i3;
                                    if (obj != as[3])
                                    {
                                        l = i3 + ((android.support.constraint.a.a.b) (obj)).l.c.a.j.d();
                                    }
                                }
                                e1.a(((android.support.constraint.a.a.b) (obj)).l.f, ((android.support.constraint.a.a.b) (obj)).j.f, 0, 1);
                                e1.b(((android.support.constraint.a.a.b) (obj)).l.f, ((android.support.constraint.a.a.b) (obj)).l.c.f, -l, 1);
                            }
                            b4 = ((android.support.constraint.a.a.b) (obj)).Z;
                            obj1 = obj;
                            obj = b4;
                        }
                        if (k4 == 1)
                        {
                            android.support.constraint.a.a.b b3 = an[0];
                            int j3 = b3.j.d();
                            int i1 = j3;
                            if (b3.j.c != null)
                            {
                                i1 = j3 + b3.j.c.d();
                            }
                            int i4 = b3.l.d();
                            j3 = i4;
                            if (b3.l.c != null)
                            {
                                j3 = i4 + b3.l.c.d();
                            }
                            android.support.constraint.a.g g2 = b8.l.c.f;
                            if (b3 == as[3])
                            {
                                g2 = as[1].l.c.f;
                            }
                            if (b3.d == 1)
                            {
                                e1.a(b8.j.f, b8.j.c.f, i1, 1);
                                e1.b(b8.l.f, g2, -j3, 1);
                                e1.c(b8.l.f, b8.j.f, b8.l(), 2);
                            } else
                            {
                                e1.c(b3.j.f, b3.j.c.f, i1, 1);
                                e1.c(b3.l.f, g2, -j3, 1);
                            }
                        } else
                        {
                            int j1 = 0;
                            while (j1 < k4 - 1) 
                            {
                                android.support.constraint.a.a.b b5 = an[j1];
                                android.support.constraint.a.a.b b7 = an[j1 + 1];
                                android.support.constraint.a.g g5 = b5.j.f;
                                android.support.constraint.a.g g8 = b5.l.f;
                                android.support.constraint.a.g g9 = b7.j.f;
                                android.support.constraint.a.g g3 = b7.l.f;
                                if (b7 == as[3])
                                {
                                    g3 = as[1].l.f;
                                }
                                int j4 = b5.j.d();
                                int k3 = j4;
                                if (b5.j.c != null)
                                {
                                    k3 = j4;
                                    if (b5.j.c.a.l.c != null)
                                    {
                                        k3 = j4;
                                        if (b5.j.c.a.l.c.a == b5)
                                        {
                                            k3 = j4 + b5.j.c.a.l.d();
                                        }
                                    }
                                }
                                e1.a(g5, b5.j.c.f, k3, 2);
                                j4 = b5.l.d();
                                if (b5.l.c != null && b5.Z != null)
                                {
                                    Object obj2;
                                    if (b5.Z.j.c != null)
                                    {
                                        k3 = b5.Z.j.d();
                                    } else
                                    {
                                        k3 = 0;
                                    }
                                    k3 += j4;
                                } else
                                {
                                    k3 = j4;
                                }
                                e1.b(g8, b5.l.c.f, -k3, 2);
                                if (j1 + 1 == k4 - 1)
                                {
                                    j4 = b7.j.d();
                                    k3 = j4;
                                    if (b7.j.c != null)
                                    {
                                        k3 = j4;
                                        if (b7.j.c.a.l.c != null)
                                        {
                                            k3 = j4;
                                            if (b7.j.c.a.l.c.a == b7)
                                            {
                                                k3 = j4 + b7.j.c.a.l.d();
                                            }
                                        }
                                    }
                                    e1.a(g9, b7.j.c.f, k3, 2);
                                    obj2 = b7.l;
                                    if (b7 == as[3])
                                    {
                                        obj2 = as[1].l;
                                    }
                                    j4 = ((a) (obj2)).d();
                                    k3 = j4;
                                    if (((a) (obj2)).c != null)
                                    {
                                        k3 = j4;
                                        if (((a) (obj2)).c.a.j.c != null)
                                        {
                                            k3 = j4;
                                            if (((a) (obj2)).c.a.j.c.a == b7)
                                            {
                                                k3 = j4 + ((a) (obj2)).c.a.j.d();
                                            }
                                        }
                                    }
                                    e1.b(g3, ((a) (obj2)).c.f, -k3, 2);
                                }
                                if (b8.h > 0)
                                {
                                    e1.b(g8, g5, b8.h, 2);
                                }
                                obj2 = e1.b();
                                ((b) (obj2)).a(b5.X, f, b7.X, g5, b5.j.d(), g8, b5.l.d(), g9, b7.j.d(), g3, b7.l.d());
                                e1.a(((b) (obj2)));
                                j1++;
                            }
                        }
                    }
                }
            }
            l3++;
        }
    }

    private void d(android.support.constraint.a.a.b b1)
    {
        for (int i = 0; i < al; i++)
        {
            if (ap[i] == b1)
            {
                return;
            }
        }

        if (al + 1 >= ap.length)
        {
            ap = (android.support.constraint.a.a.b[])Arrays.copyOf(ap, ap.length * 2);
        }
        ap[al] = b1;
        al = al + 1;
    }

    private void e(android.support.constraint.a.a.b b1)
    {
        for (int i = 0; i < am; i++)
        {
            if (ao[i] == b1)
            {
                return;
            }
        }

        if (am + 1 >= ao.length)
        {
            ao = (android.support.constraint.a.a.b[])Arrays.copyOf(ao, ao.length * 2);
        }
        ao[am] = b1;
        am = am + 1;
    }

    public boolean D()
    {
        return at;
    }

    public boolean E()
    {
        return au;
    }

    public void F()
    {
        b.a a1;
        b.a a2;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        boolean flag;
        boolean flag1;
        k1 = w;
        l1 = x;
        i2 = Math.max(0, h());
        j2 = Math.max(0, l());
        at = false;
        au = false;
        android.support.constraint.a.a.b b1;
        int i;
        if (r != null)
        {
            if (ak == null)
            {
                ak = new g(this);
            }
            ak.a(this);
            b(af);
            c(ag);
            A();
            a(aa.f());
        } else
        {
            w = 0;
            x = 0;
        }
        flag = false;
        a1 = H;
        a2 = G;
        flag1 = flag;
        if (aq != 2) goto _L2; else goto _L1
_L1:
        if (H == android.support.constraint.a.a.b.a.b) goto _L4; else goto _L3
_L3:
        flag1 = flag;
        if (G != android.support.constraint.a.a.b.a.b) goto _L2; else goto _L4
_L4:
label0:
        {
            a(aj, ar);
            flag1 = ar[0];
            flag = flag1;
            if (i2 <= 0)
            {
                break label0;
            }
            flag = flag1;
            if (j2 <= 0)
            {
                break label0;
            }
            if (ad <= i2)
            {
                flag = flag1;
                if (ae <= j2)
                {
                    break label0;
                }
            }
            flag = false;
        }
        flag1 = flag;
        if (!flag) goto _L2; else goto _L5
_L5:
        if (G == android.support.constraint.a.a.b.a.b)
        {
            G = b.a.a;
            if (i2 > 0 && i2 < ad)
            {
                at = true;
                d(i2);
            } else
            {
                d(Math.max(B, ad));
            }
        }
        flag1 = flag;
        if (H != android.support.constraint.a.a.b.a.b) goto _L2; else goto _L6
_L6:
        H = b.a.a;
        if (j2 <= 0 || j2 >= ae) goto _L8; else goto _L7
_L7:
        au = true;
        e(j2);
_L10:
        J();
        k2 = aj.size();
        for (i = 0; i < k2; i++)
        {
            b1 = (android.support.constraint.a.a.b)aj.get(i);
            if (b1 instanceof h)
            {
                ((h)b1).F();
            }
        }

        break; /* Loop/switch isn't completed */
_L8:
        e(Math.max(C, ae));
        flag1 = flag;
_L2:
        flag = flag1;
        if (true) goto _L10; else goto _L9
_L9:
        int j;
        j = 0;
        flag1 = true;
_L18:
        if (!flag1) goto _L12; else goto _L11
_L11:
        int j1;
        boolean flag2;
        j1 = j + 1;
        flag2 = flag1;
        aa.a();
        flag2 = flag1;
        flag1 = c(aa, 0x7fffffff);
        flag2 = flag1;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_501;
        }
        flag2 = flag1;
        aa.e();
        flag2 = flag1;
_L15:
        if (!flag2) goto _L14; else goto _L13
_L13:
        a(aa, 0x7fffffff, ar);
_L16:
        int i1;
        if (j1 >= 8 || !ar[2])
        {
            break MISSING_BLOCK_LABEL_1235;
        }
        i1 = 0;
        j = 0;
        for (int k = 0; k < k2; k++)
        {
            android.support.constraint.a.a.b b2 = (android.support.constraint.a.a.b)aj.get(k);
            i1 = Math.max(i1, b2.w + b2.h());
            int l2 = b2.x;
            j = Math.max(j, b2.l() + l2);
        }

        break MISSING_BLOCK_LABEL_724;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L15
_L14:
        b(aa, 0x7fffffff);
        j = 0;
_L17:
        if (j < k2)
        {
            android.support.constraint.a.a.b b3 = (android.support.constraint.a.a.b)aj.get(j);
            if (b3.G == b.a.c && b3.h() < b3.k())
            {
                ar[2] = true;
            } else
            {
label1:
                {
                    if (b3.H != b.a.c || b3.l() >= b3.m())
                    {
                        break label1;
                    }
                    ar[2] = true;
                }
            }
        }
          goto _L16
        j++;
          goto _L17
        int l = Math.max(B, i1);
        j = Math.max(C, j);
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        if (a2 == android.support.constraint.a.a.b.a.b && h() < l)
        {
            d(l);
            G = android.support.constraint.a.a.b.a.b;
            flag4 = true;
            flag3 = true;
        } else
        {
            flag3 = false;
            flag4 = flag;
        }
        flag1 = flag3;
        flag = flag4;
        if (a1 == android.support.constraint.a.a.b.a.b)
        {
            flag1 = flag3;
            flag = flag4;
            if (l() < j)
            {
                e(j);
                H = android.support.constraint.a.a.b.a.b;
                flag = true;
                flag1 = true;
            }
        }
_L19:
        j = Math.max(B, h());
        flag3 = flag1;
        flag1 = flag;
        if (j > h())
        {
            d(j);
            G = b.a.a;
            flag1 = true;
            flag3 = true;
        }
        j = Math.max(C, l());
        flag = flag3;
        if (j > l())
        {
            e(j);
            H = b.a.a;
            flag1 = true;
            flag = true;
        }
        flag3 = flag;
        flag4 = flag1;
        if (!flag1)
        {
            flag6 = flag;
            flag5 = flag1;
            if (G == android.support.constraint.a.a.b.a.b)
            {
                flag6 = flag;
                flag5 = flag1;
                if (i2 > 0)
                {
                    flag6 = flag;
                    flag5 = flag1;
                    if (h() > i2)
                    {
                        at = true;
                        flag5 = true;
                        G = b.a.a;
                        d(i2);
                        flag6 = true;
                    }
                }
            }
            flag3 = flag6;
            flag4 = flag5;
            if (H == android.support.constraint.a.a.b.a.b)
            {
                flag3 = flag6;
                flag4 = flag5;
                if (j2 > 0)
                {
                    flag3 = flag6;
                    flag4 = flag5;
                    if (l() > j2)
                    {
                        au = true;
                        flag4 = true;
                        H = b.a.a;
                        e(j2);
                        flag3 = true;
                    }
                }
            }
        }
        flag = flag4;
        flag1 = flag3;
        j = j1;
          goto _L18
_L12:
        if (r != null)
        {
            j = Math.max(B, h());
            l = Math.max(C, l());
            ak.b(this);
            d(j + af + ah);
            e(ag + l + ai);
        } else
        {
            w = k1;
            x = l1;
        }
        if (flag)
        {
            G = a2;
            H = a1;
        }
        a(aa.f());
        if (this == H())
        {
            z();
        }
        return;
        flag1 = false;
          goto _L19
    }

    public boolean G()
    {
        return false;
    }

    public void a()
    {
        aa.a();
        af = 0;
        ah = 0;
        ag = 0;
        ai = 0;
        super.a();
    }

    void a(android.support.constraint.a.a.b b1, int i)
    {
        if (i == 0)
        {
            for (; b1.i.c != null && b1.i.c.a.k.c != null && b1.i.c.a.k.c == b1.i && b1.i.c.a != b1; b1 = b1.i.c.a) { }
            d(b1);
        } else
        if (i == 1)
        {
            for (; b1.j.c != null && b1.j.c.a.l.c != null && b1.j.c.a.l.c == b1.j && b1.j.c.a != b1; b1 = b1.j.c.a) { }
            e(b1);
            return;
        }
    }

    public void a(android.support.constraint.a.a.b b1, boolean aflag[])
    {
        android.support.constraint.a.a.b b3;
        int i;
        int j;
        boolean flag1;
        b3 = null;
        flag1 = false;
        j = 0;
        if (b1.G == b.a.c && b1.H == b.a.c && b1.u > 0.0F)
        {
            aflag[0] = false;
            return;
        }
        i = b1.i();
        if (b1.G == b.a.c && b1.H != b.a.c && b1.u > 0.0F)
        {
            aflag[0] = false;
            return;
        }
        b1.Q = true;
        if (!(b1 instanceof d)) goto _L2; else goto _L1
_L1:
        aflag = (d)b1;
        android.support.constraint.a.a.b b2;
        android.support.constraint.a.a.b b4;
        int k;
        int i1;
        int j1;
        boolean flag;
        if (aflag.D() == 1)
        {
            if (aflag.F() != -1)
            {
                i = aflag.F();
            } else
            if (aflag.G() != -1)
            {
                j = aflag.G();
                i = 0;
            } else
            {
                i = 0;
            }
        } else
        {
            j = i;
            int l = i;
            i = j;
            j = l;
        }
        i1 = j;
_L4:
        k = i;
        j = i1;
        if (b1.d() == 8)
        {
            k = i - b1.s;
            j = i1 - b1.s;
        }
        b1.J = k;
        b1.K = j;
        return;
_L2:
        if (b1.k.j() || b1.i.j())
        {
            break; /* Loop/switch isn't completed */
        }
        j = b1.f();
        i1 = i;
        i = j + i;
        if (true) goto _L4; else goto _L3
_L3:
        if (b1.k.c != null && b1.i.c != null && (b1.k.c == b1.i.c || b1.k.c.a == b1.i.c.a && b1.k.c.a != b1.r))
        {
            aflag[0] = false;
            return;
        }
        if (b1.k.c != null)
        {
            b4 = b1.k.c.a;
            j = b1.k.d() + i;
            b2 = b4;
            i1 = j;
            if (!b4.b())
            {
                b2 = b4;
                i1 = j;
                if (!b4.Q)
                {
                    a(b4, aflag);
                    i1 = j;
                    b2 = b4;
                }
            }
        } else
        {
            b2 = null;
            i1 = i;
        }
        j = i;
        if (b1.i.c != null)
        {
            b4 = b1.i.c.a;
            i += b1.i.d();
            j = i;
            b3 = b4;
            if (!b4.b())
            {
                j = i;
                b3 = b4;
                if (!b4.Q)
                {
                    a(b4, aflag);
                    b3 = b4;
                    j = i;
                }
            }
        }
        k = i1;
        if (b1.k.c == null) goto _L6; else goto _L5
_L5:
        k = i1;
        if (b2.b()) goto _L6; else goto _L7
_L7:
        if (b1.k.c.b == a.c.d)
        {
            i = i1 + (b2.K - b2.i());
        } else
        {
            i = i1;
            if (b1.k.c.c() == android.support.constraint.a.a.a.c.b)
            {
                i = i1 + b2.K;
            }
        }
        if (b2.N || b2.i.c != null && b2.k.c != null && b2.G != b.a.c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1.N = flag;
        k = i;
        if (!b1.N) goto _L6; else goto _L8
_L8:
        if (b2.i.c != null) goto _L10; else goto _L9
_L9:
        k = i + (i - b2.K);
_L6:
        i = j;
        i1 = k;
        if (b1.i.c == null) goto _L4; else goto _L11
_L11:
        i = j;
        i1 = k;
        if (b3.b()) goto _L4; else goto _L12
_L12:
label0:
        {
            if (b1.i.c.c() == android.support.constraint.a.a.a.c.b)
            {
                j1 = j + (b3.J - b3.i());
            } else
            {
                j1 = j;
                if (b1.i.c.c() == a.c.d)
                {
                    j1 = j + b3.J;
                }
            }
            if (!b3.M)
            {
                flag = flag1;
                if (b3.i.c == null)
                {
                    break label0;
                }
                flag = flag1;
                if (b3.k.c == null)
                {
                    break label0;
                }
                flag = flag1;
                if (b3.G == b.a.c)
                {
                    break label0;
                }
            }
            flag = true;
        }
        b1.M = flag;
        i = j1;
        i1 = k;
        if (!b1.M) goto _L4; else goto _L13
_L13:
        if (b3.k.c != null) goto _L15; else goto _L14
_L14:
        i = j1 + (j1 - b3.J);
        i1 = k;
        break; /* Loop/switch isn't completed */
_L10:
        k = i;
        if (b2.i.c.a == b1) goto _L6; else goto _L9
_L15:
        i = j1;
        i1 = k;
        if (b3.k.c.a == b1) goto _L4; else goto _L14
    }

    public void a(e e1, int i, boolean aflag[])
    {
        aflag[2] = false;
        b(e1, i);
        int k = aj.size();
        for (int j = 0; j < k; j++)
        {
            android.support.constraint.a.a.b b1 = (android.support.constraint.a.a.b)aj.get(j);
            b1.b(e1, i);
            if (b1.G == b.a.c && b1.h() < b1.k())
            {
                aflag[2] = true;
            }
            if (b1.H == b.a.c && b1.l() < b1.m())
            {
                aflag[2] = true;
            }
        }

    }

    public void a(ArrayList arraylist, boolean aflag[])
    {
        int i;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        int k2;
        int l2;
        i = 0;
        j1 = 0;
        i1 = 0;
        l = 0;
        k = 0;
        j = 0;
        l2 = arraylist.size();
        aflag[0] = true;
        k2 = 0;
_L2:
        android.support.constraint.a.a.b b1;
        if (k2 >= l2)
        {
            break MISSING_BLOCK_LABEL_329;
        }
        b1 = (android.support.constraint.a.a.b)arraylist.get(k2);
        if (!b1.b())
        {
            break; /* Loop/switch isn't completed */
        }
        int k1 = j;
        j = k;
        k = i1;
        i1 = i;
        i = k1;
_L5:
        k2++;
        int l1 = i1;
        i1 = k;
        k = j;
        j = i;
        i = l1;
        if (true) goto _L2; else goto _L1
_L1:
        if (!b1.Q)
        {
            a(b1, aflag);
        }
        if (!b1.R)
        {
            b(b1, aflag);
        }
        if (aflag[0]) goto _L4; else goto _L3
_L3:
        return;
_L4:
        int i2 = (b1.J + b1.K) - b1.h();
        int j2 = (b1.I + b1.L) - b1.l();
        if (b1.G == b.a.d)
        {
            i2 = b1.h() + b1.i.d + b1.k.d;
        }
        if (b1.H == b.a.d)
        {
            j2 = b1.l() + b1.j.d + b1.l.d;
        }
        if (b1.d() == 8)
        {
            i2 = 0;
            j2 = 0;
        }
        j1 = Math.max(j1, b1.J);
        i1 = Math.max(i1, b1.K);
        l = Math.max(l, b1.L);
        i = Math.max(i, b1.I);
        i2 = Math.max(k, i2);
        j = Math.max(j, j2);
        k = i1;
        i1 = i;
        i = j;
        j = i2;
          goto _L5
        i1 = Math.max(j1, i1);
        ad = Math.max(B, Math.max(i1, k));
        i = Math.max(i, l);
        ae = Math.max(C, Math.max(i, j));
        i = 0;
        while (i < l2) 
        {
            aflag = (android.support.constraint.a.a.b)arraylist.get(i);
            aflag.Q = false;
            aflag.R = false;
            aflag.M = false;
            aflag.N = false;
            aflag.O = false;
            aflag.P = false;
            i++;
        }
          goto _L3
    }

    public void b(android.support.constraint.a.a.b b1, boolean aflag[])
    {
        android.support.constraint.a.a.b b3;
        int i;
        int j;
        boolean flag1;
        b3 = null;
        flag1 = false;
        j = 0;
        if (b1.H == b.a.c && b1.G != b.a.c && b1.u > 0.0F)
        {
            aflag[0] = false;
            return;
        }
        i = b1.j();
        b1.R = true;
        if (!(b1 instanceof d)) goto _L2; else goto _L1
_L1:
        aflag = (d)b1;
        android.support.constraint.a.a.b b2;
        android.support.constraint.a.a.b b4;
        int k;
        int i1;
        int j1;
        boolean flag;
        if (aflag.D() == 0)
        {
            if (aflag.F() != -1)
            {
                j = aflag.F();
                i = 0;
            } else
            if (aflag.G() != -1)
            {
                i = aflag.G();
            } else
            {
                i = 0;
            }
        } else
        {
            j = i;
            int l = i;
            i = j;
            j = l;
        }
        i1 = j;
_L4:
        k = i;
        j = i1;
        if (b1.d() == 8)
        {
            j = i1 - b1.t;
            k = i - b1.t;
        }
        b1.I = j;
        b1.L = k;
        return;
_L2:
        if (b1.m.c != null || b1.j.c != null || b1.l.c != null)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = i + b1.g();
        if (true) goto _L4; else goto _L3
_L3:
        if (b1.l.c != null && b1.j.c != null && (b1.l.c == b1.j.c || b1.l.c.a == b1.j.c.a && b1.l.c.a != b1.r))
        {
            aflag[0] = false;
            return;
        }
        if (b1.m.j())
        {
            b2 = b1.m.c.b();
            if (!b2.R)
            {
                b(b2, aflag);
            }
            k = Math.max((b2.I - b2.t) + i, i);
            i1 = Math.max((b2.L - b2.t) + i, i);
            j = i1;
            i = k;
            if (b1.d() == 8)
            {
                i = k - b1.t;
                j = i1 - b1.t;
            }
            b1.I = i;
            b1.L = j;
            return;
        }
        if (b1.j.j())
        {
            b4 = b1.j.c.b();
            j = b1.j.d() + i;
            b2 = b4;
            i1 = j;
            if (!b4.b())
            {
                b2 = b4;
                i1 = j;
                if (!b4.R)
                {
                    b(b4, aflag);
                    i1 = j;
                    b2 = b4;
                }
            }
        } else
        {
            b2 = null;
            i1 = i;
        }
        j = i;
        if (b1.l.j())
        {
            b4 = b1.l.c.b();
            i += b1.l.d();
            j = i;
            b3 = b4;
            if (!b4.b())
            {
                j = i;
                b3 = b4;
                if (!b4.R)
                {
                    b(b4, aflag);
                    b3 = b4;
                    j = i;
                }
            }
        }
        k = i1;
        if (b1.j.c == null) goto _L6; else goto _L5
_L5:
        k = i1;
        if (b2.b()) goto _L6; else goto _L7
_L7:
        if (b1.j.c.c() == a.c.c)
        {
            i = i1 + (b2.I - b2.j());
        } else
        {
            i = i1;
            if (b1.j.c.c() == android.support.constraint.a.a.a.c.e)
            {
                i = i1 + b2.I;
            }
        }
        if (b2.O || b2.j.c != null && b2.j.c.a != b1 && b2.l.c != null && b2.l.c.a != b1 && b2.H != b.a.c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b1.O = flag;
        k = i;
        if (!b1.O) goto _L6; else goto _L8
_L8:
        if (b2.l.c != null) goto _L10; else goto _L9
_L9:
        k = i + (i - b2.I);
_L6:
        i = j;
        i1 = k;
        if (b1.l.c == null) goto _L4; else goto _L11
_L11:
        i = j;
        i1 = k;
        if (b3.b()) goto _L4; else goto _L12
_L12:
label0:
        {
            if (b1.l.c.c() == android.support.constraint.a.a.a.c.e)
            {
                j1 = j + (b3.L - b3.j());
            } else
            {
                j1 = j;
                if (b1.l.c.c() == a.c.c)
                {
                    j1 = j + b3.L;
                }
            }
            if (!b3.P)
            {
                flag = flag1;
                if (b3.j.c == null)
                {
                    break label0;
                }
                flag = flag1;
                if (b3.j.c.a == b1)
                {
                    break label0;
                }
                flag = flag1;
                if (b3.l.c == null)
                {
                    break label0;
                }
                flag = flag1;
                if (b3.l.c.a == b1)
                {
                    break label0;
                }
                flag = flag1;
                if (b3.H == b.a.c)
                {
                    break label0;
                }
            }
            flag = true;
        }
        b1.P = flag;
        i = j1;
        i1 = k;
        if (!b1.P) goto _L4; else goto _L13
_L13:
        if (b3.j.c != null) goto _L15; else goto _L14
_L14:
        i = j1 + (j1 - b3.L);
        i1 = k;
        break; /* Loop/switch isn't completed */
_L10:
        k = i;
        if (b2.l.c.a == b1) goto _L6; else goto _L9
_L15:
        i = j1;
        i1 = k;
        if (b3.j.c.a == b1) goto _L4; else goto _L14
    }

    public boolean c(e e1, int i)
    {
        int k;
        a(e1, i);
        k = aj.size();
        if (aq != 2 && aq != 4) goto _L2; else goto _L1
_L1:
        android.support.constraint.a.a.b b1;
        b.a a1;
        b.a a2;
        boolean flag;
        int j;
        if (a(e1))
        {
            return false;
        }
        flag = false;
          goto _L3
_L2:
        flag = true;
_L5:
        j = 0;
        while (j < k) 
        {
            b1 = (android.support.constraint.a.a.b)aj.get(j);
            if (b1 instanceof c)
            {
                a1 = b1.G;
                a2 = b1.H;
                if (a1 == android.support.constraint.a.a.b.a.b)
                {
                    b1.a(b.a.a);
                }
                if (a2 == android.support.constraint.a.a.b.a.b)
                {
                    b1.b(b.a.a);
                }
                b1.a(e1, i);
                if (a1 == android.support.constraint.a.a.b.a.b)
                {
                    b1.a(a1);
                }
                if (a2 == android.support.constraint.a.a.b.a.b)
                {
                    b1.b(a2);
                }
            } else
            {
                if (flag)
                {
                    android.support.constraint.a.a.e.a(this, e1, b1);
                }
                b1.a(e1, i);
            }
            j++;
        }
        if (al > 0)
        {
            b(e1);
        }
        if (am > 0)
        {
            c(e1);
        }
        return true;
_L3:
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void m(int i)
    {
        aq = i;
    }

}
