// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.h.p;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;

public class ButtonBarLayout extends LinearLayout
{

    private boolean a;
    private int b;
    private int c;

    public ButtonBarLayout(Context context, AttributeSet attributeset)
    {
        boolean flag = false;
        super(context, attributeset);
        b = -1;
        c = 0;
        if (getResources().getConfiguration().screenHeightDp >= 320)
        {
            flag = true;
        }
        context = context.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.ButtonBarLayout);
        a = context.getBoolean(android.support.v7.a.a.j.ButtonBarLayout_allowStacking, flag);
        context.recycle();
    }

    private int a(int i)
    {
        for (int j = getChildCount(); i < j; i++)
        {
            if (getChildAt(i).getVisibility() == 0)
            {
                return i;
            }
        }

        return -1;
    }

    private boolean a()
    {
        return getOrientation() == 1;
    }

    private void setStacked(boolean flag)
    {
        View view;
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        setOrientation(i);
        if (flag)
        {
            i = 5;
        } else
        {
            i = 80;
        }
        setGravity(i);
        view = findViewById(android.support.v7.a.a.f.spacer);
        if (view != null)
        {
            if (flag)
            {
                i = 8;
            } else
            {
                i = 4;
            }
            view.setVisibility(i);
        }
        for (i = getChildCount() - 2; i >= 0; i--)
        {
            bringChildToFront(getChildAt(i));
        }

    }

    public int getMinimumHeight()
    {
        return Math.max(c, super.getMinimumHeight());
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        if (a)
        {
            if (k > b && a())
            {
                setStacked(false);
            }
            b = k;
        }
        int l;
        boolean flag;
        if (!a() && android.view.View.MeasureSpec.getMode(i) == 0x40000000)
        {
            l = android.view.View.MeasureSpec.makeMeasureSpec(k, 0x80000000);
            k = 1;
        } else
        {
            l = i;
            k = 0;
        }
        super.onMeasure(l, j);
        flag = k;
        if (a)
        {
            flag = k;
            if (!a())
            {
                View view;
                android.widget.LinearLayout.LayoutParams layoutparams;
                if ((getMeasuredWidthAndState() & 0xff000000) == 0x1000000)
                {
                    l = 1;
                } else
                {
                    l = 0;
                }
                flag = k;
                if (l != 0)
                {
                    setStacked(true);
                    flag = true;
                }
            }
        }
        if (flag)
        {
            super.onMeasure(i, j);
        }
        i = a(0);
        if (i >= 0)
        {
            view = getChildAt(i);
            layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
            j = getPaddingTop();
            k = view.getMeasuredHeight();
            l = layoutparams.topMargin;
            j = layoutparams.bottomMargin + (k + j + l) + 0;
            if (a())
            {
                k = a(i + 1);
                i = j;
                if (k >= 0)
                {
                    i = j + (getChildAt(k).getPaddingTop() + (int)(16F * getResources().getDisplayMetrics().density));
                }
            } else
            {
                i = j + getPaddingBottom();
            }
        } else
        {
            i = 0;
        }
        if (p.c(this) != i)
        {
            setMinimumHeight(i);
        }
    }

    public void setAllowStacking(boolean flag)
    {
        if (a != flag)
        {
            a = flag;
            if (!a && getOrientation() == 1)
            {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
