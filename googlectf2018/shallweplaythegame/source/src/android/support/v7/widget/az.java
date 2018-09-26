// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v4.h.p;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

// Referenced classes of package android.support.v7.widget:
//            ba

class az
    implements android.view.View.OnAttachStateChangeListener, android.view.View.OnHoverListener, android.view.View.OnLongClickListener
{

    private static az i;
    private final View a;
    private final CharSequence b;
    private final Runnable c = new Runnable() {

        final az a;

        public void run()
        {
            az.a(a, false);
        }

            
            {
                a = az.this;
                super();
            }
    };
    private final Runnable d = new Runnable() {

        final az a;

        public void run()
        {
            az.a(a);
        }

            
            {
                a = az.this;
                super();
            }
    };
    private int e;
    private int f;
    private ba g;
    private boolean h;

    private az(View view, CharSequence charsequence)
    {
        a = view;
        b = charsequence;
        a.setOnLongClickListener(this);
        a.setOnHoverListener(this);
    }

    private void a()
    {
        if (i == this)
        {
            i = null;
            if (g != null)
            {
                g.a();
                g = null;
                a.removeOnAttachStateChangeListener(this);
            } else
            {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        a.removeCallbacks(c);
        a.removeCallbacks(d);
    }

    static void a(az az1)
    {
        az1.a();
    }

    static void a(az az1, boolean flag)
    {
        az1.a(flag);
    }

    public static void a(View view, CharSequence charsequence)
    {
        if (TextUtils.isEmpty(charsequence))
        {
            if (i != null && i.a == view)
            {
                i.a();
            }
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            view.setOnHoverListener(null);
            return;
        } else
        {
            new az(view, charsequence);
            return;
        }
    }

    private void a(boolean flag)
    {
        if (!p.m(a))
        {
            return;
        }
        if (i != null)
        {
            i.a();
        }
        i = this;
        h = flag;
        g = new ba(a.getContext());
        g.a(a, e, f, h, b);
        a.addOnAttachStateChangeListener(this);
        long l;
        if (h)
        {
            l = 2500L;
        } else
        if ((p.f(a) & 1) == 1)
        {
            l = 3000L - (long)ViewConfiguration.getLongPressTimeout();
        } else
        {
            l = 15000L - (long)ViewConfiguration.getLongPressTimeout();
        }
        a.removeCallbacks(d);
        a.postDelayed(d, l);
    }

    public boolean onHover(View view, MotionEvent motionevent)
    {
        if (g == null || !h) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if ((view = (AccessibilityManager)a.getContext().getSystemService("accessibility")).isEnabled() && view.isTouchExplorationEnabled()) goto _L1; else goto _L3
_L3:
        switch (motionevent.getAction())
        {
        case 8: // '\b'
        case 9: // '\t'
        default:
            return false;

        case 7: // '\007'
            if (a.isEnabled() && g == null)
            {
                e = (int)motionevent.getX();
                f = (int)motionevent.getY();
                a.removeCallbacks(c);
                a.postDelayed(c, ViewConfiguration.getLongPressTimeout());
                return false;
            }
            break;

        case 10: // '\n'
            a();
            return false;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public boolean onLongClick(View view)
    {
        e = view.getWidth() / 2;
        f = view.getHeight() / 2;
        a(true);
        return true;
    }

    public void onViewAttachedToWindow(View view)
    {
    }

    public void onViewDetachedFromWindow(View view)
    {
        a();
    }
}
