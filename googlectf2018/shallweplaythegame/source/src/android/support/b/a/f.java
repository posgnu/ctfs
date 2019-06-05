// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.animation.TypeEvaluator;

public class f
    implements TypeEvaluator
{

    private static final f a = new f();

    public f()
    {
    }

    public static f a()
    {
        return a;
    }

    public Object evaluate(float f1, Object obj, Object obj1)
    {
        int i = ((Integer)obj).intValue();
        float f2 = (float)(i >> 24 & 0xff) / 255F;
        float f5 = (float)(i >> 16 & 0xff) / 255F;
        float f6 = (float)(i >> 8 & 0xff) / 255F;
        float f7 = (float)(i & 0xff) / 255F;
        i = ((Integer)obj1).intValue();
        float f3 = (float)(i >> 24 & 0xff) / 255F;
        float f9 = (float)(i >> 16 & 0xff) / 255F;
        float f8 = (float)(i >> 8 & 0xff) / 255F;
        float f4 = (float)(i & 0xff) / 255F;
        f5 = (float)Math.pow(f5, 2.2000000000000002D);
        f6 = (float)Math.pow(f6, 2.2000000000000002D);
        f7 = (float)Math.pow(f7, 2.2000000000000002D);
        f9 = (float)Math.pow(f9, 2.2000000000000002D);
        f8 = (float)Math.pow(f8, 2.2000000000000002D);
        f4 = (float)Math.pow(f4, 2.2000000000000002D);
        f5 = (float)Math.pow(f5 + (f9 - f5) * f1, 0.45454545454545453D);
        f6 = (float)Math.pow(f6 + (f8 - f6) * f1, 0.45454545454545453D);
        f4 = (float)Math.pow(f7 + (f4 - f7) * f1, 0.45454545454545453D);
        i = Math.round((f2 + (f3 - f2) * f1) * 255F);
        int j = Math.round(f5 * 255F);
        int k = Math.round(f6 * 255F);
        return Integer.valueOf(Math.round(f4 * 255F) | (i << 24 | j << 16 | k << 8));
    }

}
