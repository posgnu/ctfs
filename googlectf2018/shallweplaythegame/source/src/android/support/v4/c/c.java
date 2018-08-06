// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.v4.f.b;
import android.support.v4.g.g;
import android.widget.TextView;

// Referenced classes of package android.support.v4.c:
//            f, e, d, g

public class c
{
    static interface a
    {

        public abstract Typeface a(Context context, Resources resources, int i, String s, int j);

        public abstract Typeface a(Context context, CancellationSignal cancellationsignal, android.support.v4.f.b.b ab[], int i);

        public abstract Typeface a(Context context, android.support.v4.b.a.a.b b1, Resources resources, int i);
    }


    private static final a a;
    private static final g b = new g(16);

    public static Typeface a(Context context, Resources resources, int i, String s, int j)
    {
        context = a.a(context, resources, i, s, j);
        if (context != null)
        {
            b.a(b(resources, i, j), context);
        }
        return context;
    }

    public static Typeface a(Context context, CancellationSignal cancellationsignal, android.support.v4.f.b.b ab[], int i)
    {
        return a.a(context, cancellationsignal, ab, i);
    }

    public static Typeface a(Context context, android.support.v4.b.a.a.a a1, Resources resources, int i, int j, TextView textview)
    {
        if (a1 instanceof android.support.v4.b.a.a.d)
        {
            a1 = (android.support.v4.b.a.a.d)a1;
            context = android.support.v4.f.b.a(context, a1.a(), textview, a1.b(), a1.c(), j);
        } else
        {
            context = a.a(context, (android.support.v4.b.a.a.b)a1, resources, j);
        }
        if (context != null)
        {
            b.a(b(resources, i, j), context);
        }
        return context;
    }

    public static Typeface a(Resources resources, int i, int j)
    {
        return (Typeface)b.a(b(resources, i, j));
    }

    private static String b(Resources resources, int i, int j)
    {
        return (new StringBuilder()).append(resources.getResourcePackageName(i)).append("-").append(i).append("-").append(j).toString();
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            a = new f();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 24 && e.a())
        {
            a = new e();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new d();
        } else
        {
            a = new android.support.v4.c.g();
        }
    }
}
