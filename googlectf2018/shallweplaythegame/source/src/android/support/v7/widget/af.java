// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v4.h.r;
import android.support.v4.widget.g;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            ak

class af extends ak
{

    private boolean g;
    private boolean h;
    private boolean i;
    private r j;
    private g k;

    public af(Context context, boolean flag)
    {
        super(context, null, android.support.v7.a.a.a.dropDownListViewStyle);
        h = flag;
        setCacheColorHint(0);
    }

    private void a(View view, int l)
    {
        performItemClick(view, l, getItemIdAtPosition(l));
    }

    private void a(View view, int l, float f, float f1)
    {
        i = true;
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            drawableHotspotChanged(f, f1);
        }
        if (!isPressed())
        {
            setPressed(true);
        }
        layoutChildren();
        if (this.f != -1)
        {
            View view1 = getChildAt(this.f - getFirstVisiblePosition());
            if (view1 != null && view1 != view && view1.isPressed())
            {
                view1.setPressed(false);
            }
        }
        this.f = l;
        float f2 = view.getLeft();
        float f3 = view.getTop();
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            view.drawableHotspotChanged(f - f2, f1 - f3);
        }
        if (!view.isPressed())
        {
            view.setPressed(true);
        }
        a(l, view, f, f1);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    private void d()
    {
        i = false;
        setPressed(false);
        drawableStateChanged();
        View view = getChildAt(f - getFirstVisiblePosition());
        if (view != null)
        {
            view.setPressed(false);
        }
        if (j != null)
        {
            j.b();
            j = null;
        }
    }

    protected boolean a()
    {
        return i || super.a();
    }

    public boolean a(MotionEvent motionevent, int l)
    {
        int i1 = motionevent.getActionMasked();
        i1;
        JVM INSTR tableswitch 1 3: default 36
    //                   1 108
    //                   2 227
    //                   3 100;
           goto _L1 _L2 _L3 _L4
_L3:
        break MISSING_BLOCK_LABEL_227;
_L1:
        boolean flag;
        l = 0;
        flag = true;
_L7:
        if (!flag || l != 0)
        {
            d();
        }
        if (!flag) goto _L6; else goto _L5
_L5:
        if (k == null)
        {
            k = new g(this);
        }
        k.a(true);
        k.onTouch(this, motionevent);
_L9:
        return flag;
_L4:
        l = 0;
        flag = false;
          goto _L7
_L2:
        flag = false;
_L10:
        int j1;
        int k1;
        j1 = motionevent.findPointerIndex(l);
        if (j1 < 0)
        {
            l = 0;
            flag = false;
        } else
        {
label0:
            {
                l = (int)motionevent.getX(j1);
                j1 = (int)motionevent.getY(j1);
                k1 = pointToPosition(l, j1);
                if (k1 != -1)
                {
                    break label0;
                }
                l = 1;
            }
        }
          goto _L7
        View view = getChildAt(k1 - getFirstVisiblePosition());
        a(view, k1, l, j1);
        if (i1 == 1)
        {
            a(view, k1);
        }
          goto _L1
_L6:
        if (k == null) goto _L9; else goto _L8
_L8:
        k.a(false);
        return flag;
        flag = true;
          goto _L10
    }

    public boolean hasFocus()
    {
        return h || super.hasFocus();
    }

    public boolean hasWindowFocus()
    {
        return h || super.hasWindowFocus();
    }

    public boolean isFocused()
    {
        return h || super.isFocused();
    }

    public boolean isInTouchMode()
    {
        return h && g || super.isInTouchMode();
    }

    void setListSelectionHidden(boolean flag)
    {
        g = flag;
    }
}
