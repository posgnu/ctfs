// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.animation.TypeEvaluator;
import android.support.v4.c.b;

// Referenced classes of package android.support.b.a:
//            e

private static class <init>
    implements TypeEvaluator
{

    private android.support.v4.c. a[];

    public android.support.v4.c.or[] a(float f, android.support.v4.c.or aor[], android.support.v4.c.or aor1[])
    {
        if (!b.a(aor, aor1))
        {
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
        if (a == null || !b.a(a, aor))
        {
            a = b.a(aor);
        }
        for (int i = 0; i < aor.length; i++)
        {
            a[i].a(aor[i], aor1[i], f);
        }

        return a;
    }

    public Object evaluate(float f, Object obj, Object obj1)
    {
        return a(f, (android.support.v4.c.[])obj, (android.support.v4.c.[])obj1);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
