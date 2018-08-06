// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.os.Bundle;
import android.support.v4.h.a.a;
import android.support.v4.h.a.e;
import android.support.v4.h.b;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ScrollView;

// Referenced classes of package android.support.v4.widget:
//            NestedScrollView

static class  extends b
{

    public void a(View view, a a1)
    {
        super.a(view, a1);
        view = (NestedScrollView)view;
        a1.a(android/widget/ScrollView.getName());
        if (view.isEnabled())
        {
            int i = view.getScrollRange();
            if (i > 0)
            {
                a1.a(true);
                if (view.getScrollY() > 0)
                {
                    a1.a(8192);
                }
                if (view.getScrollY() < i)
                {
                    a1.a(4096);
                }
            }
        }
    }

    public boolean a(View view, int i, Bundle bundle)
    {
        if (super.a(view, i, bundle))
        {
            return true;
        }
        view = (NestedScrollView)view;
        if (!view.isEnabled())
        {
            return false;
        }
        switch (i)
        {
        default:
            return false;

        case 4096: 
            i = Math.min((view.getHeight() - view.getPaddingBottom() - view.getPaddingTop()) + view.getScrollY(), view.getScrollRange());
            if (i != view.getScrollY())
            {
                view.c(0, i);
                return true;
            } else
            {
                return false;
            }

        case 8192: 
            i = view.getHeight();
            int j = view.getPaddingBottom();
            int k = view.getPaddingTop();
            i = Math.max(view.getScrollY() - (i - j - k), 0);
            break;
        }
        if (i != view.getScrollY())
        {
            view.c(0, i);
            return true;
        } else
        {
            return false;
        }
    }

    public void d(View view, AccessibilityEvent accessibilityevent)
    {
        super.d(view, accessibilityevent);
        view = (NestedScrollView)view;
        accessibilityevent.setClassName(android/widget/ScrollView.getName());
        boolean flag;
        if (view.getScrollRange() > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        accessibilityevent.setScrollable(flag);
        accessibilityevent.setScrollX(view.getScrollX());
        accessibilityevent.setScrollY(view.getScrollY());
        e.a(accessibilityevent, view.getScrollX());
        e.b(accessibilityevent, view.getScrollRange());
    }

    ()
    {
    }
}
