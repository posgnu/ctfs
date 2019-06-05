// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.util.AttributeSet;

// Referenced classes of package android.support.v7.widget:
//            ai, ActivityChooserView, aw

public static class setBackgroundDrawable extends ai
{

    private static final int a[] = {
        0x10100d4
    };


    public (Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        context = aw.a(context, attributeset, a);
        setBackgroundDrawable(context.a(0));
        context.a();
    }
}
