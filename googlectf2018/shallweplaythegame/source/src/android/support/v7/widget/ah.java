// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.SystemClock;
import android.support.v7.view.menu.s;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

// Referenced classes of package android.support.v7.widget:
//            af

public abstract class ah
    implements android.view.View.OnAttachStateChangeListener, android.view.View.OnTouchListener
{
    private class a
        implements Runnable
    {

        final ah a;

        public void run()
        {
            ViewParent viewparent = a.c.getParent();
            if (viewparent != null)
            {
                viewparent.requestDisallowInterceptTouchEvent(true);
            }
        }

        a()
        {
            a = ah.this;
            super();
        }
    }

    private class b
        implements Runnable
    {

        final ah a;

        public void run()
        {
            a.d();
        }

        b()
        {
            a = ah.this;
            super();
        }
    }


    private final float a;
    private final int b = ViewConfiguration.getTapTimeout();
    final View c;
    private final int d;
    private Runnable e;
    private Runnable f;
    private boolean g;
    private int h;
    private final int i[] = new int[2];

    public ah(View view)
    {
        c = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        d = (b + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private boolean a(MotionEvent motionevent)
    {
        View view = c;
        if (view.isEnabled()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        switch (motionevent.getActionMasked())
        {
        default:
            return false;

        case 0: // '\0'
            h = motionevent.getPointerId(0);
            if (e == null)
            {
                e = new a();
            }
            view.postDelayed(e, b);
            if (f == null)
            {
                f = new b();
            }
            view.postDelayed(f, d);
            return false;

        case 2: // '\002'
            int j = motionevent.findPointerIndex(h);
            if (j >= 0 && !a(view, motionevent.getX(j), motionevent.getY(j), a))
            {
                e();
                view.getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
            break;

        case 1: // '\001'
        case 3: // '\003'
            e();
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private static boolean a(View view, float f1, float f2, float f3)
    {
        return f1 >= -f3 && f2 >= -f3 && f1 < (float)(view.getRight() - view.getLeft()) + f3 && f2 < (float)(view.getBottom() - view.getTop()) + f3;
    }

    private boolean a(View view, MotionEvent motionevent)
    {
        int ai[] = i;
        view.getLocationOnScreen(ai);
        motionevent.offsetLocation(-ai[0], -ai[1]);
        return true;
    }

    private boolean b(MotionEvent motionevent)
    {
        View view = c;
        Object obj = a();
        if (obj != null && ((s) (obj)).d())
        {
            if ((obj = (af)((s) (obj)).e()) != null && ((af) (obj)).isShown())
            {
                MotionEvent motionevent1 = MotionEvent.obtainNoHistory(motionevent);
                b(view, motionevent1);
                a(((View) (obj)), motionevent1);
                boolean flag = ((af) (obj)).a(motionevent1, h);
                motionevent1.recycle();
                int j = motionevent.getActionMasked();
                if (j != 1 && j != 3)
                {
                    j = 1;
                } else
                {
                    j = 0;
                }
                if (flag && j)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                return flag;
            }
        }
        return false;
    }

    private boolean b(View view, MotionEvent motionevent)
    {
        int ai[] = i;
        view.getLocationOnScreen(ai);
        motionevent.offsetLocation(ai[0], ai[1]);
        return true;
    }

    private void e()
    {
        if (f != null)
        {
            c.removeCallbacks(f);
        }
        if (e != null)
        {
            c.removeCallbacks(e);
        }
    }

    public abstract s a();

    protected boolean b()
    {
        s s1 = a();
        if (s1 != null && !s1.d())
        {
            s1.a();
        }
        return true;
    }

    protected boolean c()
    {
        s s1 = a();
        if (s1 != null && s1.d())
        {
            s1.c();
        }
        return true;
    }

    void d()
    {
        e();
        View view;
        for (view = c; !view.isEnabled() || view.isLongClickable() || !b();)
        {
            return;
        }

        view.getParent().requestDisallowInterceptTouchEvent(true);
        long l = SystemClock.uptimeMillis();
        MotionEvent motionevent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        view.onTouchEvent(motionevent);
        motionevent.recycle();
        g = true;
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag1;
        boolean flag2;
        flag1 = false;
        flag2 = g;
        if (!flag2) goto _L2; else goto _L1
_L1:
        boolean flag;
        if (b(motionevent) || !c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
_L4:
label0:
        {
            g = flag;
            if (!flag)
            {
                flag = flag1;
                if (!flag2)
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
_L2:
        if (a(motionevent) && b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            long l = SystemClock.uptimeMillis();
            view = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
            c.onTouchEvent(view);
            view.recycle();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onViewAttachedToWindow(View view)
    {
    }

    public void onViewDetachedFromWindow(View view)
    {
        g = false;
        h = -1;
        if (e != null)
        {
            c.removeCallbacks(e);
        }
    }
}
