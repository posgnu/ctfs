// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.graphics.Rect;
import android.support.v4.g.a;
import android.view.View;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            s, t, h

static final class k
    implements Runnable
{

    final a a;
    final Object b;
    final k c;
    final ArrayList d;
    final View e;
    final h f;
    final h g;
    final boolean h;
    final ArrayList i;
    final Object j;
    final Rect k;

    public void run()
    {
        Object obj = android.support.v4.a.s.a(a, b, c);
        if (obj != null)
        {
            d.addAll(((a) (obj)).values());
            d.add(e);
        }
        android.support.v4.a.s.a(f, g, h, ((a) (obj)), false);
        if (b != null)
        {
            android.support.v4.a.t.a(b, i, d);
            obj = android.support.v4.a.s.a(((a) (obj)), c, j, h);
            if (obj != null)
            {
                android.support.v4.a.t.a(((View) (obj)), k);
            }
        }
    }

    (a a1, Object obj,  , ArrayList arraylist, View view, h h1, h h2, 
            boolean flag, ArrayList arraylist1, Object obj1, Rect rect)
    {
        a = a1;
        b = obj;
        c = ;
        d = arraylist;
        e = view;
        f = h1;
        g = h2;
        h = flag;
        i = arraylist1;
        j = obj1;
        k = rect;
        super();
    }
}
