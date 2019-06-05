// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;

// Referenced classes of package android.support.v7.widget:
//            ag

public class FitWindowsFrameLayout extends FrameLayout
    implements ag
{

    private ag.a a;

    public FitWindowsFrameLayout(Context context)
    {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected boolean fitSystemWindows(Rect rect)
    {
        if (a != null)
        {
            a.a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    public void setOnFitSystemWindowsListener(ag.a a1)
    {
        a = a1;
    }
}
