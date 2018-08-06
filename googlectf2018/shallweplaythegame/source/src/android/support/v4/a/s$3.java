// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.graphics.Rect;
import android.support.v4.g.a;
import android.view.View;

// Referenced classes of package android.support.v4.a:
//            s, t, h

static final class f
    implements Runnable
{

    final h a;
    final h b;
    final boolean c;
    final a d;
    final View e;
    final Rect f;

    public void run()
    {
        android.support.v4.a.s.a(a, b, c, d, false);
        if (e != null)
        {
            android.support.v4.a.t.a(e, f);
        }
    }

    (h h, h h1, boolean flag, a a1, View view, Rect rect)
    {
        a = h;
        b = h1;
        c = flag;
        d = a1;
        e = view;
        f = rect;
        super();
    }
}
