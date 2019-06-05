// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.support.v4.c.a.b;
import android.support.v7.c.a.a;

// Referenced classes of package android.support.v7.widget:
//            ar

public class ae
{

    public static final Rect a;
    private static Class b = Class.forName("android.graphics.Insets");

    public static android.graphics.PorterDuff.Mode a(int i, android.graphics.PorterDuff.Mode mode)
    {
        i;
        JVM INSTR tableswitch 3 16: default 72
    //                   3 74
    //                   4 72
    //                   5 78
    //                   6 72
    //                   7 72
    //                   8 72
    //                   9 82
    //                   10 72
    //                   11 72
    //                   12 72
    //                   13 72
    //                   14 86
    //                   15 90
    //                   16 94;
           goto _L1 _L2 _L1 _L3 _L1 _L1 _L1 _L4 _L1 _L1 _L1 _L1 _L5 _L6 _L7
_L1:
        return mode;
_L2:
        return android.graphics.PorterDuff.Mode.SRC_OVER;
_L3:
        return android.graphics.PorterDuff.Mode.SRC_IN;
_L4:
        return android.graphics.PorterDuff.Mode.SRC_ATOP;
_L5:
        return android.graphics.PorterDuff.Mode.MULTIPLY;
_L6:
        return android.graphics.PorterDuff.Mode.SCREEN;
_L7:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            return android.graphics.PorterDuff.Mode.valueOf("ADD");
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    static void a(Drawable drawable)
    {
        if (android.os.Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName()))
        {
            c(drawable);
        }
    }

    public static boolean b(Drawable drawable)
    {
        if (android.os.Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable))
        {
            return false;
        }
        if (android.os.Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable))
        {
            return false;
        }
        if (android.os.Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable))
        {
            return false;
        }
        if (drawable instanceof DrawableContainer)
        {
            drawable = drawable.getConstantState();
            if (drawable instanceof android.graphics.drawable.DrawableContainer.DrawableContainerState)
            {
                drawable = ((android.graphics.drawable.DrawableContainer.DrawableContainerState)drawable).getChildren();
                int j = drawable.length;
                for (int i = 0; i < j; i++)
                {
                    if (!b(drawable[i]))
                    {
                        return false;
                    }
                }

            }
        } else
        {
            if (drawable instanceof b)
            {
                return b(((b)drawable).a());
            }
            if (drawable instanceof a)
            {
                return b(((a)drawable).a());
            }
            if (drawable instanceof ScaleDrawable)
            {
                return b(((ScaleDrawable)drawable).getDrawable());
            }
        }
        return true;
    }

    private static void c(Drawable drawable)
    {
        int ai[] = drawable.getState();
        if (ai == null || ai.length == 0)
        {
            drawable.setState(ar.e);
        } else
        {
            drawable.setState(ar.h);
        }
        drawable.setState(ai);
    }

    static 
    {
        a = new Rect();
        if (android.os.Build.VERSION.SDK_INT < 18)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
    }
}
