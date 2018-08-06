// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;

// Referenced classes of package android.support.v7.app:
//            g, j, i, h, 
//            k, d, a

public abstract class e
{

    private static int a = -1;
    private static boolean b = false;

    e()
    {
    }

    public static e a(Activity activity, d d1)
    {
        return a(((Context) (activity)), activity.getWindow(), d1);
    }

    public static e a(Dialog dialog, d d1)
    {
        return a(dialog.getContext(), dialog.getWindow(), d1);
    }

    private static e a(Context context, Window window, d d1)
    {
        if (android.os.Build.VERSION.SDK_INT >= 24)
        {
            return new g(context, window, d1);
        }
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            return new j(context, window, d1);
        }
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            return new i(context, window, d1);
        }
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            return new h(context, window, d1);
        } else
        {
            return new k(context, window, d1);
        }
    }

    public static int j()
    {
        return a;
    }

    public static boolean k()
    {
        return b;
    }

    public abstract a a();

    public abstract View a(int l);

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public abstract void a(View view);

    public abstract void a(View view, android.view.ViewGroup.LayoutParams layoutparams);

    public abstract void a(CharSequence charsequence);

    public abstract MenuInflater b();

    public abstract void b(int l);

    public abstract void b(Bundle bundle);

    public abstract void b(View view, android.view.ViewGroup.LayoutParams layoutparams);

    public abstract void c();

    public abstract void c(Bundle bundle);

    public abstract boolean c(int l);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract void h();

    public abstract boolean i();

}
