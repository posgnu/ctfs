// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.view.View;
import android.view.ViewTreeObserver;

class x
    implements android.view.View.OnAttachStateChangeListener, android.view.ViewTreeObserver.OnPreDrawListener
{

    private final View a;
    private ViewTreeObserver b;
    private final Runnable c;

    private x(View view, Runnable runnable)
    {
        a = view;
        b = view.getViewTreeObserver();
        c = runnable;
    }

    public static x a(View view, Runnable runnable)
    {
        runnable = new x(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(runnable);
        view.addOnAttachStateChangeListener(runnable);
        return runnable;
    }

    public void a()
    {
        if (b.isAlive())
        {
            b.removeOnPreDrawListener(this);
        } else
        {
            a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        a.removeOnAttachStateChangeListener(this);
    }

    public boolean onPreDraw()
    {
        a();
        c.run();
        return true;
    }

    public void onViewAttachedToWindow(View view)
    {
        b = view.getViewTreeObserver();
    }

    public void onViewDetachedFromWindow(View view)
    {
        a();
    }
}
