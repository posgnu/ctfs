// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.widget:
//            aj

private class a
    implements android.view.OnTouchListener
{

    final aj a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        int i;
        int j;
        int k;
        i = motionevent.getAction();
        j = (int)motionevent.getX();
        k = (int)motionevent.getY();
        if (i != 0 || a.g == null || !a.g.isShowing() || j < 0 || j >= a.g.getWidth() || k < 0 || k >= a.g.getHeight()) goto _L2; else goto _L1
_L1:
        a.f.postDelayed(a.e, 250L);
_L4:
        return false;
_L2:
        if (i == 1)
        {
            a.f.removeCallbacks(a.e);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    er(aj aj1)
    {
        a = aj1;
        super();
    }
}
