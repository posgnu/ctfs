// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;

public class a
{

    private Context a;

    private a(Context context)
    {
        a = context;
    }

    public static a a(Context context)
    {
        return new a(context);
    }

    public int a()
    {
        Configuration configuration = a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int j = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600 || i > 960 && j > 720 || i > 720 && j > 960)
        {
            return 5;
        }
        if (i >= 500 || i > 640 && j > 480 || i > 480 && j > 640)
        {
            return 4;
        }
        return i < 360 ? 2 : 3;
    }

    public boolean b()
    {
        while (android.os.Build.VERSION.SDK_INT >= 19 || !ViewConfiguration.get(a).hasPermanentMenuKey()) 
        {
            return true;
        }
        return false;
    }

    public int c()
    {
        return a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public boolean d()
    {
        return a.getResources().getBoolean(android.support.v7.a.b.abc_action_bar_embed_tabs);
    }

    public int e()
    {
        TypedArray typedarray = a.obtainStyledAttributes(null, android.support.v7.a.j.ActionBar, android.support.v7.a.a.actionBarStyle, 0);
        int j = typedarray.getLayoutDimension(android.support.v7.a.j.ActionBar_height, 0);
        Resources resources = a.getResources();
        int i = j;
        if (!d())
        {
            i = Math.min(j, resources.getDimensionPixelSize(android.support.v7.a.d.abc_action_bar_stacked_max_height));
        }
        typedarray.recycle();
        return i;
    }

    public boolean f()
    {
        return a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int g()
    {
        return a.getResources().getDimensionPixelSize(android.support.v7.a.d.abc_action_bar_stacked_tab_max_width);
    }
}
