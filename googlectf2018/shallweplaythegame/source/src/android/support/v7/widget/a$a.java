// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.support.v4.h.r;
import android.support.v4.h.s;
import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            a

protected class c
    implements s
{

    int a;
    final a b;
    private boolean c;

    public c a(r r, int i)
    {
        b.f = r;
        a = i;
        return this;
    }

    public void a(View view)
    {
        android.support.v7.widget.a.a(b, 0);
        c = false;
    }

    public void b(View view)
    {
        if (c)
        {
            return;
        } else
        {
            b.f = null;
            android.support.v7.widget.a.b(b, a);
            return;
        }
    }

    public void c(View view)
    {
        c = true;
    }

    protected (a a1)
    {
        b = a1;
        super();
        c = false;
    }
}
