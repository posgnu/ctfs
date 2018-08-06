// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;

// Referenced classes of package android.support.v7.view.menu:
//            t

class a
    implements android.view..OnAttachStateChangeListener
{

    final t a;

    public void onViewAttachedToWindow(View view)
    {
    }

    public void onViewDetachedFromWindow(View view)
    {
        if (t.a(a) != null)
        {
            if (!t.a(a).isAlive())
            {
                t.a(a, view.getViewTreeObserver());
            }
            t.a(a).removeGlobalOnLayoutListener(t.b(a));
        }
        view.removeOnAttachStateChangeListener(this);
    }

    angeListener(t t1)
    {
        a = t1;
        super();
    }
}
