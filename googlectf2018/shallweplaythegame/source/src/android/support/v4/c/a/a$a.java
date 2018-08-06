// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.graphics.drawable.Drawable;
import android.util.Log;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v4.c.a:
//            a

static class tion extends tion
{

    private static Method a;
    private static boolean b;
    private static Method c;
    private static boolean d;

    public int a(Drawable drawable)
    {
        if (!d)
        {
            int i;
            try
            {
                c = android/graphics/drawable/Drawable.getDeclaredMethod("getLayoutDirection", new Class[0]);
                c.setAccessible(true);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.i("DrawableCompatApi17", "Failed to retrieve getLayoutDirection() method", nosuchmethodexception);
            }
            d = true;
        }
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        i = ((Integer)c.invoke(drawable, new Object[0])).intValue();
        return i;
        drawable;
        Log.i("DrawableCompatApi17", "Failed to invoke getLayoutDirection() via reflection", drawable);
        c = null;
        return 0;
    }

    public boolean a(Drawable drawable, int i)
    {
        if (!b)
        {
            try
            {
                a = android/graphics/drawable/Drawable.getDeclaredMethod("setLayoutDirection", new Class[] {
                    Integer.TYPE
                });
                a.setAccessible(true);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.i("DrawableCompatApi17", "Failed to retrieve setLayoutDirection(int) method", nosuchmethodexception);
            }
            b = true;
        }
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        a.invoke(drawable, new Object[] {
            Integer.valueOf(i)
        });
        return true;
        drawable;
        Log.i("DrawableCompatApi17", "Failed to invoke setLayoutDirection(int) via reflection", drawable);
        a = null;
        return false;
    }

    tion()
    {
    }
}
