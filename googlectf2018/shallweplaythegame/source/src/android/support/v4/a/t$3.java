// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.view.View;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            t

static final class e
    implements Runnable
{

    final int a;
    final ArrayList b;
    final ArrayList c;
    final ArrayList d;
    final ArrayList e;

    public void run()
    {
        for (int i = 0; i < a; i++)
        {
            ((View)b.get(i)).setTransitionName((String)c.get(i));
            ((View)d.get(i)).setTransitionName((String)e.get(i));
        }

    }

    (int i, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, ArrayList arraylist3)
    {
        a = i;
        b = arraylist;
        c = arraylist1;
        d = arraylist2;
        e = arraylist3;
        super();
    }
}
