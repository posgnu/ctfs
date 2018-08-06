// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.view.Gravity;

public final class d
{

    public static int a(int i, int j)
    {
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            return Gravity.getAbsoluteGravity(i, j);
        } else
        {
            return 0xff7fffff & i;
        }
    }
}
