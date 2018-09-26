// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.g.g;
import java.util.concurrent.Callable;

// Referenced classes of package android.support.v4.f:
//            b, a

static final class d
    implements Callable
{

    final Context a;
    final a b;
    final int c;
    final String d;

    public Typeface a()
    {
        Typeface typeface = android.support.v4.f.b.a(a, b, c);
        if (typeface != null)
        {
            android.support.v4.f.b.a().a(d, typeface);
        }
        return typeface;
    }

    public Object call()
    {
        return a();
    }

    (Context context, a a1, int i, String s)
    {
        a = context;
        b = a1;
        c = i;
        d = s;
        super();
    }
}
