// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.h.d;
import android.support.v4.h.p;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package android.support.v7.widget:
//            ai

public class AlertDialogLayout extends ai
{

    public AlertDialogLayout(Context context)
    {
        super(context);
    }

    public AlertDialogLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    private void a(View view, int i, int j, int k, int l)
    {
        view.layout(i, j, i + k, j + l);
    }

    private static int c(View view)
    {
        int i = p.c(view);
        if (i > 0)
        {
            return i;
        }
        if (view instanceof ViewGroup)
        {
            view = (ViewGroup)view;
            if (view.getChildCount() == 1)
            {
                return c(view.getChildAt(0));
            }
        }
        return 0;
    }

    private boolean c(int i, int j)
    {
        View view = null;
        View view2 = null;
        int k2 = getChildCount();
        int k = 0;
        View view4 = null;
        while (k < k2) 
        {
            View view3 = getChildAt(k);
            if (view3.getVisibility() == 8)
            {
                view3 = view2;
                view2 = view;
                view = view3;
            } else
            {
                int l = view3.getId();
                if (l == android.support.v7.a.a.f.topPanel)
                {
                    view = view2;
                    view2 = view3;
                } else
                if (l == android.support.v7.a.a.f.buttonPanel)
                {
                    view2 = view;
                    view = view3;
                } else
                if (l == android.support.v7.a.a.f.contentPanel || l == android.support.v7.a.a.f.customPanel)
                {
                    if (view4 != null)
                    {
                        return false;
                    }
                    View view5 = view;
                    view4 = view3;
                    view = view2;
                    view2 = view5;
                } else
                {
                    return false;
                }
            }
            k++;
            view3 = view2;
            view2 = view;
            view = view3;
        }
        int i3 = android.view.View.MeasureSpec.getMode(j);
        int j2 = android.view.View.MeasureSpec.getSize(j);
        int l2 = android.view.View.MeasureSpec.getMode(i);
        int j1 = 0;
        k = getPaddingTop();
        k = getPaddingBottom() + k;
        int i1 = k;
        if (view != null)
        {
            view.measure(i, 0);
            i1 = k + view.getMeasuredHeight();
            j1 = View.combineMeasuredStates(0, view.getMeasuredState());
        }
        k = 0;
        int k1;
        int i2;
        if (view2 != null)
        {
            view2.measure(i, 0);
            k = c(view2);
            k1 = view2.getMeasuredHeight();
            i1 += k;
            j1 = View.combineMeasuredStates(j1, view2.getMeasuredState());
            k1 -= k;
        } else
        {
            k1 = 0;
        }
        if (view4 != null)
        {
            View view1;
            int l1;
            int j3;
            if (i3 == 0)
            {
                l1 = 0;
            } else
            {
                l1 = android.view.View.MeasureSpec.makeMeasureSpec(Math.max(0, j2 - i1), i3);
            }
            view4.measure(i, l1);
            i2 = view4.getMeasuredHeight();
            i1 += i2;
            j1 = View.combineMeasuredStates(j1, view4.getMeasuredState());
        } else
        {
            i2 = 0;
        }
        j2 -= i1;
        if (view2 != null)
        {
            j3 = Math.min(j2, k1);
            k1 = j2;
            l1 = k;
            if (j3 > 0)
            {
                k1 = j2 - j3;
                l1 = k + j3;
            }
            view2.measure(i, android.view.View.MeasureSpec.makeMeasureSpec(l1, 0x40000000));
            l1 = view2.getMeasuredHeight();
            j1 = View.combineMeasuredStates(j1, view2.getMeasuredState());
            k = l1 + (i1 - k);
            j2 = k1;
            i1 = j1;
        } else
        {
            k = i1;
            i1 = j1;
        }
        if (view4 != null && j2 > 0)
        {
            view4.measure(i, android.view.View.MeasureSpec.makeMeasureSpec(j2 + i2, i3));
            j1 = view4.getMeasuredHeight();
            i1 = View.combineMeasuredStates(i1, view4.getMeasuredState());
            k = (k - i2) + j1;
        }
        k1 = 0;
        for (j1 = 0; j1 < k2;)
        {
            view1 = getChildAt(j1);
            l1 = k1;
            if (view1.getVisibility() != 8)
            {
                l1 = Math.max(k1, view1.getMeasuredWidth());
            }
            j1++;
            k1 = l1;
        }

        setMeasuredDimension(View.resolveSizeAndState(k1 + (getPaddingLeft() + getPaddingRight()), i, i1), View.resolveSizeAndState(k, j, 0));
        if (l2 != 0x40000000)
        {
            d(k2, j);
        }
        return true;
    }

    private void d(int i, int j)
    {
        int l = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x40000000);
        for (int k = 0; k < i; k++)
        {
            View view = getChildAt(k);
            if (view.getVisibility() == 8)
            {
                continue;
            }
            ai.a a1 = (ai.a)view.getLayoutParams();
            if (a1.width == -1)
            {
                int i1 = a1.height;
                a1.height = view.getMeasuredHeight();
                measureChildWithMargins(view, l, 0, j, 0);
                a1.height = i1;
            }
        }

    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        j1 = getPaddingLeft();
        k1 = k - i;
        l1 = getPaddingRight();
        i2 = getPaddingRight();
        i = getMeasuredHeight();
        j2 = getChildCount();
        k2 = getGravity();
        k2 & 0x70;
        JVM INSTR lookupswitch 2: default 72
    //                   16: 292
    //                   80: 277;
           goto _L1 _L2 _L3
_L1:
        i = getPaddingTop();
_L11:
        ai.a a1;
        int l2;
        Object obj = getDividerDrawable();
        int i1;
        int i3;
        if (obj == null)
        {
            k = 0;
        } else
        {
            k = ((Drawable) (obj)).getIntrinsicHeight();
        }
_L10:
        for (l = 0; l >= j2;)
        {
            break MISSING_BLOCK_LABEL_373;
        }

        obj = getChildAt(l);
        j = i;
        if (obj == null) goto _L5; else goto _L4
_L4:
        j = i;
        if (((View) (obj)).getVisibility() == 8) goto _L5; else goto _L6
_L6:
        l2 = ((View) (obj)).getMeasuredWidth();
        i3 = ((View) (obj)).getMeasuredHeight();
        a1 = (ai.a)((View) (obj)).getLayoutParams();
        i1 = a1.h;
        j = i1;
        if (i1 < 0)
        {
            j = k2 & 0x800007;
        }
        android.support.v4.h.d.a(j, p.b(this)) & 7;
        JVM INSTR lookupswitch 2: default 212
    //                   1: 323
    //                   5: 355;
           goto _L7 _L8 _L9
_L7:
        j = j1 + a1.leftMargin;
_L12:
        if (c(l))
        {
            i += k;
        }
        i = a1.topMargin + i;
        a(((View) (obj)), j, i, l2, i3);
        j = i + (a1.bottomMargin + i3);
_L5:
        l++;
        i = j;
          goto _L10
_L3:
        i = (getPaddingTop() + l) - j - i;
          goto _L11
_L2:
        k = getPaddingTop();
        i = (l - j - i) / 2 + k;
          goto _L11
_L8:
        j = ((k1 - j1 - i2 - l2) / 2 + j1 + a1.leftMargin) - a1.rightMargin;
          goto _L12
_L9:
        j = k1 - l1 - l2 - a1.rightMargin;
          goto _L12
          goto _L10
    }

    protected void onMeasure(int i, int j)
    {
        if (!c(i, j))
        {
            super.onMeasure(i, j);
        }
    }
}
