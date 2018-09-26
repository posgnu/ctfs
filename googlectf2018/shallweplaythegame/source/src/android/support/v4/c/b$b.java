// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.graphics.Path;
import android.util.Log;

// Referenced classes of package android.support.v4.c:
//            b

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

    private static void a(Path path, float af[], char c, char c1, float af1[])
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
        c1;
        JVM INSTR lookupswitch 20: default 200
    //                   65: 478
    //                   67: 465
    //                   72: 459
    //                   76: 453
    //                   77: 453
    //                   81: 472
    //                   83: 472
    //                   84: 453
    //                   86: 459
    //                   90: 419
    //                   97: 478
    //                   99: 465
    //                   104: 459
    //                   108: 453
    //                   109: 453
    //                   113: 472
    //                   115: 472
    //                   116: 453
    //                   118: 459
    //                   122: 419;
           goto _L1 _L2 _L3 _L4 _L5 _L5 _L6 _L6 _L5 _L4 _L7 _L2 _L3 _L4 _L5 _L5 _L6 _L6 _L5 _L4 _L7
_L1:
        byte byte0 = 2;
_L32:
        char c2;
        boolean flag = false;
        c2 = c;
        c = flag;
_L29:
        if (c >= af1.length) goto _L9; else goto _L8
_L8:
        c1;
        JVM INSTR lookupswitch 18: default 376
    //                   65: 2074
    //                   67: 1122
    //                   72: 876
    //                   76: 776
    //                   77: 593
    //                   81: 1602
    //                   83: 1366
    //                   84: 1810
    //                   86: 960
    //                   97: 1919
    //                   99: 1003
    //                   104: 827
    //                   108: 707
    //                   109: 485
    //                   113: 1495
    //                   115: 1209
    //                   116: 1677
    //                   118: 915;
           goto _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28
_L10:
        float f6 = f1;
        f1 = f2;
        f2 = f;
        f = f6;
_L30:
        c += byte0;
        float f7 = f2;
        c2 = c1;
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
        f5 += af1[c + 0];
        f4 = af1[c + 1] + f4;
        if (c > 0)
        {
            path.rLineTo(af1[c + 0], af1[c + 1]);
            float f8 = f;
            f = f1;
            f1 = f2;
            f2 = f8;
        } else
        {
            path.rMoveTo(af1[c + 0], af1[c + 1]);
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
        f4 = af1[c + 0];
        f5 = af1[c + 1];
        if (c > 0)
        {
            path.lineTo(af1[c + 0], af1[c + 1]);
            float f10 = f4;
            f4 = f;
            f = f1;
            f1 = f2;
            f2 = f4;
            f4 = f5;
            f5 = f10;
        } else
        {
            path.moveTo(af1[c + 0], af1[c + 1]);
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
        path.rLineTo(af1[c + 0], af1[c + 1]);
        float f24 = af1[c + 0];
        float f12 = af1[c + 1];
        f12 += f4;
        f5 += f24;
        f4 = f;
        f = f1;
        f1 = f2;
        f2 = f4;
        f4 = f12;
          goto _L30
_L14:
        path.lineTo(af1[c + 0], af1[c + 1]);
        f5 = af1[c + 0];
        f4 = af1[c + 1];
        float f13 = f;
        f = f1;
        f1 = f2;
        f2 = f13;
          goto _L30
_L22:
        path.rLineTo(af1[c + 0], 0.0F);
        float f14 = af1[c + 0];
        f14 = f5 + f14;
        f5 = f;
        f = f1;
        f1 = f2;
        f2 = f5;
        f5 = f14;
          goto _L30
_L13:
        path.lineTo(af1[c + 0], f4);
        f5 = af1[c + 0];
        float f15 = f;
        f = f1;
        f1 = f2;
        f2 = f15;
          goto _L30
_L28:
        path.rLineTo(0.0F, af1[c + 0]);
        float f25 = af1[c + 0];
        float f16 = f;
        f4 = f25 + f4;
        f = f1;
        f1 = f2;
        f2 = f16;
          goto _L30
_L19:
        path.lineTo(f5, af1[c + 0]);
        float f17 = af1[c + 0];
        f4 = f;
        f = f1;
        f1 = f2;
        f2 = f4;
        f4 = f17;
          goto _L30
_L21:
        path.rCubicTo(af1[c + 0], af1[c + 1], af1[c + 2], af1[c + 3], af1[c + 4], af1[c + 5]);
        f3 = af1[c + 2];
        float f26 = af1[c + 3];
        f2 = af1[c + 4];
        float f18 = af1[c + 5];
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
        path.cubicTo(af1[c + 0], af1[c + 1], af1[c + 2], af1[c + 3], af1[c + 4], af1[c + 5]);
        f5 = af1[c + 4];
        f4 = af1[c + 5];
        f3 = af1[c + 2];
        float f19 = af1[c + 3];
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
        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S')
        {
            float f20 = f5 - f3;
            f3 = f4 - f2;
            f2 = f20;
        } else
        {
            f3 = 0.0F;
            f2 = 0.0F;
        }
        path.rCubicTo(f2, f3, af1[c + 0], af1[c + 1], af1[c + 2], af1[c + 3]);
        f3 = af1[c + 0];
        f27 = af1[c + 1];
        f2 = af1[c + 2];
        f21 = af1[c + 3];
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
        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S')
        {
            f3 = 2.0F * f5 - f3;
            f4 = 2.0F * f4 - f2;
            f2 = f3;
        } else
        {
            f2 = f5;
        }
        path.cubicTo(f2, f4, af1[c + 0], af1[c + 1], af1[c + 2], af1[c + 3]);
        f3 = af1[c + 0];
        f21 = af1[c + 1];
        f5 = af1[c + 2];
        f4 = af1[c + 3];
        f2 = f;
        f = f1;
        f1 = f21;
          goto _L30
_L25:
        path.rQuadTo(af1[c + 0], af1[c + 1], af1[c + 2], af1[c + 3]);
        f3 = af1[c + 0];
        f27 = af1[c + 1];
        f2 = af1[c + 2];
        f21 = af1[c + 3];
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
        path.quadTo(af1[c + 0], af1[c + 1], af1[c + 2], af1[c + 3]);
        f3 = af1[c + 0];
        f21 = af1[c + 1];
        f5 = af1[c + 2];
        f4 = af1[c + 3];
        f2 = f;
        f = f1;
        f1 = f21;
          goto _L30
_L27:
        if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T')
        {
            f3 = f5 - f3;
            f2 = f4 - f2;
        } else
        {
            f2 = 0.0F;
            f3 = 0.0F;
        }
        path.rQuadTo(f3, f2, af1[c + 0], af1[c + 1]);
        f28 = af1[c + 0];
        f27 = af1[c + 1];
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
            if (c2 != 'q' && c2 != 't' && c2 != 'Q')
            {
                f27 = f4;
                f21 = f5;
                if (c2 != 'T')
                {
                    break label0;
                }
            }
            f21 = 2.0F * f5 - f3;
            f27 = 2.0F * f4 - f2;
        }
        path.quadTo(f21, f27, af1[c + 0], af1[c + 1]);
        f5 = af1[c + 0];
        f4 = af1[c + 1];
        f3 = f21;
        f2 = f;
        f = f1;
        f1 = f27;
          goto _L30
_L20:
        f2 = af1[c + 5];
        f3 = af1[c + 6];
        f21 = af1[c + 0];
        f27 = af1[c + 1];
        f28 = af1[c + 2];
        if (af1[c + 3] != 0.0F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (af1[c + 4] != 0.0F)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        a(path, f5, f4, f2 + f5, f3 + f4, f21, f27, f28, flag1, flag2);
        f5 += af1[c + 5];
        f21 = af1[c + 6] + f4;
        f2 = f;
        f3 = f5;
        f4 = f21;
        f = f1;
        f1 = f21;
          goto _L30
_L11:
        f2 = af1[c + 5];
        f3 = af1[c + 6];
        f21 = af1[c + 0];
        f27 = af1[c + 1];
        f28 = af1[c + 2];
        if (af1[c + 3] != 0.0F)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (af1[c + 4] != 0.0F)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        a(path, f5, f4, f2, f3, f21, f27, f28, flag1, flag2);
        f5 = af1[c + 5];
        f21 = af1[c + 6];
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

    public static void a(a aa[], Path path)
    {
        float af[] = new float[6];
        char c = 'm';
        for (int i = 0; i < aa.length; i++)
        {
            a(path, af, c, aa[i].a, aa[i].b);
            c = aa[i].a;
        }

    }

    public void a(a a1, a a2, float f)
    {
        for (int i = 0; i < a1.b.length; i++)
        {
            b[i] = a1.b[i] * (1.0F - f) + a2.b[i] * f;
        }

    }

    (char c, float af[])
    {
        a = c;
        b = af;
    }

    b(b b1)
    {
        a = b1.a;
        b = android.support.v4.c.b.a(b1.b, 0, b1.b.length);
    }
}
