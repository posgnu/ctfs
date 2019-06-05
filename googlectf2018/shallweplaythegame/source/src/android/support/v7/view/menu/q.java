// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.d.a.a;
import android.support.v4.d.a.b;
import android.support.v4.d.a.c;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

// Referenced classes of package android.support.v7.view.menu:
//            r, l, k, v

public final class q
{

    public static Menu a(Context context, a a1)
    {
        return new r(context, a1);
    }

    public static MenuItem a(Context context, b b)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return new l(context, b);
        } else
        {
            return new k(context, b);
        }
    }

    public static SubMenu a(Context context, c c)
    {
        return new v(context, c);
    }
}
