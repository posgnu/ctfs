// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.constraint.a.a.a;
import android.support.constraint.a.a.b;
import android.support.constraint.a.a.c;
import android.support.constraint.a.a.d;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.constraint:
//            a, b

public class ConstraintLayout extends ViewGroup
{
    public static class a extends android.view.ViewGroup.MarginLayoutParams
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

        public a(int i1, int j1)
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

        public a(Context context, AttributeSet attributeset)
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
            context = context.obtainStyledAttributes(attributeset, c.a.ConstraintLayout_Layout);
            k1 = context.getIndexCount();
            i1 = 0;
_L2:
            int j1;
            if (i1 >= k1)
            {
                break MISSING_BLOCK_LABEL_1803;
            }
            j1 = context.getIndex(i1);
            if (j1 != c.a.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf)
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
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintLeft_toRightOf)
            {
                e = context.getResourceId(j1, e);
                if (e == -1)
                {
                    e = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintRight_toLeftOf)
            {
                f = context.getResourceId(j1, f);
                if (f == -1)
                {
                    f = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintRight_toRightOf)
            {
                g = context.getResourceId(j1, g);
                if (g == -1)
                {
                    g = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintTop_toTopOf)
            {
                h = context.getResourceId(j1, h);
                if (h == -1)
                {
                    h = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintTop_toBottomOf)
            {
                i = context.getResourceId(j1, i);
                if (i == -1)
                {
                    i = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintBottom_toTopOf)
            {
                j = context.getResourceId(j1, j);
                if (j == -1)
                {
                    j = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf)
            {
                k = context.getResourceId(j1, k);
                if (k == -1)
                {
                    k = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf)
            {
                l = context.getResourceId(j1, l);
                if (l == -1)
                {
                    l = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_editor_absoluteX)
            {
                L = context.getDimensionPixelOffset(j1, L);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_editor_absoluteY)
            {
                M = context.getDimensionPixelOffset(j1, M);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintGuide_begin)
            {
                a = context.getDimensionPixelOffset(j1, a);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintGuide_end)
            {
                b = context.getDimensionPixelOffset(j1, b);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintGuide_percent)
            {
                c = context.getFloat(j1, c);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_android_orientation)
            {
                N = context.getInt(j1, N);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintStart_toEndOf)
            {
                m = context.getResourceId(j1, m);
                if (m == -1)
                {
                    m = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintStart_toStartOf)
            {
                n = context.getResourceId(j1, n);
                if (n == -1)
                {
                    n = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintEnd_toStartOf)
            {
                o = context.getResourceId(j1, o);
                if (o == -1)
                {
                    o = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintEnd_toEndOf)
            {
                p = context.getResourceId(j1, p);
                if (p == -1)
                {
                    p = context.getInt(j1, -1);
                }
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_goneMarginLeft)
            {
                q = context.getDimensionPixelSize(j1, q);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_goneMarginTop)
            {
                r = context.getDimensionPixelSize(j1, r);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_goneMarginRight)
            {
                s = context.getDimensionPixelSize(j1, s);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_goneMarginBottom)
            {
                t = context.getDimensionPixelSize(j1, t);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_goneMarginStart)
            {
                u = context.getDimensionPixelSize(j1, u);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_goneMarginEnd)
            {
                v = context.getDimensionPixelSize(j1, v);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintHorizontal_bias)
            {
                w = context.getFloat(j1, w);
            } else
            {
label0:
                {
                    if (j1 != c.a.ConstraintLayout_Layout_layout_constraintVertical_bias)
                    {
                        break label0;
                    }
                    x = context.getFloat(j1, x);
                }
            }
              goto _L3
            if (j1 != c.a.ConstraintLayout_Layout_layout_constraintDimensionRatio)
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
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintHorizontal_weight)
            {
                B = context.getFloat(j1, 0.0F);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintVertical_weight)
            {
                C = context.getFloat(j1, 0.0F);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle)
            {
                D = context.getInt(j1, 0);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintVertical_chainStyle)
            {
                E = context.getInt(j1, 0);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintWidth_default)
            {
                F = context.getInt(j1, 0);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintHeight_default)
            {
                G = context.getInt(j1, 0);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintWidth_min)
            {
                H = context.getDimensionPixelSize(j1, H);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintWidth_max)
            {
                J = context.getDimensionPixelSize(j1, J);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintHeight_min)
            {
                I = context.getDimensionPixelSize(j1, I);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintHeight_max)
            {
                K = context.getDimensionPixelSize(j1, K);
            } else
            if (j1 == c.a.ConstraintLayout_Layout_layout_constraintLeft_creator || j1 == c.a.ConstraintLayout_Layout_layout_constraintTop_creator || j1 == c.a.ConstraintLayout_Layout_layout_constraintRight_creator || j1 == c.a.ConstraintLayout_Layout_layout_constraintBottom_creator || j1 != c.a.ConstraintLayout_Layout_layout_constraintBaseline_creator);
              goto _L3
            context.recycle();
            a();
            return;
        }

        public a(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
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


    SparseArray a;
    c b;
    private final ArrayList c;
    private int d;
    private int e;
    private int f;
    private int g;
    private boolean h;
    private int i;
    private android.support.constraint.a j;

    public ConstraintLayout(Context context)
    {
        super(context);
        a = new SparseArray();
        c = new ArrayList(100);
        b = new c();
        d = 0;
        e = 0;
        f = 0x7fffffff;
        g = 0x7fffffff;
        h = true;
        i = 2;
        j = null;
        b(null);
    }

    public ConstraintLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new SparseArray();
        c = new ArrayList(100);
        b = new c();
        d = 0;
        e = 0;
        f = 0x7fffffff;
        g = 0x7fffffff;
        h = true;
        i = 2;
        j = null;
        b(attributeset);
    }

    public ConstraintLayout(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        a = new SparseArray();
        c = new ArrayList(100);
        b = new c();
        d = 0;
        e = 0;
        f = 0x7fffffff;
        g = 0x7fffffff;
        h = true;
        i = 2;
        j = null;
        b(attributeset);
    }

    private final b a(int k)
    {
        if (k == 0)
        {
            return b;
        }
        View view = (View)a.get(k);
        if (view == this)
        {
            return b;
        }
        if (view == null)
        {
            return null;
        } else
        {
            return ((a)view.getLayoutParams()).Z;
        }
    }

    private final b a(View view)
    {
        if (view == this)
        {
            return b;
        }
        if (view == null)
        {
            return null;
        } else
        {
            return ((a)view.getLayoutParams()).Z;
        }
    }

    private void a(int k, int l)
    {
        int k2 = getPaddingTop() + getPaddingBottom();
        int l2 = getPaddingLeft() + getPaddingRight();
        int i3 = getChildCount();
        int k1 = 0;
        while (k1 < i3) 
        {
            View view = getChildAt(k1);
            if (view.getVisibility() != 8)
            {
                a a1 = (a)view.getLayoutParams();
                b b1 = a1.Z;
                if (!a1.R)
                {
                    int j2 = a1.width;
                    int i2 = a1.height;
                    int i1;
                    boolean flag;
                    int l1;
                    boolean flag1;
                    if (a1.O || a1.P || !a1.O && a1.F == 1 || a1.width == -1 || !a1.P && (a1.G == 1 || a1.height == -1))
                    {
                        i1 = 1;
                    } else
                    {
                        i1 = 0;
                    }
                    flag1 = false;
                    l1 = 0;
                    flag = false;
                    if (i1 != 0)
                    {
                        if (j2 == 0 || j2 == -1)
                        {
                            l1 = getChildMeasureSpec(k, l2, -2);
                            i1 = 1;
                        } else
                        {
                            l1 = getChildMeasureSpec(k, l2, j2);
                            i1 = 0;
                        }
                        if (i2 == 0 || i2 == -1)
                        {
                            i2 = getChildMeasureSpec(l, k2, -2);
                            flag = true;
                        } else
                        {
                            i2 = getChildMeasureSpec(l, k2, i2);
                        }
                        view.measure(l1, i2);
                        j2 = view.getMeasuredWidth();
                        i2 = view.getMeasuredHeight();
                        l1 = ((flag) ? 1 : 0);
                        flag = i1;
                    } else
                    {
                        int j1 = j2;
                        flag = flag1;
                        j2 = j1;
                    }
                    b1.d(j2);
                    b1.e(i2);
                    if (flag)
                    {
                        b1.h(j2);
                    }
                    if (l1 != 0)
                    {
                        b1.i(i2);
                    }
                    if (a1.Q)
                    {
                        i1 = view.getBaseline();
                        if (i1 != -1)
                        {
                            b1.j(i1);
                        }
                    }
                }
            }
            k1++;
        }
    }

    private void b(int k, int l)
    {
        android.support.constraint.a.a.b.a a1;
        android.support.constraint.a.a.b.a a2;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        l1 = android.view.View.MeasureSpec.getMode(k);
        k = android.view.View.MeasureSpec.getSize(k);
        i1 = android.view.View.MeasureSpec.getMode(l);
        l = android.view.View.MeasureSpec.getSize(l);
        j1 = getPaddingTop();
        k1 = getPaddingBottom();
        i2 = getPaddingLeft();
        j2 = getPaddingRight();
        a1 = android.support.constraint.a.a.b.a.a;
        a2 = android.support.constraint.a.a.b.a.a;
        getLayoutParams();
        l1;
        JVM INSTR lookupswitch 3: default 96
    //                   -2147483648: 230
    //                   0: 237
    //                   1073741824: 246;
           goto _L1 _L2 _L3 _L4
_L1:
        k = 0;
_L9:
        i1;
        JVM INSTR lookupswitch 3: default 136
    //                   -2147483648: 264
    //                   0: 272
    //                   1073741824: 282;
           goto _L5 _L6 _L7 _L8
_L5:
        l = 0;
_L10:
        b.f(0);
        b.g(0);
        b.a(a1);
        b.d(k);
        b.b(a2);
        b.e(l);
        b.f(d - getPaddingLeft() - getPaddingRight());
        b.g(e - getPaddingTop() - getPaddingBottom());
        return;
_L2:
        a1 = android.support.constraint.a.a.b.a.b;
          goto _L9
_L3:
        a1 = android.support.constraint.a.a.b.a.b;
        k = 0;
          goto _L9
_L4:
        k = Math.min(f, k) - (i2 + j2);
          goto _L9
_L6:
        a2 = android.support.constraint.a.a.b.a.b;
          goto _L10
_L7:
        a2 = android.support.constraint.a.a.b.a.b;
        l = 0;
          goto _L10
_L8:
        l = Math.min(g, l) - (j1 + k1);
          goto _L10
    }

    private void b(AttributeSet attributeset)
    {
        b.a(this);
        a.put(getId(), this);
        j = null;
        if (attributeset != null)
        {
            attributeset = getContext().obtainStyledAttributes(attributeset, c.a.ConstraintLayout_Layout);
            int l = attributeset.getIndexCount();
            int k = 0;
            while (k < l) 
            {
                int i1 = attributeset.getIndex(k);
                if (i1 == c.a.ConstraintLayout_Layout_android_minWidth)
                {
                    d = attributeset.getDimensionPixelOffset(i1, d);
                } else
                if (i1 == c.a.ConstraintLayout_Layout_android_minHeight)
                {
                    e = attributeset.getDimensionPixelOffset(i1, e);
                } else
                if (i1 == c.a.ConstraintLayout_Layout_android_maxWidth)
                {
                    f = attributeset.getDimensionPixelOffset(i1, f);
                } else
                if (i1 == c.a.ConstraintLayout_Layout_android_maxHeight)
                {
                    g = attributeset.getDimensionPixelOffset(i1, g);
                } else
                if (i1 == c.a.ConstraintLayout_Layout_layout_optimizationLevel)
                {
                    i = attributeset.getInt(i1, i);
                } else
                if (i1 == c.a.ConstraintLayout_Layout_constraintSet)
                {
                    i1 = attributeset.getResourceId(i1, 0);
                    j = new android.support.constraint.a();
                    j.a(getContext(), i1);
                }
                k++;
            }
            attributeset.recycle();
        }
        b.m(i);
    }

    private void c()
    {
        boolean flag1 = false;
        int l = getChildCount();
        int k = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (k < l)
                {
                    if (!getChildAt(k).isLayoutRequested())
                    {
                        break label0;
                    }
                    flag = true;
                }
                if (flag)
                {
                    c.clear();
                    d();
                }
                return;
            }
            k++;
        } while (true);
    }

    private void d()
    {
        int l2;
        int l3;
        if (j != null)
        {
            j.a(this);
        }
        l3 = getChildCount();
        b.I();
        l2 = 0;
_L5:
        if (l2 >= l3) goto _L2; else goto _L1
_L1:
        Object obj;
        View view;
        view = getChildAt(l2);
        obj = a(view);
        if (obj != null) goto _L4; else goto _L3
_L3:
        l2++;
          goto _L5
_L4:
        a a1;
        a1 = (a)view.getLayoutParams();
        ((b) (obj)).a();
        ((b) (obj)).a(view.getVisibility());
        ((b) (obj)).a(view);
        b.b(((b) (obj)));
        if (!a1.P || !a1.O)
        {
            c.add(obj);
        }
        if (!a1.R) goto _L7; else goto _L6
_L6:
        obj = (d)obj;
        if (a1.a != -1)
        {
            ((d) (obj)).n(a1.a);
        }
        if (a1.b != -1)
        {
            ((d) (obj)).o(a1.b);
        }
        if (a1.c != -1F)
        {
            ((d) (obj)).e(a1.c);
        }
          goto _L3
_L7:
        if (a1.S == -1 && a1.T == -1 && a1.U == -1 && a1.V == -1 && a1.h == -1 && a1.i == -1 && a1.j == -1 && a1.k == -1 && a1.l == -1 && a1.L == -1 && a1.M == -1 && a1.width != -1 && a1.height != -1) goto _L3; else goto _L8
_L8:
        float f1;
        float f2;
        int k;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int i3;
        j2 = a1.S;
        k2 = a1.T;
        i2 = a1.U;
        k1 = a1.V;
        j1 = a1.W;
        l1 = a1.X;
        f2 = a1.Y;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            break MISSING_BLOCK_LABEL_1445;
        }
        j1 = a1.d;
        k1 = a1.e;
        int k3 = a1.f;
        int j3 = a1.g;
        i3 = a1.q;
        i1 = a1.s;
        f1 = a1.w;
        l = k1;
        k = j1;
        if (j1 == -1)
        {
            l = k1;
            k = j1;
            b b1;
            Object obj1;
            if (k1 == -1)
            {
                if (a1.n != -1)
                {
                    k = a1.n;
                    l = k1;
                } else
                {
                    l = k1;
                    k = j1;
                    if (a1.m != -1)
                    {
                        l = a1.m;
                        k = j1;
                    }
                }
            }
        }
        f2 = f1;
        l1 = i1;
        k1 = j3;
        i2 = k3;
        j1 = i3;
        k2 = l;
        j2 = k;
        if (k3 != -1)
        {
            break MISSING_BLOCK_LABEL_1445;
        }
        f2 = f1;
        l1 = i1;
        k1 = j3;
        i2 = k3;
        j1 = i3;
        k2 = l;
        j2 = k;
        if (j3 != -1)
        {
            break MISSING_BLOCK_LABEL_1445;
        }
        if (a1.o != -1)
        {
            k1 = a1.o;
            l1 = l;
            j1 = j3;
            l = k;
            k = l1;
        } else
        {
            f2 = f1;
            l1 = i1;
            k1 = j3;
            i2 = k3;
            j1 = i3;
            k2 = l;
            j2 = k;
            if (a1.p == -1)
            {
                break MISSING_BLOCK_LABEL_1445;
            }
            j1 = a1.p;
            k1 = k3;
            l1 = k;
            k = l;
            l = l1;
        }
_L9:
        if (l != -1)
        {
            b1 = a(l);
            if (b1 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.b, b1, android.support.constraint.a.a.a.c.b, a1.leftMargin, i3);
            }
        } else
        if (k != -1)
        {
            b b2 = a(k);
            if (b2 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.b, b2, android.support.constraint.a.a.a.c.d, a1.leftMargin, i3);
            }
        }
        if (k1 != -1)
        {
            b1 = a(k1);
            if (b1 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.d, b1, android.support.constraint.a.a.a.c.b, a1.rightMargin, i1);
            }
        } else
        if (j1 != -1)
        {
            b b3 = a(j1);
            if (b3 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.d, b3, android.support.constraint.a.a.a.c.d, a1.rightMargin, i1);
            }
        }
        if (a1.h != -1)
        {
            b1 = a(a1.h);
            if (b1 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.c, b1, android.support.constraint.a.a.a.c.c, a1.topMargin, a1.r);
            }
        } else
        if (a1.i != -1)
        {
            b b4 = a(a1.i);
            if (b4 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.c, b4, android.support.constraint.a.a.a.c.e, a1.topMargin, a1.r);
            }
        }
        if (a1.j != -1)
        {
            b1 = a(a1.j);
            if (b1 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.e, b1, android.support.constraint.a.a.a.c.c, a1.bottomMargin, a1.t);
            }
        } else
        if (a1.k != -1)
        {
            b b5 = a(a1.k);
            if (b5 != null)
            {
                ((b) (obj)).a(android.support.constraint.a.a.a.c.e, b5, android.support.constraint.a.a.a.c.e, a1.bottomMargin, a1.t);
            }
        }
        if (a1.l != -1)
        {
            obj1 = (View)a.get(a1.l);
            b1 = a(a1.l);
            if (b1 != null && obj1 != null && (((View) (obj1)).getLayoutParams() instanceof a))
            {
                obj1 = (a)((View) (obj1)).getLayoutParams();
                a1.Q = true;
                obj1.Q = true;
                ((b) (obj)).a(android.support.constraint.a.a.a.c.f).a(b1.a(android.support.constraint.a.a.a.c.f), 0, -1, android.support.constraint.a.a.a.b.b, 0, true);
                ((b) (obj)).a(android.support.constraint.a.a.a.c.c).i();
                ((b) (obj)).a(android.support.constraint.a.a.a.c.e).i();
            }
        }
        if (f1 >= 0.0F && f1 != 0.5F)
        {
            ((b) (obj)).a(f1);
        }
        if (a1.x >= 0.0F && a1.x != 0.5F)
        {
            ((b) (obj)).b(a1.x);
        }
        if (isInEditMode() && (a1.L != -1 || a1.M != -1))
        {
            ((b) (obj)).a(a1.L, a1.M);
        }
        if (!a1.O)
        {
            if (a1.width == -1)
            {
                ((b) (obj)).a(android.support.constraint.a.a.b.a.d);
                ((b) (obj)).a(android.support.constraint.a.a.a.c.b).d = a1.leftMargin;
                ((b) (obj)).a(android.support.constraint.a.a.a.c.d).d = a1.rightMargin;
            } else
            {
                ((b) (obj)).a(android.support.constraint.a.a.b.a.c);
                ((b) (obj)).d(0);
            }
        } else
        {
            ((b) (obj)).a(android.support.constraint.a.a.b.a.a);
            ((b) (obj)).d(a1.width);
        }
        if (!a1.P)
        {
            if (a1.height == -1)
            {
                ((b) (obj)).b(android.support.constraint.a.a.b.a.d);
                ((b) (obj)).a(android.support.constraint.a.a.a.c.c).d = a1.topMargin;
                ((b) (obj)).a(android.support.constraint.a.a.a.c.e).d = a1.bottomMargin;
            } else
            {
                ((b) (obj)).b(android.support.constraint.a.a.b.a.c);
                ((b) (obj)).e(0);
            }
        } else
        {
            ((b) (obj)).b(android.support.constraint.a.a.b.a.a);
            ((b) (obj)).e(a1.height);
        }
        if (a1.y != null)
        {
            ((b) (obj)).a(a1.y);
        }
        ((b) (obj)).c(a1.B);
        ((b) (obj)).d(a1.C);
        ((b) (obj)).k(a1.D);
        ((b) (obj)).l(a1.E);
        ((b) (obj)).a(a1.F, a1.H, a1.J);
        ((b) (obj)).b(a1.G, a1.I, a1.K);
          goto _L3
_L2:
        return;
        f1 = f2;
        k = k2;
        i1 = l1;
        l = j2;
        i3 = j1;
        j1 = k1;
        k1 = i2;
          goto _L9
    }

    public a a(AttributeSet attributeset)
    {
        return new a(getContext(), attributeset);
    }

    protected void a()
    {
        b.F();
    }

    public void addView(View view, int k, android.view.ViewGroup.LayoutParams layoutparams)
    {
        super.addView(view, k, layoutparams);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            onViewAdded(view);
        }
    }

    protected a b()
    {
        return new a(-2, -2);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof a;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return b();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return a(attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return new a(layoutparams);
    }

    public int getMaxHeight()
    {
        return g;
    }

    public int getMaxWidth()
    {
        return f;
    }

    public int getMinHeight()
    {
        return e;
    }

    public int getMinWidth()
    {
        return d;
    }

    protected void onLayout(boolean flag, int k, int l, int i1, int j1)
    {
        l = getChildCount();
        flag = isInEditMode();
        k = 0;
        while (k < l) 
        {
            View view = getChildAt(k);
            Object obj = (a)view.getLayoutParams();
            if (view.getVisibility() != 8 || ((a) (obj)).R || flag)
            {
                obj = ((a) (obj)).Z;
                i1 = ((b) (obj)).n();
                j1 = ((b) (obj)).o();
                view.layout(i1, j1, ((b) (obj)).h() + i1, ((b) (obj)).l() + j1);
            }
            k++;
        }
    }

    protected void onMeasure(int k, int l)
    {
        int j1 = getPaddingLeft();
        int i2 = getPaddingTop();
        b.b(j1);
        b.c(i2);
        b(k, l);
        if (h)
        {
            h = false;
            c();
        }
        a(k, l);
        if (getChildCount() > 0)
        {
            a();
        }
        int l1 = 0;
        int i1 = 0;
        int l2 = c.size();
        int i3 = i2 + getPaddingBottom();
        int j3 = j1 + getPaddingRight();
        if (l2 > 0)
        {
            int k1 = 0;
            boolean flag;
            boolean flag1;
            int j2;
            if (b.B() == android.support.constraint.a.a.b.a.b)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (b.C() == android.support.constraint.a.a.b.a.b)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            j2 = 0;
            while (j2 < l2) 
            {
                b b1 = (b)c.get(j2);
                if (!(b1 instanceof d))
                {
                    View view = (View)b1.x();
                    if (view != null && view.getVisibility() != 8)
                    {
                        a a1 = (a)view.getLayoutParams();
                        int k2;
                        if (a1.width == -2)
                        {
                            l1 = getChildMeasureSpec(k, j3, a1.width);
                        } else
                        {
                            l1 = android.view.View.MeasureSpec.makeMeasureSpec(b1.h(), 0x40000000);
                        }
                        if (a1.height == -2)
                        {
                            k2 = getChildMeasureSpec(l, i3, a1.height);
                        } else
                        {
                            k2 = android.view.View.MeasureSpec.makeMeasureSpec(b1.l(), 0x40000000);
                        }
                        view.measure(l1, k2);
                        l1 = view.getMeasuredWidth();
                        k2 = view.getMeasuredHeight();
                        if (l1 != b1.h())
                        {
                            b1.d(l1);
                            if (flag && b1.t() > b.h())
                            {
                                k1 = b1.t();
                                l1 = b1.a(android.support.constraint.a.a.a.c.d).d();
                                b.d(Math.max(d, k1 + l1));
                            }
                            l1 = 1;
                        } else
                        {
                            l1 = k1;
                        }
                        if (k2 != b1.l())
                        {
                            b1.e(k2);
                            if (flag1 && b1.u() > b.l())
                            {
                                k1 = b1.u();
                                l1 = b1.a(android.support.constraint.a.a.a.c.e).d();
                                b.e(Math.max(e, k1 + l1));
                            }
                            l1 = 1;
                        }
                        k1 = l1;
                        if (a1.Q)
                        {
                            k2 = view.getBaseline();
                            k1 = l1;
                            if (k2 != -1)
                            {
                                k1 = l1;
                                if (k2 != b1.w())
                                {
                                    b1.j(k2);
                                    k1 = 1;
                                }
                            }
                        }
                        if (android.os.Build.VERSION.SDK_INT >= 11)
                        {
                            i1 = combineMeasuredStates(i1, view.getMeasuredState());
                        }
                    }
                }
                j2++;
            }
            l1 = i1;
            if (k1 != 0)
            {
                a();
                l1 = i1;
            }
        }
        i1 = b.h() + j3;
        k1 = b.l() + i3;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            k = resolveSizeAndState(i1, k, l1);
            l = resolveSizeAndState(k1, l, l1 << 16);
            k = Math.min(f, k);
            i1 = Math.min(g, l);
            l = k & 0xffffff;
            i1 &= 0xffffff;
            k = l;
            if (b.D())
            {
                k = l | 0x1000000;
            }
            l = i1;
            if (b.E())
            {
                l = i1 | 0x1000000;
            }
            setMeasuredDimension(k, l);
            return;
        } else
        {
            setMeasuredDimension(i1, k1);
            return;
        }
    }

    public void onViewAdded(View view)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            super.onViewAdded(view);
        }
        b b1 = a(view);
        if ((view instanceof android.support.constraint.b) && !(b1 instanceof d))
        {
            Object obj = (a)view.getLayoutParams();
            obj.Z = new d();
            obj.R = true;
            ((d)((a) (obj)).Z).m(((a) (obj)).N);
            obj = ((a) (obj)).Z;
        }
        a.put(view.getId(), view);
        h = true;
    }

    public void onViewRemoved(View view)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            super.onViewRemoved(view);
        }
        a.remove(view.getId());
        b.c(a(view));
        h = true;
    }

    public void removeView(View view)
    {
        super.removeView(view);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            onViewRemoved(view);
        }
    }

    public void requestLayout()
    {
        super.requestLayout();
        h = true;
    }

    public void setConstraintSet(android.support.constraint.a a1)
    {
        j = a1;
    }

    public void setId(int k)
    {
        a.remove(getId());
        super.setId(k);
        a.put(getId(), this);
    }

    public void setMaxHeight(int k)
    {
        if (k == g)
        {
            return;
        } else
        {
            g = k;
            requestLayout();
            return;
        }
    }

    public void setMaxWidth(int k)
    {
        if (k == f)
        {
            return;
        } else
        {
            f = k;
            requestLayout();
            return;
        }
    }

    public void setMinHeight(int k)
    {
        if (k == e)
        {
            return;
        } else
        {
            e = k;
            requestLayout();
            return;
        }
    }

    public void setMinWidth(int k)
    {
        if (k == d)
        {
            return;
        } else
        {
            d = k;
            requestLayout();
            return;
        }
    }

    public void setOptimizationLevel(int k)
    {
        b.m(k);
    }
}
