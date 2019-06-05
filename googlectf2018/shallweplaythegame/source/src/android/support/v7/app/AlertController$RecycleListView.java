// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;

// Referenced classes of package android.support.v7.app:
//            AlertController

public static class tle extends ListView
{

    private final int a;
    private final int b;

    public void a(boolean flag, boolean flag1)
    {
        if (!flag1 || !flag)
        {
            int k = getPaddingLeft();
            int i;
            int j;
            int l;
            if (flag)
            {
                i = getPaddingTop();
            } else
            {
                i = a;
            }
            l = getPaddingRight();
            if (flag1)
            {
                j = getPaddingBottom();
            } else
            {
                j = b;
            }
            setPadding(k, i, l, j);
        }
    }

    public (Context context)
    {
        this(context, null);
    }

    public <init>(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        context = context.obtainStyledAttributes(attributeset, android.support.v7.a.w);
        b = context.getDimensionPixelOffset(android.support.v7.a.mNoButtons, -1);
        a = context.getDimensionPixelOffset(android.support.v7.a.Title, -1);
    }
}
