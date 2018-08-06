// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;

class ba
{

    private final Context a;
    private final View b;
    private final TextView c;
    private final android.view.WindowManager.LayoutParams d = new android.view.WindowManager.LayoutParams();
    private final Rect e = new Rect();
    private final int f[] = new int[2];
    private final int g[] = new int[2];

    ba(Context context)
    {
        a = context;
        b = LayoutInflater.from(a).inflate(android.support.v7.a.a.g.tooltip, null);
        c = (TextView)b.findViewById(android.support.v7.a.a.f.message);
        d.setTitle(getClass().getSimpleName());
        d.packageName = a.getPackageName();
        d.type = 1002;
        d.width = -2;
        d.height = -2;
        d.format = -3;
        d.windowAnimations = android.support.v7.a.a.i.Animation_AppCompat_Tooltip;
        d.flags = 24;
    }

    private static View a(View view)
    {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper)context).getBaseContext())
        {
            if (context instanceof Activity)
            {
                return ((Activity)context).getWindow().getDecorView();
            }
        }

        return view.getRootView();
    }

    private void a(View view, int i, int j, boolean flag, android.view.WindowManager.LayoutParams layoutparams)
    {
        int k = a.getResources().getDimensionPixelOffset(android.support.v7.a.a.d.tooltip_precise_anchor_threshold);
        Object obj;
        int i1;
        int k1;
        if (view.getWidth() < k)
        {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= k)
        {
            int l = a.getResources().getDimensionPixelOffset(android.support.v7.a.a.d.tooltip_precise_anchor_extra_offset);
            k = j + l;
            l = j - l;
            j = k;
            k = l;
        } else
        {
            j = view.getHeight();
            k = 0;
        }
        layoutparams.gravity = 49;
        obj = a.getResources();
        if (flag)
        {
            i1 = android.support.v7.a.a.d.tooltip_y_offset_touch;
        } else
        {
            i1 = android.support.v7.a.a.d.tooltip_y_offset_non_touch;
        }
        k1 = ((Resources) (obj)).getDimensionPixelOffset(i1);
        obj = a(view);
        if (obj == null)
        {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        ((View) (obj)).getWindowVisibleDisplayFrame(e);
        if (e.left < 0 && e.top < 0)
        {
            Object obj1 = a.getResources();
            int j1 = ((Resources) (obj1)).getIdentifier("status_bar_height", "dimen", "android");
            if (j1 != 0)
            {
                j1 = ((Resources) (obj1)).getDimensionPixelSize(j1);
            } else
            {
                j1 = 0;
            }
            obj1 = ((Resources) (obj1)).getDisplayMetrics();
            e.set(0, j1, ((DisplayMetrics) (obj1)).widthPixels, ((DisplayMetrics) (obj1)).heightPixels);
        }
        ((View) (obj)).getLocationOnScreen(g);
        view.getLocationOnScreen(f);
        view = f;
        view[0] = view[0] - g[0];
        view = f;
        view[1] = view[1] - g[1];
        layoutparams.x = (f[0] + i) - e.width() / 2;
        i = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        b.measure(i, i);
        i = b.getMeasuredHeight();
        k = (k + f[1]) - k1 - i;
        j = j + f[1] + k1;
        if (flag)
        {
            if (k >= 0)
            {
                layoutparams.y = k;
                return;
            } else
            {
                layoutparams.y = j;
                return;
            }
        }
        if (i + j <= e.height())
        {
            layoutparams.y = j;
            return;
        } else
        {
            layoutparams.y = k;
            return;
        }
    }

    void a()
    {
        if (!b())
        {
            return;
        } else
        {
            ((WindowManager)a.getSystemService("window")).removeView(b);
            return;
        }
    }

    void a(View view, int i, int j, boolean flag, CharSequence charsequence)
    {
        if (b())
        {
            a();
        }
        c.setText(charsequence);
        a(view, i, j, flag, d);
        ((WindowManager)a.getSystemService("window")).addView(b, d);
    }

    boolean b()
    {
        return b.getParent() != null;
    }
}
