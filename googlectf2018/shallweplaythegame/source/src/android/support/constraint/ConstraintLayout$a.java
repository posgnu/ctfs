// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.constraint.a.a.b;
import android.support.constraint.a.a.d;
import android.util.AttributeSet;

// Referenced classes of package android.support.constraint:
//            ConstraintLayout

public static class Z extends android.view.outParams
{

    int A;
    public float B;
    public float C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    boolean O;
    boolean P;
    boolean Q;
    boolean R;
    int S;
    int T;
    int U;
    int V;
    int W;
    int X;
    float Y;
    b Z;
    public int a;
    public int b;
    public float c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public float w;
    public float x;
    public String y;
    float z;

    public void a()
    {
        R = false;
        O = true;
        P = true;
        if (width == 0 || width == -1)
        {
            O = false;
        }
        if (height == 0 || height == -1)
        {
            P = false;
        }
        if (c != -1F || a != -1 || b != -1)
        {
            R = true;
            O = true;
            P = true;
            if (!(Z instanceof d))
            {
                Z = new d();
            }
            ((d)Z).m(N);
        }
    }

    public void resolveLayoutDirection(int i1)
    {
        boolean flag = true;
        super.resolveLayoutDirection(i1);
        U = -1;
        V = -1;
        S = -1;
        T = -1;
        W = -1;
        X = -1;
        W = q;
        X = s;
        Y = w;
        if (1 == getLayoutDirection())
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        if (i1 == 0) goto _L2; else goto _L1
_L1:
        if (m == -1) goto _L4; else goto _L3
_L3:
        U = m;
_L12:
        if (o != -1)
        {
            T = o;
        }
        if (p != -1)
        {
            S = p;
        }
        if (u != -1)
        {
            X = u;
        }
        if (v != -1)
        {
            W = v;
        }
        Y = 1.0F - w;
_L9:
        if (o == -1 && p == -1)
        {
            if (f != -1)
            {
                U = f;
            } else
            if (g != -1)
            {
                V = g;
            }
        }
        if (n != -1 || m != -1) goto _L6; else goto _L5
_L5:
        if (d == -1) goto _L8; else goto _L7
_L7:
        S = d;
_L6:
        return;
_L4:
        if (n != -1)
        {
            V = n;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (m != -1)
        {
            T = m;
        }
        if (n != -1)
        {
            S = n;
        }
        if (o != -1)
        {
            U = o;
        }
        if (p != -1)
        {
            V = p;
        }
        if (u != -1)
        {
            W = u;
        }
        if (v != -1)
        {
            X = v;
        }
          goto _L9
_L8:
        if (e == -1) goto _L6; else goto _L10
_L10:
        T = e;
        return;
        if (true) goto _L12; else goto _L11
_L11:
    }

    public (int i1, int j1)
    {
        super(i1, j1);
        a = -1;
        b = -1;
        c = -1F;
        d = -1;
        e = -1;
        f = -1;
        g = -1;
        h = -1;
        i = -1;
        j = -1;
        k = -1;
        l = -1;
        m = -1;
        n = -1;
        o = -1;
        p = -1;
        q = -1;
        r = -1;
        s = -1;
        t = -1;
        u = -1;
        v = -1;
        w = 0.5F;
        x = 0.5F;
        y = null;
        z = 0.0F;
        A = 1;
        B = 0.0F;
        C = 0.0F;
        D = 0;
        E = 0;
        F = 0;
        G = 0;
        H = 0;
        I = 0;
        J = 0;
        K = 0;
        L = -1;
        M = -1;
        N = -1;
        O = true;
        P = true;
        Q = false;
        R = false;
        S = -1;
        T = -1;
        U = -1;
        V = -1;
        W = -1;
        X = -1;
        Y = 0.5F;
        Z = new b();
    }

    public Z(Context context, AttributeSet attributeset)
    {
        int i1;
        int k1;
        super(context, attributeset);
        a = -1;
        b = -1;
        c = -1F;
        d = -1;
        e = -1;
        f = -1;
        g = -1;
        h = -1;
        i = -1;
        j = -1;
        k = -1;
        l = -1;
        m = -1;
        n = -1;
        o = -1;
        p = -1;
        q = -1;
        r = -1;
        s = -1;
        t = -1;
        u = -1;
        v = -1;
        w = 0.5F;
        x = 0.5F;
        y = null;
        z = 0.0F;
        A = 1;
        B = 0.0F;
        C = 0.0F;
        D = 0;
        E = 0;
        F = 0;
        G = 0;
        H = 0;
        I = 0;
        J = 0;
        K = 0;
        L = -1;
        M = -1;
        N = -1;
        O = true;
        P = true;
        Q = false;
        R = false;
        S = -1;
        T = -1;
        U = -1;
        V = -1;
        W = -1;
        X = -1;
        Y = 0.5F;
        Z = new b();
        context = context.obtainStyledAttributes(attributeset, t_Layout);
        k1 = context.getIndexCount();
        i1 = 0;
_L2:
        int j1;
        if (i1 >= k1)
        {
            break MISSING_BLOCK_LABEL_1803;
        }
        j1 = context.getIndex(i1);
        if (j1 != t_Layout_layout_constraintLeft_toLeftOf)
        {
            break; /* Loop/switch isn't completed */
        }
        d = context.getResourceId(j1, d);
        if (d == -1)
        {
            d = context.getInt(j1, -1);
        }
_L3:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        if (j1 == t_Layout_layout_constraintLeft_toRightOf)
        {
            e = context.getResourceId(j1, e);
            if (e == -1)
            {
                e = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintRight_toLeftOf)
        {
            f = context.getResourceId(j1, f);
            if (f == -1)
            {
                f = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintRight_toRightOf)
        {
            g = context.getResourceId(j1, g);
            if (g == -1)
            {
                g = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintTop_toTopOf)
        {
            h = context.getResourceId(j1, h);
            if (h == -1)
            {
                h = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintTop_toBottomOf)
        {
            i = context.getResourceId(j1, i);
            if (i == -1)
            {
                i = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintBottom_toTopOf)
        {
            j = context.getResourceId(j1, j);
            if (j == -1)
            {
                j = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintBottom_toBottomOf)
        {
            k = context.getResourceId(j1, k);
            if (k == -1)
            {
                k = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintBaseline_toBaselineOf)
        {
            l = context.getResourceId(j1, l);
            if (l == -1)
            {
                l = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_editor_absoluteX)
        {
            L = context.getDimensionPixelOffset(j1, L);
        } else
        if (j1 == t_Layout_layout_editor_absoluteY)
        {
            M = context.getDimensionPixelOffset(j1, M);
        } else
        if (j1 == t_Layout_layout_constraintGuide_begin)
        {
            a = context.getDimensionPixelOffset(j1, a);
        } else
        if (j1 == t_Layout_layout_constraintGuide_end)
        {
            b = context.getDimensionPixelOffset(j1, b);
        } else
        if (j1 == t_Layout_layout_constraintGuide_percent)
        {
            c = context.getFloat(j1, c);
        } else
        if (j1 == t_Layout_android_orientation)
        {
            N = context.getInt(j1, N);
        } else
        if (j1 == t_Layout_layout_constraintStart_toEndOf)
        {
            m = context.getResourceId(j1, m);
            if (m == -1)
            {
                m = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintStart_toStartOf)
        {
            n = context.getResourceId(j1, n);
            if (n == -1)
            {
                n = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintEnd_toStartOf)
        {
            o = context.getResourceId(j1, o);
            if (o == -1)
            {
                o = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_constraintEnd_toEndOf)
        {
            p = context.getResourceId(j1, p);
            if (p == -1)
            {
                p = context.getInt(j1, -1);
            }
        } else
        if (j1 == t_Layout_layout_goneMarginLeft)
        {
            q = context.getDimensionPixelSize(j1, q);
        } else
        if (j1 == t_Layout_layout_goneMarginTop)
        {
            r = context.getDimensionPixelSize(j1, r);
        } else
        if (j1 == t_Layout_layout_goneMarginRight)
        {
            s = context.getDimensionPixelSize(j1, s);
        } else
        if (j1 == t_Layout_layout_goneMarginBottom)
        {
            t = context.getDimensionPixelSize(j1, t);
        } else
        if (j1 == t_Layout_layout_goneMarginStart)
        {
            u = context.getDimensionPixelSize(j1, u);
        } else
        if (j1 == t_Layout_layout_goneMarginEnd)
        {
            v = context.getDimensionPixelSize(j1, v);
        } else
        if (j1 == t_Layout_layout_constraintHorizontal_bias)
        {
            w = context.getFloat(j1, w);
        } else
        {
label0:
            {
                if (j1 != t_Layout_layout_constraintVertical_bias)
                {
                    break label0;
                }
                x = context.getFloat(j1, x);
            }
        }
          goto _L3
        if (j1 != t_Layout_layout_constraintDimensionRatio)
        {
            break MISSING_BLOCK_LABEL_1528;
        }
        y = context.getString(j1);
        z = (0.0F / 0.0F);
        A = -1;
        if (y == null) goto _L3; else goto _L4
_L4:
        float f1;
        float f2;
        int l1 = y.length();
        j1 = y.indexOf(',');
        if (j1 > 0 && j1 < l1 - 1)
        {
            attributeset = y.substring(0, j1);
            String s1;
            int i2;
            if (attributeset.equalsIgnoreCase("W"))
            {
                A = 0;
            } else
            if (attributeset.equalsIgnoreCase("H"))
            {
                A = 1;
            }
            j1++;
        } else
        {
            j1 = 0;
        }
        i2 = y.indexOf(':');
        if (i2 < 0 || i2 >= l1 - 1)
        {
            break MISSING_BLOCK_LABEL_1496;
        }
        attributeset = y.substring(j1, i2);
        s1 = y.substring(i2 + 1);
        if (attributeset.length() <= 0 || s1.length() <= 0) goto _L3; else goto _L5
_L5:
        f1 = Float.parseFloat(attributeset);
        f2 = Float.parseFloat(s1);
        if (f1 <= 0.0F || f2 <= 0.0F) goto _L3; else goto _L6
_L6:
label1:
        {
            if (A != 1)
            {
                break label1;
            }
            z = Math.abs(f2 / f1);
        }
          goto _L3
        f1 /= f2;
        try
        {
            z = Math.abs(f1);
        }
        // Misplaced declaration of an exception variable
        catch (AttributeSet attributeset) { }
          goto _L3
        attributeset = y.substring(j1);
        if (attributeset.length() > 0)
        {
            try
            {
                z = Float.parseFloat(attributeset);
            }
            // Misplaced declaration of an exception variable
            catch (AttributeSet attributeset) { }
        }
          goto _L3
        if (j1 == t_Layout_layout_constraintHorizontal_weight)
        {
            B = context.getFloat(j1, 0.0F);
        } else
        if (j1 == t_Layout_layout_constraintVertical_weight)
        {
            C = context.getFloat(j1, 0.0F);
        } else
        if (j1 == t_Layout_layout_constraintHorizontal_chainStyle)
        {
            D = context.getInt(j1, 0);
        } else
        if (j1 == t_Layout_layout_constraintVertical_chainStyle)
        {
            E = context.getInt(j1, 0);
        } else
        if (j1 == t_Layout_layout_constraintWidth_default)
        {
            F = context.getInt(j1, 0);
        } else
        if (j1 == t_Layout_layout_constraintHeight_default)
        {
            G = context.getInt(j1, 0);
        } else
        if (j1 == t_Layout_layout_constraintWidth_min)
        {
            H = context.getDimensionPixelSize(j1, H);
        } else
        if (j1 == t_Layout_layout_constraintWidth_max)
        {
            J = context.getDimensionPixelSize(j1, J);
        } else
        if (j1 == t_Layout_layout_constraintHeight_min)
        {
            I = context.getDimensionPixelSize(j1, I);
        } else
        if (j1 == t_Layout_layout_constraintHeight_max)
        {
            K = context.getDimensionPixelSize(j1, K);
        } else
        if (j1 == t_Layout_layout_constraintLeft_creator || j1 == t_Layout_layout_constraintTop_creator || j1 == t_Layout_layout_constraintRight_creator || j1 == t_Layout_layout_constraintBottom_creator || j1 != t_Layout_layout_constraintBaseline_creator);
          goto _L3
        context.recycle();
        a();
        return;
    }

    public a(android.view.ams ams)
    {
        super(ams);
        a = -1;
        b = -1;
        c = -1F;
        d = -1;
        e = -1;
        f = -1;
        g = -1;
        h = -1;
        i = -1;
        j = -1;
        k = -1;
        l = -1;
        m = -1;
        n = -1;
        o = -1;
        p = -1;
        q = -1;
        r = -1;
        s = -1;
        t = -1;
        u = -1;
        v = -1;
        w = 0.5F;
        x = 0.5F;
        y = null;
        z = 0.0F;
        A = 1;
        B = 0.0F;
        C = 0.0F;
        D = 0;
        E = 0;
        F = 0;
        G = 0;
        H = 0;
        I = 0;
        J = 0;
        K = 0;
        L = -1;
        M = -1;
        N = -1;
        O = true;
        P = true;
        Q = false;
        R = false;
        S = -1;
        T = -1;
        U = -1;
        V = -1;
        W = -1;
        X = -1;
        Y = 0.5F;
        Z = new b();
    }
}
