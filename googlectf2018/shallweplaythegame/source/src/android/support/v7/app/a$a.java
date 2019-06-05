// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

// Referenced classes of package android.support.v7.app:
//            a

public static class a extends android.view.Group.MarginLayoutParams
{

    public int a;

    public rams(int i, int j)
    {
        super(i, j);
        a = 0;
        a = 0x800013;
    }

    public a(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        context = context.obtainStyledAttributes(attributeset, android.support.v7.a.ActionBarLayout);
        a = context.getInt(android.support.v7.a.ActionBarLayout_android_layout_gravity, 0);
        context.recycle();
    }

    public youtParams(ray.recycle recycle)
    {
        super(recycle);
        a = 0;
        a = recycle.a;
    }

    public rams(android.view.Group.LayoutParams layoutparams)
    {
        super(layoutparams);
        a = 0;
    }
}
