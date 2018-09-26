// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.view.View;
import java.util.ArrayList;
import java.util.Map;

// Referenced classes of package android.support.v4.a:
//            t

static final class b
    implements Runnable
{

    final ArrayList a;
    final Map b;

    public void run()
    {
        int j = a.size();
        for (int i = 0; i < j; i++)
        {
            View view = (View)a.get(i);
            String s = view.getTransitionName();
            view.setTransitionName((String)b.get(s));
        }

    }

    (ArrayList arraylist, Map map)
    {
        a = arraylist;
        b = map;
        super();
    }
}
