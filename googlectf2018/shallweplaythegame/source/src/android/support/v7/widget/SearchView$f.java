// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;

// Referenced classes of package android.support.v7.widget:
//            SearchView

private static class a extends TouchDelegate
{

    private final View a;
    private final Rect b = new Rect();
    private final Rect c = new Rect();
    private final Rect d = new Rect();
    private final int e;
    private boolean f;

    public void a(Rect rect, Rect rect1)
    {
        b.set(rect);
        d.set(rect);
        d.inset(-e, -e);
        c.set(rect1);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag1;
        int i;
        int j;
        boolean flag3;
        flag1 = true;
        flag3 = false;
        i = (int)motionevent.getX();
        j = (int)motionevent.getY();
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 52
    //                   0 117
    //                   1 144
    //                   2 144
    //                   3 190;
           goto _L1 _L2 _L3 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_190;
_L1:
        boolean flag;
        boolean flag2;
        flag2 = false;
        flag = flag1;
_L6:
        if (flag2)
        {
            boolean flag4;
            if (flag && !c.contains(i, j))
            {
                motionevent.setLocation(a.getWidth() / 2, a.getHeight() / 2);
            } else
            {
                motionevent.setLocation(i - c.left, j - c.top);
            }
            flag3 = a.dispatchTouchEvent(motionevent);
        }
        return flag3;
_L2:
        if (!b.contains(i, j)) goto _L1; else goto _L5
_L5:
        f = true;
        flag2 = true;
        flag = flag1;
          goto _L6
_L3:
        flag4 = f;
        flag = flag1;
        flag2 = flag4;
        if (flag4)
        {
            flag = flag1;
            flag2 = flag4;
            if (!d.contains(i, j))
            {
                flag = false;
                flag2 = flag4;
            }
        }
          goto _L6
        flag2 = f;
        f = false;
        flag = flag1;
          goto _L6
    }

    public (Rect rect, Rect rect1, View view)
    {
        super(rect, view);
        e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        a(rect, rect1);
        a = view;
    }
}
