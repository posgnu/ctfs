// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.graphics.Path;
import android.util.Log;
import java.util.ArrayList;

public class android.support.v4.c.b
{
    private static class a
    {

        int a;
        boolean b;

        a()
        {
        }
    }

    public static class b
    {

        public char a;
        public float b[];

        private static void a(Path path, double d, double d1, double d2, double d3, double d4, double d5, double d6, 
                double d7, double d8)
        {
            int j = (int)Math.ceil(Math.abs((4D * d8) / 3.1415926535897931D));
            double d17 = Math.cos(d6);
            double d18 = Math.sin(d6);
            d6 = Math.cos(d7);
            double d11 = Math.sin(d7);
            double d13 = -d2;
            double d9 = -d2;
            double d19 = d8 / (double)j;
            int i = 0;
            d9 = d11 * (d9 * d18) + d6 * (d3 * d17);
            d11 = d13 * d17 * d11 - d3 * d18 * d6;
            d8 = d7;
            d7 = d5;
            d6 = d4;
            d5 = d11;
            double d14;
            for (d4 = d9; i < j; d4 = d14)
            {
                double d15 = d8 + d19;
                d14 = Math.sin(d15);
                double d20 = Math.cos(d15);
                double d10 = (d2 * d17 * d20 + d) - d3 * d18 * d14;
                double d12 = d3 * d17 * d14 + (d2 * d18 * d20 + d1);
                double d16 = -d2 * d17 * d14 - d3 * d18 * d20;
                d14 = d20 * (d3 * d17) + d14 * (-d2 * d18);
                d20 = Math.tan((d15 - d8) / 2D);
                d8 = Math.sin(d15 - d8);
                d8 = ((Math.sqrt(d20 * (3D * d20) + 4D) - 1.0D) * d8) / 3D;
                path.rLineTo(0.0F, 0.0F);
                path.cubicTo((float)(d5 * d8 + d6), (float)(d7 + d4 * d8), (float)(d10 - d8 * d16), (float)(d12 - d8 * d14), (float)d10, (float)d12);
                i++;
                d5 = d16;
                d8 = d15;
                d7 = d12;
                d6 = d10;
            }

        }

        private static void a(Path path, float f, float f1, float f2, float f3, float f4, float f5, float f6, 
                boolean flag, boolean flag1)
        {
            double d4 = Math.toRadians(f6);
            double d5 = Math.cos(d4);
            double d6 = Math.sin(d4);
            double d7 = ((double)f * d5 + (double)f1 * d6) / (double)f4;
            double d8 = ((double)(-f) * d6 + (double)f1 * d5) / (double)f5;
            double d = ((double)f2 * d5 + (double)f3 * d6) / (double)f4;
            double d3 = ((double)(-f2) * d6 + (double)f3 * d5) / (double)f5;
            double d10 = d7 - d;
            double d9 = d8 - d3;
            double d2 = (d7 + d) / 2D;
            double d1 = (d8 + d3) / 2D;
            double d11 = d10 * d10 + d9 * d9;
            if (d11 == 0.0D)
            {
                Log.w("PathParser", " Points are coincident");
                return;
            }
            double d12 = 1.0D / d11 - 0.25D;
            if (d12 < 0.0D)
            {
                Log.w("PathParser", (new StringBuilder()).append("Points are too far apart ").append(d11).toString());
                float f7 = (float)(Math.sqrt(d11) / 1.9999899999999999D);
                a(path, f, f1, f2, f3, f4 * f7, f5 * f7, f6, flag, flag1);
                return;
            }
            d11 = Math.sqrt(d12);
            d10 *= d11;
            d9 *= d11;
            if (flag == flag1)
            {
                d2 -= d9;
                d1 = d10 + d1;
            } else
            {
                d2 = d9 + d2;
                d1 -= d10;
            }
            d7 = Math.atan2(d8 - d1, d7 - d2);
            d3 = Math.atan2(d3 - d1, d - d2) - d7;
            if (d3 >= 0.0D)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            d = d3;
            if (flag1 != flag)
            {
                if (d3 > 0.0D)
                {
                    d = d3 - 6.2831853071795862D;
                } else
                {
                    d = d3 + 6.2831853071795862D;
                }
            }
            d2 = (double)f4 * d2;
            d1 *= f5;
            a(path, d2 * d5 - d1 * d6, d2 * d6 + d1 * d5, f4, f5, f, f1, d4, d7, d);
        }

        private static void a(Path path, float af[], char c1, char c2, float af1[])
        {
            float f;
            float f1;
            float f2;
            float f3;
            float f4;
            float f5;
            f5 = af[0];
            f4 = af[1];
            f3 = af[2];
            f2 = af[3];
            f = af[4];
            f1 = af[5];
            c2;
            JVM INSTR lookupswitch 20: default 200
        //                       65: 478
        //                       67: 465
        //                       72: 459
        //                       76: 453
        //                       77: 453
        //                       81: 472
        //                       83: 472
        //                       84: 453
        //                       86: 459
        //                       90: 419
        //                       97: 478
        //                       99: 465
        //                       104: 459
        //                       108: 453
        //                       109: 453
        //                       113: 472
        //                       115: 472
        //                       116: 453
        //                       118: 459
        //                       122: 419;
               goto _L1 _L2 _L3 _L4 _L5 _L5 _L6 _L6 _L5 _L4 _L7 _L2 _L3 _L4 _L5 _L5 _L6 _L6 _L5 _L4 _L7
_L1:
            byte byte0 = 2;
_L32:
            char c3;
            boolean flag = false;
            c3 = c1;
            c1 = flag;
_L29:
            if (c1 >= af1.length) goto _L9; else goto _L8
_L8:
            c2;
            JVM INSTR lookupswitch 18: default 376
        //                       65: 2074
        //                       67: 1122
        //                       72: 876
        //                       76: 776
        //                       77: 593
        //                       81: 1602
        //                       83: 1366
        //                       84: 1810
        //                       86: 960
        //                       97: 1919
        //                       99: 1003
        //                       104: 827
        //                       108: 707
        //                       109: 485
        //                       113: 1495
        //                       115: 1209
        //                       116: 1677
        //                       118: 915;
               goto _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28
_L10:
            float f6 = f1;
            f1 = f2;
            f2 = f;
            f = f6;
_L30:
            c1 += byte0;
            float f7 = f2;
            c3 = c2;
            f2 = f1;
            f1 = f;
            f = f7;
              goto _L29
_L7:
            path.close();
            path.moveTo(f, f1);
            f2 = f1;
            f3 = f;
            f4 = f1;
            f5 = f;
            byte0 = 2;
            continue; /* Loop/switch isn't completed */
_L5:
            byte0 = 2;
            continue; /* Loop/switch isn't completed */
_L4:
            byte0 = 1;
            continue; /* Loop/switch isn't completed */
_L3:
            byte0 = 6;
            continue; /* Loop/switch isn't completed */
_L6:
            byte0 = 4;
            continue; /* Loop/switch isn't completed */
_L2:
            byte0 = 7;
            continue; /* Loop/switch isn't completed */
_L24:
            f5 += af1[c1 + 0];
            f4 = af1[c1 + 1] + f4;
            if (c1 > 0)
            {
                path.rLineTo(af1[c1 + 0], af1[c1 + 1]);
                float f8 = f;
                f = f1;
                f1 = f2;
                f2 = f8;
            } else
            {
                path.rMoveTo(af1[c1 + 0], af1[c1 + 1]);
                float f22 = f4;
                float f9 = f5;
                f1 = f2;
                f = f4;
                f2 = f5;
                f4 = f22;
                f5 = f9;
            }
              goto _L30
_L15:
            f4 = af1[c1 + 0];
            f5 = af1[c1 + 1];
            if (c1 > 0)
            {
                path.lineTo(af1[c1 + 0], af1[c1 + 1]);
                float f10 = f4;
                f4 = f;
                f = f1;
                f1 = f2;
                f2 = f4;
                f4 = f5;
                f5 = f10;
            } else
            {
                path.moveTo(af1[c1 + 0], af1[c1 + 1]);
                float f23 = f5;
                float f11 = f4;
                f1 = f2;
                f = f5;
                f2 = f4;
                f4 = f23;
                f5 = f11;
            }
              goto _L30
_L23:
            path.rLineTo(af1[c1 + 0], af1[c1 + 1]);
            float f24 = af1[c1 + 0];
            float f12 = af1[c1 + 1];
            f12 += f4;
            f5 += f24;
            f4 = f;
            f = f1;
            f1 = f2;
            f2 = f4;
            f4 = f12;
              goto _L30
_L14:
            path.lineTo(af1[c1 + 0], af1[c1 + 1]);
            f5 = af1[c1 + 0];
            f4 = af1[c1 + 1];
            float f13 = f;
            f = f1;
            f1 = f2;
            f2 = f13;
              goto _L30
_L22:
            path.rLineTo(af1[c1 + 0], 0.0F);
            float f14 = af1[c1 + 0];
            f14 = f5 + f14;
            f5 = f;
            f = f1;
            f1 = f2;
            f2 = f5;
            f5 = f14;
              goto _L30
_L13:
            path.lineTo(af1[c1 + 0], f4);
            f5 = af1[c1 + 0];
            float f15 = f;
            f = f1;
            f1 = f2;
            f2 = f15;
              goto _L30
_L28:
            path.rLineTo(0.0F, af1[c1 + 0]);
            float f25 = af1[c1 + 0];
            float f16 = f;
            f4 = f25 + f4;
            f = f1;
            f1 = f2;
            f2 = f16;
              goto _L30
_L19:
            path.lineTo(f5, af1[c1 + 0]);
            float f17 = af1[c1 + 0];
            f4 = f;
            f = f1;
            f1 = f2;
            f2 = f4;
            f4 = f17;
              goto _L30
_L21:
            path.rCubicTo(af1[c1 + 0], af1[c1 + 1], af1[c1 + 2], af1[c1 + 3], af1[c1 + 4], af1[c1 + 5]);
            f3 = af1[c1 + 2];
            float f26 = af1[c1 + 3];
            f2 = af1[c1 + 4];
            float f18 = af1[c1 + 5];
            f3 = f5 + f3;
            f18 += f4;
            f5 += f2;
            f2 = f;
            f4 = f26 + f4;
            f = f1;
            f1 = f4;
            f4 = f18;
              goto _L30
_L12:
            path.cubicTo(af1[c1 + 0], af1[c1 + 1], af1[c1 + 2], af1[c1 + 3], af1[c1 + 4], af1[c1 + 5]);
            f5 = af1[c1 + 4];
            f4 = af1[c1 + 5];
            f3 = af1[c1 + 2];
            float f19 = af1[c1 + 3];
            f2 = f;
            f = f1;
            f1 = f19;
              goto _L30
_L26:
            float f21;
            float f27;
            float f28;
            boolean flag1;
            boolean flag2;
            if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S')
            {
                float f20 = f5 - f3;
                f3 = f4 - f2;
                f2 = f20;
            } else
            {
                f3 = 0.0F;
                f2 = 0.0F;
            }
            path.rCubicTo(f2, f3, af1[c1 + 0], af1[c1 + 1], af1[c1 + 2], af1[c1 + 3]);
            f3 = af1[c1 + 0];
            f27 = af1[c1 + 1];
            f2 = af1[c1 + 2];
            f21 = af1[c1 + 3];
            f3 = f5 + f3;
            f21 += f4;
            f5 += f2;
            f2 = f;
            f4 = f27 + f4;
            f = f1;
            f1 = f4;
            f4 = f21;
              goto _L30
_L17:
            if (c3 == 'c' || c3 == 's' || c3 == 'C' || c3 == 'S')
            {
                f3 = 2.0F * f5 - f3;
                f4 = 2.0F * f4 - f2;
                f2 = f3;
            } else
            {
                f2 = f5;
            }
            path.cubicTo(f2, f4, af1[c1 + 0], af1[c1 + 1], af1[c1 + 2], af1[c1 + 3]);
            f3 = af1[c1 + 0];
            f21 = af1[c1 + 1];
            f5 = af1[c1 + 2];
            f4 = af1[c1 + 3];
            f2 = f;
            f = f1;
            f1 = f21;
              goto _L30
_L25:
            path.rQuadTo(af1[c1 + 0], af1[c1 + 1], af1[c1 + 2], af1[c1 + 3]);
            f3 = af1[c1 + 0];
            f27 = af1[c1 + 1];
            f2 = af1[c1 + 2];
            f21 = af1[c1 + 3];
            f3 = f5 + f3;
            f21 += f4;
            f5 += f2;
            f2 = f;
            f4 = f27 + f4;
            f = f1;
            f1 = f4;
            f4 = f21;
              goto _L30
_L16:
            path.quadTo(af1[c1 + 0], af1[c1 + 1], af1[c1 + 2], af1[c1 + 3]);
            f3 = af1[c1 + 0];
            f21 = af1[c1 + 1];
            f5 = af1[c1 + 2];
            f4 = af1[c1 + 3];
            f2 = f;
            f = f1;
            f1 = f21;
              goto _L30
_L27:
            if (c3 == 'q' || c3 == 't' || c3 == 'Q' || c3 == 'T')
            {
                f3 = f5 - f3;
                f2 = f4 - f2;
            } else
            {
                f2 = 0.0F;
                f3 = 0.0F;
            }
            path.rQuadTo(f3, f2, af1[c1 + 0], af1[c1 + 1]);
            f28 = af1[c1 + 0];
            f27 = af1[c1 + 1];
            f21 = f5 + f3;
            f27 += f4;
            f5 += f28;
            f3 = f;
            f2 += f4;
            f = f1;
            f1 = f2;
            f2 = f3;
            f3 = f21;
            f4 = f27;
              goto _L30
_L18:
label0:
            {
                if (c3 != 'q' && c3 != 't' && c3 != 'Q')
                {
                    f27 = f4;
                    f21 = f5;
                    if (c3 != 'T')
                    {
                        break label0;
                    }
                }
                f21 = 2.0F * f5 - f3;
                f27 = 2.0F * f4 - f2;
            }
            path.quadTo(f21, f27, af1[c1 + 0], af1[c1 + 1]);
            f5 = af1[c1 + 0];
            f4 = af1[c1 + 1];
            f3 = f21;
            f2 = f;
            f = f1;
            f1 = f27;
              goto _L30
_L20:
            f2 = af1[c1 + 5];
            f3 = af1[c1 + 6];
            f21 = af1[c1 + 0];
            f27 = af1[c1 + 1];
            f28 = af1[c1 + 2];
            if (af1[c1 + 3] != 0.0F)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (af1[c1 + 4] != 0.0F)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            a(path, f5, f4, f2 + f5, f3 + f4, f21, f27, f28, flag1, flag2);
            f5 += af1[c1 + 5];
            f21 = af1[c1 + 6] + f4;
            f2 = f;
            f3 = f5;
            f4 = f21;
            f = f1;
            f1 = f21;
              goto _L30
_L11:
            f2 = af1[c1 + 5];
            f3 = af1[c1 + 6];
            f21 = af1[c1 + 0];
            f27 = af1[c1 + 1];
            f28 = af1[c1 + 2];
            if (af1[c1 + 3] != 0.0F)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (af1[c1 + 4] != 0.0F)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            a(path, f5, f4, f2, f3, f21, f27, f28, flag1, flag2);
            f5 = af1[c1 + 5];
            f21 = af1[c1 + 6];
            f2 = f;
            f3 = f5;
            f4 = f21;
            f = f1;
            f1 = f21;
              goto _L30
_L9:
            af[0] = f5;
            af[1] = f4;
            af[2] = f3;
            af[3] = f2;
            af[4] = f;
            af[5] = f1;
            return;
            if (true) goto _L32; else goto _L31
_L31:
        }

        public static void a(b ab[], Path path)
        {
            float af[] = new float[6];
            char c1 = 'm';
            for (int i = 0; i < ab.length; i++)
            {
                a(path, af, c1, ab[i].a, ab[i].b);
                c1 = ab[i].a;
            }

        }

        public void a(b b1, b b2, float f)
        {
            for (int i = 0; i < b1.b.length; i++)
            {
                b[i] = b1.b[i] * (1.0F - f) + b2.b[i] * f;
            }

        }

        b(char c1, float af[])
        {
            a = c1;
            b = af;
        }

        b(b b1)
        {
            a = b1.a;
            b = android.support.v4.c.b.a(b1.b, 0, b1.b.length);
        }
    }


    private static int a(String s, int i)
    {
        do
        {
label0:
            {
                if (i < s.length())
                {
                    char c1 = s.charAt(i);
                    if ((c1 - 65) * (c1 - 90) > 0 && (c1 - 97) * (c1 - 122) > 0 || c1 == 'e' || c1 == 'E')
                    {
                        break label0;
                    }
                }
                return i;
            }
            i++;
        } while (true);
    }

    public static Path a(String s)
    {
        Path path = new Path();
        b ab[] = b(s);
        if (ab != null)
        {
            try
            {
                b.a(ab, path);
            }
            catch (RuntimeException runtimeexception)
            {
                throw new RuntimeException((new StringBuilder()).append("Error in parsing ").append(s).toString(), runtimeexception);
            }
            return path;
        } else
        {
            return null;
        }
    }

    private static void a(String s, int i, a a1)
    {
        boolean flag;
        boolean flag1;
        int j;
        boolean flag2;
        a1.b = false;
        flag = false;
        flag2 = false;
        flag1 = false;
        j = i;
_L12:
        if (j >= s.length()) goto _L2; else goto _L1
_L1:
        s.charAt(j);
        JVM INSTR lookupswitch 6: default 88
    //                   32: 102
    //                   44: 102
    //                   45: 110
    //                   46: 133
    //                   69: 159
    //                   101: 159;
           goto _L3 _L4 _L4 _L5 _L6 _L7 _L7
_L3:
        flag = false;
_L9:
        if (!flag1) goto _L8; else goto _L2
_L2:
        a1.a = j;
        return;
_L4:
        flag = false;
        flag1 = true;
          goto _L9
_L5:
        if (j == i || flag) goto _L3; else goto _L10
_L10:
        a1.b = true;
        flag = false;
        flag1 = true;
          goto _L9
_L6:
        if (!flag2)
        {
            flag = false;
            flag2 = true;
        } else
        {
            a1.b = true;
            flag = false;
            flag1 = true;
        }
          goto _L9
_L7:
        flag = true;
          goto _L9
_L8:
        j++;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private static void a(ArrayList arraylist, char c1, float af[])
    {
        arraylist.add(new b(c1, af));
    }

    public static boolean a(b ab[], b ab1[])
    {
_L2:
        return false;
        if (ab == null || ab1 == null || ab.length != ab1.length) goto _L2; else goto _L1
_L1:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= ab.length)
                {
                    break label1;
                }
                if (ab[i].a != ab1[i].a || ab[i].b.length != ab1[i].b.length)
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L2; else goto _L3
_L3:
        return true;
    }

    static float[] a(float af[], int i, int j)
    {
        if (i > j)
        {
            throw new IllegalArgumentException();
        }
        int k = af.length;
        if (i < 0 || i > k)
        {
            throw new ArrayIndexOutOfBoundsException();
        } else
        {
            j -= i;
            k = Math.min(j, k - i);
            float af1[] = new float[j];
            System.arraycopy(af, i, af1, 0, k);
            return af1;
        }
    }

    public static b[] a(b ab[])
    {
        if (ab == null)
        {
            return null;
        }
        b ab1[] = new b[ab.length];
        for (int i = 0; i < ab.length; i++)
        {
            ab1[i] = new b(ab[i]);
        }

        return ab1;
    }

    public static void b(b ab[], b ab1[])
    {
        for (int i = 0; i < ab1.length; i++)
        {
            ab[i].a = ab1[i].a;
            for (int j = 0; j < ab1[i].b.length; j++)
            {
                ab[i].b[j] = ab1[i].b[j];
            }

        }

    }

    public static b[] b(String s)
    {
        if (s == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList();
        int j = 1;
        int i = 0;
        int k;
        for (; j < s.length(); j = k)
        {
            j = a(s, j);
            String s1 = s.substring(i, j).trim();
            if (s1.length() > 0)
            {
                float af[] = c(s1);
                a(arraylist, s1.charAt(0), af);
            }
            k = j + 1;
            i = j;
        }

        if (j - i == 1 && i < s.length())
        {
            a(arraylist, s.charAt(i), new float[0]);
        }
        return (b[])arraylist.toArray(new b[arraylist.size()]);
    }

    private static float[] c(String s)
    {
        int j;
        int k;
        int i = 0;
        if (s.charAt(0) == 'z' || s.charAt(0) == 'Z')
        {
            return new float[0];
        }
        float af[];
        a a1;
        int l;
        int i1;
        try
        {
            af = new float[s.length()];
            a1 = new a();
            i1 = s.length();
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new RuntimeException((new StringBuilder()).append("error in parsing \"").append(s).append("\"").toString(), numberformatexception);
        }
        j = 1;
_L3:
        if (j >= i1) goto _L2; else goto _L1
_L1:
        a(s, j, a1);
        k = a1.a;
        if (j >= k)
        {
            break MISSING_BLOCK_LABEL_99;
        }
        l = i + 1;
        af[i] = Float.parseFloat(s.substring(j, k));
        i = l;
        if (a1.b)
        {
            j = k;
        } else
        {
            j = k + 1;
        }
        if (true) goto _L3; else goto _L2
_L2:
        af = a(af, 0, i);
        return af;
    }
}
