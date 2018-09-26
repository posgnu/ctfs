// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.view.View;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            s, t, h

static final class g
    implements Runnable
{

    final Object a;
    final View b;
    final h c;
    final ArrayList d;
    final ArrayList e;
    final ArrayList f;
    final Object g;

    public void run()
    {
        if (a != null)
        {
            t.c(a, b);
            ArrayList arraylist = s.a(a, c, d, b);
            e.addAll(arraylist);
        }
        if (f != null)
        {
            if (g != null)
            {
                ArrayList arraylist1 = new ArrayList();
                arraylist1.add(b);
                t.b(g, f, arraylist1);
            }
            f.clear();
            f.add(b);
        }
    }

    (Object obj, View view, h h, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, Object obj1)
    {
        a = obj;
        b = view;
        c = h;
        d = arraylist;
        e = arraylist1;
        f = arraylist2;
        g = obj1;
        super();
    }
}
