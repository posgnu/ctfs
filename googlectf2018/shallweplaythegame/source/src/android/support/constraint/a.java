// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import java.io.IOException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package android.support.constraint:
//            ConstraintLayout, b

public class android.support.constraint.a
{
    private static class a
    {

        public int A;
        public int B;
        public int C;
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
        public float N;
        public float O;
        public int P;
        public int Q;
        public float R;
        public boolean S;
        public float T;
        public float U;
        public float V;
        public float W;
        public float X;
        public float Y;
        public float Z;
        boolean a;
        public float aa;
        public float ab;
        public float ac;
        public int ad;
        public int ae;
        public int af;
        public int ag;
        public int ah;
        public int ai;
        public int b;
        public int c;
        int d;
        public int e;
        public int f;
        public float g;
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
        public float u;
        public float v;
        public String w;
        public int x;
        public int y;
        public int z;

        public a a()
        {
            a a1 = new a();
            a1.a = a;
            a1.b = b;
            a1.c = c;
            a1.e = e;
            a1.f = f;
            a1.g = g;
            a1.h = h;
            a1.i = i;
            a1.j = j;
            a1.k = k;
            a1.l = l;
            a1.m = m;
            a1.n = n;
            a1.o = o;
            a1.p = p;
            a1.q = q;
            a1.r = r;
            a1.s = s;
            a1.t = t;
            a1.u = u;
            a1.v = v;
            a1.w = w;
            a1.x = x;
            a1.y = y;
            a1.u = u;
            a1.u = u;
            a1.u = u;
            a1.u = u;
            a1.u = u;
            a1.z = z;
            a1.A = A;
            a1.B = B;
            a1.C = C;
            a1.D = D;
            a1.E = E;
            a1.F = F;
            a1.G = G;
            a1.H = H;
            a1.I = I;
            a1.J = J;
            a1.K = K;
            a1.L = L;
            a1.M = M;
            a1.N = N;
            a1.O = O;
            a1.P = P;
            a1.Q = Q;
            a1.R = R;
            a1.S = S;
            a1.T = T;
            a1.U = U;
            a1.V = V;
            a1.W = W;
            a1.X = X;
            a1.Y = Y;
            a1.Z = Z;
            a1.aa = aa;
            a1.ab = ab;
            a1.ac = ac;
            a1.ad = ad;
            a1.ae = ae;
            a1.af = af;
            a1.ag = ag;
            a1.ah = ah;
            a1.ai = ai;
            return a1;
        }

        public void a(ConstraintLayout.a a1)
        {
            a1.d = h;
            a1.e = i;
            a1.f = j;
            a1.g = k;
            a1.h = l;
            a1.i = m;
            a1.j = n;
            a1.k = o;
            a1.l = p;
            a1.m = q;
            a1.n = r;
            a1.o = s;
            a1.p = t;
            a1.leftMargin = A;
            a1.rightMargin = B;
            a1.topMargin = C;
            a1.bottomMargin = D;
            a1.u = M;
            a1.v = L;
            a1.w = u;
            a1.x = v;
            a1.y = w;
            a1.L = x;
            a1.M = y;
            a1.C = N;
            a1.B = O;
            a1.E = Q;
            a1.D = P;
            a1.F = ad;
            a1.G = ae;
            a1.J = af;
            a1.K = ag;
            a1.H = ah;
            a1.I = ai;
            a1.N = z;
            a1.c = g;
            a1.a = e;
            a1.b = f;
            a1.width = b;
            a1.height = c;
            if (android.os.Build.VERSION.SDK_INT >= 17)
            {
                a1.setMarginStart(F);
                a1.setMarginEnd(E);
            }
            a1.a();
        }

        public Object clone()
        {
            return a();
        }

        private a()
        {
            a = false;
            e = -1;
            f = -1;
            g = -1F;
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
            u = 0.5F;
            v = 0.5F;
            w = null;
            x = -1;
            y = -1;
            z = -1;
            A = -1;
            B = -1;
            C = -1;
            D = -1;
            E = -1;
            F = -1;
            G = 0;
            H = -1;
            I = -1;
            J = -1;
            K = -1;
            L = -1;
            M = -1;
            N = 0.0F;
            O = 0.0F;
            P = 0;
            Q = 0;
            R = 1.0F;
            S = false;
            T = 0.0F;
            U = 0.0F;
            V = 0.0F;
            W = 1.0F;
            X = 1.0F;
            Y = 0.0F;
            Z = 0.0F;
            aa = 0.0F;
            ab = 0.0F;
            ac = 0.0F;
            ad = -1;
            ae = -1;
            af = -1;
            ag = -1;
            ah = -1;
            ai = -1;
        }

    }


    private static final int a[] = {
        0, 4, 8
    };
    private static SparseIntArray c;
    private HashMap b;

    public android.support.constraint.a()
    {
        b = new HashMap();
    }

    private static int a(TypedArray typedarray, int i, int j)
    {
        int k = typedarray.getResourceId(i, j);
        j = k;
        if (k == -1)
        {
            j = typedarray.getInt(i, -1);
        }
        return j;
    }

    private a a(Context context, AttributeSet attributeset)
    {
        a a1 = new a();
        context = context.obtainStyledAttributes(attributeset, c.a.ConstraintSet);
        a(a1, ((TypedArray) (context)));
        context.recycle();
        return a1;
    }

    private void a(a a1, TypedArray typedarray)
    {
        int i;
        int j;
        j = typedarray.getIndexCount();
        i = 0;
_L57:
        int k;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_1304;
        }
        k = typedarray.getIndex(i);
        c.get(k);
        JVM INSTR tableswitch 1 60: default 284
    //                   1 475
    //                   2 883
    //                   3 458
    //                   4 441
    //                   5 1240
    //                   6 492
    //                   7 509
    //                   8 849
    //                   9 645
    //                   10 628
    //                   11 713
    //                   12 747
    //                   13 662
    //                   14 696
    //                   15 730
    //                   16 679
    //                   17 526
    //                   18 543
    //                   19 560
    //                   20 764
    //                   21 917
    //                   22 934
    //                   23 900
    //                   24 798
    //                   25 339
    //                   26 356
    //                   27 577
    //                   28 815
    //                   29 373
    //                   30 390
    //                   31 832
    //                   32 594
    //                   33 611
    //                   34 866
    //                   35 424
    //                   36 407
    //                   37 781
    //                   38 1223
    //                   39 1172
    //                   40 1155
    //                   41 1206
    //                   42 1189
    //                   43 963
    //                   44 980
    //                   45 1002
    //                   46 1019
    //                   47 1036
    //                   48 1053
    //                   49 1070
    //                   50 1087
    //                   51 1104
    //                   52 1121
    //                   53 1138
    //                   54 284
    //                   55 284
    //                   56 284
    //                   57 284
    //                   58 284
    //                   59 284
    //                   60 1253;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41 _L42 _L43 _L44 _L45 _L46 _L47 _L48 _L49 _L50 _L51 _L52 _L53 _L54 _L1 _L1 _L1 _L1 _L1 _L1 _L55
_L55:
        break MISSING_BLOCK_LABEL_1253;
_L26:
        break; /* Loop/switch isn't completed */
_L1:
        Log.w("ConstraintSet", (new StringBuilder()).append("Unknown attribute 0x").append(Integer.toHexString(k)).append("   ").append(c.get(k)).toString());
_L58:
        i++;
        if (true) goto _L57; else goto _L56
_L56:
        a1.h = a(typedarray, k, a1.h);
          goto _L58
_L27:
        a1.i = a(typedarray, k, a1.i);
          goto _L58
_L30:
        a1.j = a(typedarray, k, a1.j);
          goto _L58
_L31:
        a1.k = a(typedarray, k, a1.k);
          goto _L58
_L37:
        a1.l = a(typedarray, k, a1.l);
          goto _L58
_L36:
        a1.m = a(typedarray, k, a1.m);
          goto _L58
_L5:
        a1.n = a(typedarray, k, a1.n);
          goto _L58
_L4:
        a1.o = a(typedarray, k, a1.o);
          goto _L58
_L2:
        a1.p = a(typedarray, k, a1.p);
          goto _L58
_L7:
        a1.x = typedarray.getDimensionPixelOffset(k, a1.x);
          goto _L58
_L8:
        a1.y = typedarray.getDimensionPixelOffset(k, a1.y);
          goto _L58
_L18:
        a1.e = typedarray.getDimensionPixelOffset(k, a1.e);
          goto _L58
_L19:
        a1.f = typedarray.getDimensionPixelOffset(k, a1.f);
          goto _L58
_L20:
        a1.g = typedarray.getFloat(k, a1.g);
          goto _L58
_L28:
        a1.z = typedarray.getInt(k, a1.z);
          goto _L58
_L33:
        a1.q = a(typedarray, k, a1.q);
          goto _L58
_L34:
        a1.r = a(typedarray, k, a1.r);
          goto _L58
_L11:
        a1.s = a(typedarray, k, a1.s);
          goto _L58
_L10:
        a1.n = a(typedarray, k, a1.t);
          goto _L58
_L14:
        a1.H = typedarray.getDimensionPixelSize(k, a1.H);
          goto _L58
_L17:
        a1.I = typedarray.getDimensionPixelSize(k, a1.I);
          goto _L58
_L15:
        a1.J = typedarray.getDimensionPixelSize(k, a1.J);
          goto _L58
_L12:
        a1.K = typedarray.getDimensionPixelSize(k, a1.K);
          goto _L58
_L16:
        a1.M = typedarray.getDimensionPixelSize(k, a1.M);
          goto _L58
_L13:
        a1.L = typedarray.getDimensionPixelSize(k, a1.L);
          goto _L58
_L21:
        a1.u = typedarray.getFloat(k, a1.u);
          goto _L58
_L38:
        a1.v = typedarray.getFloat(k, a1.v);
          goto _L58
_L25:
        a1.A = typedarray.getDimensionPixelSize(k, a1.A);
          goto _L58
_L29:
        a1.B = typedarray.getDimensionPixelSize(k, a1.B);
          goto _L58
_L32:
        a1.F = typedarray.getDimensionPixelSize(k, a1.F);
          goto _L58
_L9:
        a1.E = typedarray.getDimensionPixelSize(k, a1.E);
          goto _L58
_L35:
        a1.C = typedarray.getDimensionPixelSize(k, a1.C);
          goto _L58
_L3:
        a1.D = typedarray.getDimensionPixelSize(k, a1.D);
          goto _L58
_L24:
        a1.b = typedarray.getLayoutDimension(k, a1.b);
          goto _L58
_L22:
        a1.c = typedarray.getLayoutDimension(k, a1.c);
          goto _L58
_L23:
        a1.G = typedarray.getInt(k, a1.G);
        a1.G = a[a1.G];
          goto _L58
_L44:
        a1.R = typedarray.getFloat(k, a1.R);
          goto _L58
_L45:
        a1.S = true;
        a1.T = typedarray.getFloat(k, a1.T);
          goto _L58
_L46:
        a1.U = typedarray.getFloat(k, a1.U);
          goto _L58
_L47:
        a1.V = typedarray.getFloat(k, a1.V);
          goto _L58
_L48:
        a1.W = typedarray.getFloat(k, a1.W);
          goto _L58
_L49:
        a1.X = typedarray.getFloat(k, a1.X);
          goto _L58
_L50:
        a1.Y = typedarray.getFloat(k, a1.Y);
          goto _L58
_L51:
        a1.Z = typedarray.getFloat(k, a1.Z);
          goto _L58
_L52:
        a1.aa = typedarray.getFloat(k, a1.aa);
          goto _L58
_L53:
        a1.ab = typedarray.getFloat(k, a1.ab);
          goto _L58
_L54:
        a1.ac = typedarray.getFloat(k, a1.ac);
          goto _L58
_L41:
        a1.N = typedarray.getFloat(k, a1.N);
          goto _L58
_L40:
        a1.O = typedarray.getFloat(k, a1.O);
          goto _L58
_L43:
        a1.Q = typedarray.getInt(k, a1.Q);
          goto _L58
_L42:
        a1.P = typedarray.getInt(k, a1.P);
          goto _L58
_L39:
        a1.d = typedarray.getResourceId(k, a1.d);
          goto _L58
_L6:
        a1.w = typedarray.getString(k);
          goto _L58
        Log.w("ConstraintSet", (new StringBuilder()).append("unused attribute 0x").append(Integer.toHexString(k)).append("   ").append(c.get(k)).toString());
          goto _L58
    }

    public void a(Context context, int i)
    {
        android.content.res.XmlResourceParser xmlresourceparser = context.getResources().getXml(i);
        i = xmlresourceparser.getEventType();
          goto _L1
_L2:
        i = xmlresourceparser.next();
          goto _L1
_L5:
        xmlresourceparser.getName();
          goto _L2
        context;
        context.printStackTrace();
_L4:
        return;
_L6:
        String s = xmlresourceparser.getName();
        a a1 = a(context, Xml.asAttributeSet(xmlresourceparser));
        if (s.equalsIgnoreCase("Guideline"))
        {
            a1.a = true;
        }
        b.put(Integer.valueOf(a1.d), a1);
          goto _L2
        context;
        context.printStackTrace();
        return;
_L1:
        if (i == 1) goto _L4; else goto _L3
_L3:
        i;
        JVM INSTR tableswitch 0 3: default 144
    //                   0 29
    //                   1 19
    //                   2 45
    //                   3 19;
           goto _L2 _L5 _L2 _L6 _L2
    }

    void a(ConstraintLayout constraintlayout)
    {
        int j = constraintlayout.getChildCount();
        Object obj = new HashSet(b.keySet());
        for (int i = 0; i < j; i++)
        {
            View view = constraintlayout.getChildAt(i);
            int k = view.getId();
            if (!b.containsKey(Integer.valueOf(k)))
            {
                continue;
            }
            ((HashSet) (obj)).remove(Integer.valueOf(k));
            a a2 = (a)b.get(Integer.valueOf(k));
            ConstraintLayout.a a3 = (ConstraintLayout.a)view.getLayoutParams();
            a2.a(a3);
            view.setLayoutParams(a3);
            view.setVisibility(a2.G);
            if (android.os.Build.VERSION.SDK_INT < 17)
            {
                continue;
            }
            view.setAlpha(a2.R);
            view.setRotationX(a2.U);
            view.setRotationY(a2.V);
            view.setScaleX(a2.W);
            view.setScaleY(a2.X);
            view.setPivotX(a2.Y);
            view.setPivotY(a2.Z);
            view.setTranslationX(a2.aa);
            view.setTranslationY(a2.ab);
            if (android.os.Build.VERSION.SDK_INT < 21)
            {
                continue;
            }
            view.setTranslationZ(a2.ac);
            if (a2.S)
            {
                view.setElevation(a2.T);
            }
        }

        obj = ((HashSet) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            Object obj1 = (Integer)((Iterator) (obj)).next();
            a a1 = (a)b.get(obj1);
            if (a1.a)
            {
                b b1 = new b(constraintlayout.getContext());
                b1.setId(((Integer) (obj1)).intValue());
                obj1 = constraintlayout.b();
                a1.a(((ConstraintLayout.a) (obj1)));
                constraintlayout.addView(b1, ((android.view.ViewGroup.LayoutParams) (obj1)));
            }
        } while (true);
    }

    static 
    {
        c = new SparseIntArray();
        c.append(c.a.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        c.append(c.a.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        c.append(c.a.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        c.append(c.a.ConstraintSet_layout_constraintRight_toRightOf, 30);
        c.append(c.a.ConstraintSet_layout_constraintTop_toTopOf, 36);
        c.append(c.a.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        c.append(c.a.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        c.append(c.a.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        c.append(c.a.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        c.append(c.a.ConstraintSet_layout_editor_absoluteX, 6);
        c.append(c.a.ConstraintSet_layout_editor_absoluteY, 7);
        c.append(c.a.ConstraintSet_layout_constraintGuide_begin, 17);
        c.append(c.a.ConstraintSet_layout_constraintGuide_end, 18);
        c.append(c.a.ConstraintSet_layout_constraintGuide_percent, 19);
        c.append(c.a.ConstraintSet_android_orientation, 27);
        c.append(c.a.ConstraintSet_layout_constraintStart_toEndOf, 32);
        c.append(c.a.ConstraintSet_layout_constraintStart_toStartOf, 33);
        c.append(c.a.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        c.append(c.a.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        c.append(c.a.ConstraintSet_layout_goneMarginLeft, 13);
        c.append(c.a.ConstraintSet_layout_goneMarginTop, 16);
        c.append(c.a.ConstraintSet_layout_goneMarginRight, 14);
        c.append(c.a.ConstraintSet_layout_goneMarginBottom, 11);
        c.append(c.a.ConstraintSet_layout_goneMarginStart, 15);
        c.append(c.a.ConstraintSet_layout_goneMarginEnd, 12);
        c.append(c.a.ConstraintSet_layout_constraintVertical_weight, 40);
        c.append(c.a.ConstraintSet_layout_constraintHorizontal_weight, 39);
        c.append(c.a.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        c.append(c.a.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        c.append(c.a.ConstraintSet_layout_constraintHorizontal_bias, 20);
        c.append(c.a.ConstraintSet_layout_constraintVertical_bias, 37);
        c.append(c.a.ConstraintSet_layout_constraintDimensionRatio, 5);
        c.append(c.a.ConstraintSet_layout_constraintLeft_creator, 60);
        c.append(c.a.ConstraintSet_layout_constraintTop_creator, 60);
        c.append(c.a.ConstraintSet_layout_constraintRight_creator, 60);
        c.append(c.a.ConstraintSet_layout_constraintBottom_creator, 60);
        c.append(c.a.ConstraintSet_layout_constraintBaseline_creator, 60);
        c.append(c.a.ConstraintSet_android_layout_marginLeft, 24);
        c.append(c.a.ConstraintSet_android_layout_marginRight, 28);
        c.append(c.a.ConstraintSet_android_layout_marginStart, 31);
        c.append(c.a.ConstraintSet_android_layout_marginEnd, 8);
        c.append(c.a.ConstraintSet_android_layout_marginTop, 34);
        c.append(c.a.ConstraintSet_android_layout_marginBottom, 2);
        c.append(c.a.ConstraintSet_android_layout_width, 23);
        c.append(c.a.ConstraintSet_android_layout_height, 21);
        c.append(c.a.ConstraintSet_android_visibility, 22);
        c.append(c.a.ConstraintSet_android_alpha, 43);
        c.append(c.a.ConstraintSet_android_elevation, 44);
        c.append(c.a.ConstraintSet_android_rotationX, 45);
        c.append(c.a.ConstraintSet_android_rotationY, 46);
        c.append(c.a.ConstraintSet_android_scaleX, 47);
        c.append(c.a.ConstraintSet_android_scaleY, 48);
        c.append(c.a.ConstraintSet_android_transformPivotX, 49);
        c.append(c.a.ConstraintSet_android_transformPivotY, 50);
        c.append(c.a.ConstraintSet_android_translationX, 51);
        c.append(c.a.ConstraintSet_android_translationY, 52);
        c.append(c.a.ConstraintSet_android_translationZ, 53);
        c.append(c.a.ConstraintSet_layout_constraintWidth_default, 54);
        c.append(c.a.ConstraintSet_layout_constraintHeight_default, 55);
        c.append(c.a.ConstraintSet_layout_constraintWidth_max, 56);
        c.append(c.a.ConstraintSet_layout_constraintHeight_max, 57);
        c.append(c.a.ConstraintSet_layout_constraintWidth_min, 58);
        c.append(c.a.ConstraintSet_layout_constraintHeight_min, 59);
        c.append(c.a.ConstraintSet_android_id, 38);
    }
}
