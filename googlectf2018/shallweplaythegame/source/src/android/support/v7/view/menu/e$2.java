// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;

// Referenced classes of package android.support.v7.view.menu:
//            e

class a
    implements android.view..OnAttachStateChangeListener
{

    final e a;

    public void onViewAttachedToWindow(View view)
    {
    }

    public void onViewDetachedFromWindow(View view)
    {
        if (e.a(a) != null)
        {
            if (!e.a(a).isAlive())
            {
                e.a(a, view.getViewTreeObserver());
            }
            e.a(a).removeGlobalOnLayoutListener(e.b(a));
        }
        view.removeOnAttachStateChangeListener(this);
    }

    angeListener(e e1)
    {
        a = e1;
        super();
    }
}
