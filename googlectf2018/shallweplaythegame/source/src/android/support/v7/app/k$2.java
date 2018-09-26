// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.support.v4.h.n;
import android.support.v4.h.p;
import android.support.v4.h.v;
import android.view.View;

// Referenced classes of package android.support.v7.app:
//            k

class a
    implements n
{

    final k a;

    public v a(View view, v v1)
    {
        int i = v1.b();
        int j = a.g(i);
        v v2 = v1;
        if (i != j)
        {
            v2 = v1.a(v1.a(), j, v1.c(), v1.d());
        }
        return p.a(view, v2);
    }

    (k k1)
    {
        a = k1;
        super();
    }
}
