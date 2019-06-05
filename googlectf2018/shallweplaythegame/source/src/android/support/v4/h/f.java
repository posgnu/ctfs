// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;


public final class f
{

    public static int a(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
    {
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            return marginlayoutparams.getMarginStart();
        } else
        {
            return marginlayoutparams.leftMargin;
        }
    }

    public static int b(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
    {
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            return marginlayoutparams.getMarginEnd();
        } else
        {
            return marginlayoutparams.rightMargin;
        }
    }
}
