// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.support.v4.h.s;
import android.support.v4.h.t;
import android.view.View;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.view:
//            h

class c extends t
{

    final h a;
    private boolean b;
    private int c;

    void a()
    {
        c = 0;
        b = false;
        a.b();
    }

    public void a(View view)
    {
        if (!b)
        {
            b = true;
            if (a.b != null)
            {
                a.b.a(null);
                return;
            }
        }
    }

    public void b(View view)
    {
        int i = c + 1;
        c = i;
        if (i == a.a.size())
        {
            if (a.b != null)
            {
                a.b.b(null);
            }
            a();
        }
    }

    (h h1)
    {
        a = h1;
        super();
        b = false;
        c = 0;
    }
}
