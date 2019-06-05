// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;

import android.support.constraint.a.g;

// Referenced classes of package android.support.constraint.a.a:
//            b, a, c, d

public class e
{

    static void a(c c1, android.support.constraint.a.e e1, int i, b b1)
    {
        int l1 = 0;
        int j = 0;
        float f1 = 0.0F;
        b b4 = null;
        b b2 = b1;
        while (b2 != null) 
        {
label0:
            {
                b b5;
                int l;
                if (b2.d() == 8)
                {
                    l = 1;
                } else
                {
                    l = 0;
                }
                if (l == 0)
                {
                    int j1 = j + 1;
                    if (b2.G != b.a.c)
                    {
                        int i2 = b2.h();
                        if (b2.i.c != null)
                        {
                            j = b2.i.d();
                        } else
                        {
                            j = 0;
                        }
                        if (b2.k.c != null)
                        {
                            l = b2.k.d();
                        } else
                        {
                            l = 0;
                        }
                        l1 = l + (l1 + i2 + j);
                        j = j1;
                    } else
                    {
                        f1 = b2.W + f1;
                        j = j1;
                    }
                }
                if (b2.k.c != null)
                {
                    b5 = b2.k.c.a;
                } else
                {
                    b5 = null;
                }
                b4 = b5;
                if (b5 == null)
                {
                    break label0;
                }
                if (b5.i.c != null)
                {
                    b4 = b5;
                    if (b5.i.c == null)
                    {
                        break label0;
                    }
                    b4 = b5;
                    if (b5.i.c.a == b2)
                    {
                        break label0;
                    }
                }
                b4 = null;
            }
            b5 = b4;
            b4 = b2;
            b2 = b5;
        }
        int k1 = 0;
        float f;
        float f2;
        float f5;
        int i1;
        if (b4 != null)
        {
            float f3;
            if (b4.k.c != null)
            {
                i1 = b4.k.c.a.f();
            } else
            {
                i1 = 0;
            }
            k1 = i1;
            if (b4.k.c != null)
            {
                k1 = i1;
                if (b4.k.c.a == c1)
                {
                    k1 = c1.t();
                }
            }
        }
        f5 = (float)(k1 - 0) - (float)l1;
        f = f5 / (float)(j + 1);
        if (i == 0)
        {
            f2 = f;
            b4 = b1;
        } else
        {
            f2 = f5 / (float)i;
            f = 0.0F;
            b4 = b1;
        }
        while (b4 != null) 
        {
            b b3;
            int k;
            if (b4.i.c != null)
            {
                k = b4.i.d();
            } else
            {
                k = 0;
            }
            if (b4.k.c != null)
            {
                i1 = b4.k.d();
            } else
            {
                i1 = 0;
            }
            if (b4.d() != 8)
            {
                f += k;
                e1.a(b4.i.f, (int)(0.5F + f));
                if (b4.G == b.a.c)
                {
                    if (f1 == 0.0F)
                    {
                        f = (f2 - (float)k - (float)i1) + f;
                    } else
                    {
                        f = ((b4.W * f5) / f1 - (float)k - (float)i1) + f;
                    }
                } else
                {
                    f = (float)b4.h() + f;
                }
                e1.a(b4.k.f, (int)(0.5F + f));
                f3 = f;
                if (i == 0)
                {
                    f3 = f + f2;
                }
                f = f3 + (float)i1;
            } else
            {
                float f4 = f - f2 / 2.0F;
                e1.a(b4.i.f, (int)(0.5F + f4));
                e1.a(b4.k.f, (int)(f4 + 0.5F));
            }
            if (b4.k.c != null)
            {
                b3 = b4.k.c.a;
            } else
            {
                b3 = null;
            }
            b1 = b3;
            if (b3 != null)
            {
                b1 = b3;
                if (b3.i.c != null)
                {
                    b1 = b3;
                    if (b3.i.c.a != b4)
                    {
                        b1 = null;
                    }
                }
            }
            b3 = b1;
            if (b1 == c1)
            {
                b3 = null;
            }
            b4 = b3;
        }
    }

    static void a(c c1, android.support.constraint.a.e e1, b b1)
    {
        if (c1.G != b.a.b && b1.G == b.a.d)
        {
            b1.i.f = e1.a(b1.i);
            b1.k.f = e1.a(b1.k);
            int i = b1.i.d;
            int k = c1.h() - b1.k.d;
            e1.a(b1.i.f, i);
            e1.a(b1.k.f, k);
            b1.c(i, k);
            b1.a = 2;
        }
        if (c1.H != b.a.b && b1.H == b.a.d)
        {
            b1.j.f = e1.a(b1.j);
            b1.l.f = e1.a(b1.l);
            int j = b1.j.d;
            int l = c1.l() - b1.l.d;
            e1.a(b1.j.f, j);
            e1.a(b1.l.f, l);
            if (b1.A > 0 || b1.d() == 8)
            {
                b1.m.f = e1.a(b1.m);
                e1.a(b1.m.f, b1.A + j);
            }
            b1.d(j, l);
            b1.b = 2;
        }
    }

    static void b(c c1, android.support.constraint.a.e e1, int i, b b1)
    {
        int l1 = 0;
        int j = 0;
        float f1 = 0.0F;
        b b4 = null;
        b b2 = b1;
        while (b2 != null) 
        {
label0:
            {
                b b5;
                int l;
                if (b2.d() == 8)
                {
                    l = 1;
                } else
                {
                    l = 0;
                }
                if (l == 0)
                {
                    int j1 = j + 1;
                    if (b2.H != b.a.c)
                    {
                        int i2 = b2.l();
                        if (b2.j.c != null)
                        {
                            j = b2.j.d();
                        } else
                        {
                            j = 0;
                        }
                        if (b2.l.c != null)
                        {
                            l = b2.l.d();
                        } else
                        {
                            l = 0;
                        }
                        l1 = l + (l1 + i2 + j);
                        j = j1;
                    } else
                    {
                        f1 = b2.X + f1;
                        j = j1;
                    }
                }
                if (b2.l.c != null)
                {
                    b5 = b2.l.c.a;
                } else
                {
                    b5 = null;
                }
                b4 = b5;
                if (b5 == null)
                {
                    break label0;
                }
                if (b5.j.c != null)
                {
                    b4 = b5;
                    if (b5.j.c == null)
                    {
                        break label0;
                    }
                    b4 = b5;
                    if (b5.j.c.a == b2)
                    {
                        break label0;
                    }
                }
                b4 = null;
            }
            b5 = b4;
            b4 = b2;
            b2 = b5;
        }
        int k1 = 0;
        float f;
        float f2;
        float f5;
        int i1;
        if (b4 != null)
        {
            float f3;
            if (b4.l.c != null)
            {
                i1 = b4.l.c.a.f();
            } else
            {
                i1 = 0;
            }
            k1 = i1;
            if (b4.l.c != null)
            {
                k1 = i1;
                if (b4.l.c.a == c1)
                {
                    k1 = c1.u();
                }
            }
        }
        f5 = (float)(k1 - 0) - (float)l1;
        f = f5 / (float)(j + 1);
        if (i == 0)
        {
            f2 = f;
            b4 = b1;
        } else
        {
            f2 = f5 / (float)i;
            f = 0.0F;
            b4 = b1;
        }
        while (b4 != null) 
        {
            b b3;
            int k;
            if (b4.j.c != null)
            {
                k = b4.j.d();
            } else
            {
                k = 0;
            }
            if (b4.l.c != null)
            {
                i1 = b4.l.d();
            } else
            {
                i1 = 0;
            }
            if (b4.d() != 8)
            {
                f += k;
                e1.a(b4.j.f, (int)(0.5F + f));
                if (b4.H == b.a.c)
                {
                    if (f1 == 0.0F)
                    {
                        f = (f2 - (float)k - (float)i1) + f;
                    } else
                    {
                        f = ((b4.X * f5) / f1 - (float)k - (float)i1) + f;
                    }
                } else
                {
                    f = (float)b4.l() + f;
                }
                e1.a(b4.l.f, (int)(0.5F + f));
                f3 = f;
                if (i == 0)
                {
                    f3 = f + f2;
                }
                f = f3 + (float)i1;
            } else
            {
                float f4 = f - f2 / 2.0F;
                e1.a(b4.j.f, (int)(0.5F + f4));
                e1.a(b4.l.f, (int)(f4 + 0.5F));
            }
            if (b4.l.c != null)
            {
                b3 = b4.l.c.a;
            } else
            {
                b3 = null;
            }
            b1 = b3;
            if (b3 != null)
            {
                b1 = b3;
                if (b3.j.c != null)
                {
                    b1 = b3;
                    if (b3.j.c.a != b4)
                    {
                        b1 = null;
                    }
                }
            }
            b3 = b1;
            if (b1 == c1)
            {
                b3 = null;
            }
            b4 = b3;
        }
    }

    static void b(c c1, android.support.constraint.a.e e1, b b1)
    {
        if (b1.G == b.a.c)
        {
            b1.a = 1;
        } else
        {
            if (c1.G != b.a.b && b1.G == b.a.d)
            {
                b1.i.f = e1.a(b1.i);
                b1.k.f = e1.a(b1.k);
                int i = b1.i.d;
                int i2 = c1.h() - b1.k.d;
                e1.a(b1.i.f, i);
                e1.a(b1.k.f, i2);
                b1.c(i, i2);
                b1.a = 2;
                return;
            }
            if (b1.i.c != null && b1.k.c != null)
            {
                if (b1.i.c.a == c1 && b1.k.c.a == c1)
                {
                    int j2 = b1.i.d();
                    int j = b1.k.d();
                    if (c1.G == b.a.c)
                    {
                        j = c1.h() - j;
                    } else
                    {
                        int l3 = b1.h();
                        j2 += (int)((float)(c1.h() - j2 - j - l3) * b1.E + 0.5F);
                        j = b1.h() + j2;
                    }
                    b1.i.f = e1.a(b1.i);
                    b1.k.f = e1.a(b1.k);
                    e1.a(b1.i.f, j2);
                    e1.a(b1.k.f, j);
                    b1.a = 2;
                    b1.c(j2, j);
                    return;
                } else
                {
                    b1.a = 1;
                    return;
                }
            }
            if (b1.i.c != null && b1.i.c.a == c1)
            {
                int k = b1.i.d();
                int k2 = b1.h() + k;
                b1.i.f = e1.a(b1.i);
                b1.k.f = e1.a(b1.k);
                e1.a(b1.i.f, k);
                e1.a(b1.k.f, k2);
                b1.a = 2;
                b1.c(k, k2);
                return;
            }
            if (b1.k.c != null && b1.k.c.a == c1)
            {
                b1.i.f = e1.a(b1.i);
                b1.k.f = e1.a(b1.k);
                int l = c1.h() - b1.k.d();
                int l2 = l - b1.h();
                e1.a(b1.i.f, l2);
                e1.a(b1.k.f, l);
                b1.a = 2;
                b1.c(l2, l);
                return;
            }
            if (b1.i.c != null && b1.i.c.a.a == 2)
            {
                c1 = b1.i.c.f;
                b1.i.f = e1.a(b1.i);
                b1.k.f = e1.a(b1.k);
                int i1 = (int)(((g) (c1)).d + (float)b1.i.d() + 0.5F);
                int i3 = b1.h() + i1;
                e1.a(b1.i.f, i1);
                e1.a(b1.k.f, i3);
                b1.a = 2;
                b1.c(i1, i3);
                return;
            }
            if (b1.k.c != null && b1.k.c.a.a == 2)
            {
                c1 = b1.k.c.f;
                b1.i.f = e1.a(b1.i);
                b1.k.f = e1.a(b1.k);
                int j1 = (int)((((g) (c1)).d - (float)b1.k.d()) + 0.5F);
                int j3 = j1 - b1.h();
                e1.a(b1.i.f, j3);
                e1.a(b1.k.f, j1);
                b1.a = 2;
                b1.c(j3, j1);
                return;
            }
            int k1;
            boolean flag;
            if (b1.i.c != null)
            {
                k1 = 1;
            } else
            {
                k1 = 0;
            }
            if (b1.k.c != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (k1 == 0 && !flag)
            {
                if (b1 instanceof d)
                {
                    d d1 = (d)b1;
                    if (d1.D() == 1)
                    {
                        b1.i.f = e1.a(b1.i);
                        b1.k.f = e1.a(b1.k);
                        float f;
                        if (d1.F() != -1)
                        {
                            f = d1.F();
                        } else
                        if (d1.G() != -1)
                        {
                            f = c1.h() - d1.G();
                        } else
                        {
                            f = c1.h();
                            f = d1.E() * f;
                        }
                        k1 = (int)(f + 0.5F);
                        e1.a(b1.i.f, k1);
                        e1.a(b1.k.f, k1);
                        b1.a = 2;
                        b1.b = 2;
                        b1.c(k1, k1);
                        b1.d(0, c1.l());
                        return;
                    }
                } else
                {
                    b1.i.f = e1.a(b1.i);
                    b1.k.f = e1.a(b1.k);
                    int l1 = b1.f();
                    int k3 = b1.h();
                    e1.a(b1.i.f, l1);
                    e1.a(b1.k.f, k3 + l1);
                    b1.a = 2;
                    return;
                }
            }
        }
    }

    static void c(c c1, android.support.constraint.a.e e1, b b1)
    {
        int j4 = 1;
        if (b1.H == b.a.c)
        {
            b1.b = 1;
        } else
        {
            if (c1.H != b.a.b && b1.H == b.a.d)
            {
                b1.j.f = e1.a(b1.j);
                b1.l.f = e1.a(b1.l);
                int i = b1.j.d;
                int j2 = c1.l() - b1.l.d;
                e1.a(b1.j.f, i);
                e1.a(b1.l.f, j2);
                if (b1.A > 0 || b1.d() == 8)
                {
                    b1.m.f = e1.a(b1.m);
                    e1.a(b1.m.f, b1.A + i);
                }
                b1.d(i, j2);
                b1.b = 2;
                return;
            }
            if (b1.j.c != null && b1.l.c != null)
            {
                if (b1.j.c.a == c1 && b1.l.c.a == c1)
                {
                    int k2 = b1.j.d();
                    int j = b1.l.d();
                    if (c1.H == b.a.c)
                    {
                        j = b1.l() + k2;
                    } else
                    {
                        j4 = b1.l();
                        int k4 = c1.l();
                        float f = k2;
                        k2 = (int)((float)(k4 - k2 - j - j4) * b1.F + f + 0.5F);
                        j = b1.l() + k2;
                    }
                    b1.j.f = e1.a(b1.j);
                    b1.l.f = e1.a(b1.l);
                    e1.a(b1.j.f, k2);
                    e1.a(b1.l.f, j);
                    if (b1.A > 0 || b1.d() == 8)
                    {
                        b1.m.f = e1.a(b1.m);
                        e1.a(b1.m.f, b1.A + k2);
                    }
                    b1.b = 2;
                    b1.d(k2, j);
                    return;
                } else
                {
                    b1.b = 1;
                    return;
                }
            }
            if (b1.j.c != null && b1.j.c.a == c1)
            {
                int k = b1.j.d();
                int l2 = b1.l() + k;
                b1.j.f = e1.a(b1.j);
                b1.l.f = e1.a(b1.l);
                e1.a(b1.j.f, k);
                e1.a(b1.l.f, l2);
                if (b1.A > 0 || b1.d() == 8)
                {
                    b1.m.f = e1.a(b1.m);
                    e1.a(b1.m.f, b1.A + k);
                }
                b1.b = 2;
                b1.d(k, l2);
                return;
            }
            if (b1.l.c != null && b1.l.c.a == c1)
            {
                b1.j.f = e1.a(b1.j);
                b1.l.f = e1.a(b1.l);
                int l = c1.l() - b1.l.d();
                int i3 = l - b1.l();
                e1.a(b1.j.f, i3);
                e1.a(b1.l.f, l);
                if (b1.A > 0 || b1.d() == 8)
                {
                    b1.m.f = e1.a(b1.m);
                    e1.a(b1.m.f, b1.A + i3);
                }
                b1.b = 2;
                b1.d(i3, l);
                return;
            }
            if (b1.j.c != null && b1.j.c.a.b == 2)
            {
                c1 = b1.j.c.f;
                b1.j.f = e1.a(b1.j);
                b1.l.f = e1.a(b1.l);
                int i1 = (int)(((g) (c1)).d + (float)b1.j.d() + 0.5F);
                int j3 = b1.l() + i1;
                e1.a(b1.j.f, i1);
                e1.a(b1.l.f, j3);
                if (b1.A > 0 || b1.d() == 8)
                {
                    b1.m.f = e1.a(b1.m);
                    e1.a(b1.m.f, b1.A + i1);
                }
                b1.b = 2;
                b1.d(i1, j3);
                return;
            }
            if (b1.l.c != null && b1.l.c.a.b == 2)
            {
                c1 = b1.l.c.f;
                b1.j.f = e1.a(b1.j);
                b1.l.f = e1.a(b1.l);
                int j1 = (int)((((g) (c1)).d - (float)b1.l.d()) + 0.5F);
                int k3 = j1 - b1.l();
                e1.a(b1.j.f, k3);
                e1.a(b1.l.f, j1);
                if (b1.A > 0 || b1.d() == 8)
                {
                    b1.m.f = e1.a(b1.m);
                    e1.a(b1.m.f, b1.A + k3);
                }
                b1.b = 2;
                b1.d(k3, j1);
                return;
            }
            if (b1.m.c != null && b1.m.c.a.b == 2)
            {
                c1 = b1.m.c.f;
                b1.j.f = e1.a(b1.j);
                b1.l.f = e1.a(b1.l);
                int k1 = (int)((((g) (c1)).d - (float)b1.A) + 0.5F);
                int l3 = b1.l() + k1;
                e1.a(b1.j.f, k1);
                e1.a(b1.l.f, l3);
                b1.m.f = e1.a(b1.m);
                e1.a(b1.m.f, b1.A + k1);
                b1.b = 2;
                b1.d(k1, l3);
                return;
            }
            int l1;
            boolean flag;
            if (b1.m.c != null)
            {
                l1 = 1;
            } else
            {
                l1 = 0;
            }
            if (b1.j.c != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (b1.l.c == null)
            {
                j4 = 0;
            }
            if (l1 == 0 && !flag && j4 == 0)
            {
                if (b1 instanceof d)
                {
                    d d1 = (d)b1;
                    if (d1.D() == 0)
                    {
                        b1.j.f = e1.a(b1.j);
                        b1.l.f = e1.a(b1.l);
                        float f1;
                        if (d1.F() != -1)
                        {
                            f1 = d1.F();
                        } else
                        if (d1.G() != -1)
                        {
                            f1 = c1.l() - d1.G();
                        } else
                        {
                            f1 = c1.l();
                            f1 = d1.E() * f1;
                        }
                        l1 = (int)(f1 + 0.5F);
                        e1.a(b1.j.f, l1);
                        e1.a(b1.l.f, l1);
                        b1.b = 2;
                        b1.a = 2;
                        b1.d(l1, l1);
                        b1.c(0, c1.h());
                        return;
                    }
                } else
                {
                    b1.j.f = e1.a(b1.j);
                    b1.l.f = e1.a(b1.l);
                    int i2 = b1.g();
                    int i4 = b1.l();
                    e1.a(b1.j.f, i2);
                    e1.a(b1.l.f, i4 + i2);
                    if (b1.A > 0 || b1.d() == 8)
                    {
                        b1.m.f = e1.a(b1.m);
                        e1.a(b1.m.f, i2 + b1.A);
                    }
                    b1.b = 2;
                    return;
                }
            }
        }
    }
}
