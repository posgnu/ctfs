// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;


class p
{

    private static p d;
    public long a;
    public long b;
    public int c;

    p()
    {
    }

    static p a()
    {
        if (d == null)
        {
            d = new p();
        }
        return d;
    }

    public void a(long l, double d1, double d2)
    {
        float f = (float)(l - 0xdc6d62da00L) / 8.64E+07F;
        float f1 = 6.24006F + 0.01720197F * f;
        double d3 = (double)f1 + 0.033419601619243622D * Math.sin(f1) + 0.00034906598739326D * Math.sin(2.0F * f1) + 5.2360001063789241E-06D * Math.sin(3F * f1) + 1.796593063D + 3.1415926535897931D;
        d2 = -d2 / 360D;
        double d4 = (float)Math.round((double)(f - 0.0009F) - d2) + 0.0009F;
        d2 = Math.sin(f1) * 0.0053D + (d2 + d4) + -0.0068999999999999999D * Math.sin(2D * d3);
        d3 = Math.asin(Math.sin(d3) * Math.sin(0.40927970409393311D));
        double d6 = 0.01745329238474369D * d1;
        d1 = Math.sin(-0.10471975803375244D);
        d4 = Math.sin(d6);
        double d5 = Math.sin(d3);
        d6 = Math.cos(d6);
        d1 = (d1 - d4 * d5) / (Math.cos(d3) * d6);
        if (d1 >= 1.0D)
        {
            c = 1;
            a = -1L;
            b = -1L;
            return;
        }
        if (d1 <= -1D)
        {
            c = 0;
            a = -1L;
            b = -1L;
            return;
        }
        f = (float)(Math.acos(d1) / 6.2831853071795862D);
        a = Math.round(((double)f + d2) * 86400000D) + 0xdc6d62da00L;
        b = Math.round((d2 - (double)f) * 86400000D) + 0xdc6d62da00L;
        if (b < l && a > l)
        {
            c = 0;
            return;
        } else
        {
            c = 1;
            return;
        }
    }
}
