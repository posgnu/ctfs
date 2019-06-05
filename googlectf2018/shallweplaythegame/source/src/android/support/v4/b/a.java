// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.b;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;

public class a
{

    private static final Object a = new Object();
    private static TypedValue b;

    public static final Drawable a(Context context, int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            return context.getDrawable(i);
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return context.getResources().getDrawable(i);
        }
        synchronized (a)
        {
            if (b == null)
            {
                b = new TypedValue();
            }
            context.getResources().getValue(i, b, true);
            i = b.resourceId;
        }
        return context.getResources().getDrawable(i);
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
    }

    public static boolean a(Context context, Intent aintent[], Bundle bundle)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            context.startActivities(aintent, bundle);
        } else
        {
            context.startActivities(aintent);
        }
        return true;
    }

    public static final ColorStateList b(Context context, int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            return context.getColorStateList(i);
        } else
        {
            return context.getResources().getColorStateList(i);
        }
    }

}
