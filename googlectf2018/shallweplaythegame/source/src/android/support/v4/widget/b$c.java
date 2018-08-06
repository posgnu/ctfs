// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

// Referenced classes of package android.support.v4.widget:
//            b, k

static class de
{

    private static Field a;
    private static boolean b;

    public Drawable a(CompoundButton compoundbutton)
    {
        if (!b)
        {
            try
            {
                a = android/widget/CompoundButton.getDeclaredField("mButtonDrawable");
                a.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.i("CompoundButtonCompat", "Failed to retrieve mButtonDrawable field", nosuchfieldexception);
            }
            b = true;
        }
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        compoundbutton = (Drawable)a.get(compoundbutton);
        return compoundbutton;
        compoundbutton;
        Log.i("CompoundButtonCompat", "Failed to get button drawable via reflection", compoundbutton);
        a = null;
        return null;
    }

    public void a(CompoundButton compoundbutton, ColorStateList colorstatelist)
    {
        if (compoundbutton instanceof k)
        {
            ((k)compoundbutton).setSupportButtonTintList(colorstatelist);
        }
    }

    public void a(CompoundButton compoundbutton, android.graphics.erDuff.Mode mode)
    {
        if (compoundbutton instanceof k)
        {
            ((k)compoundbutton).setSupportButtonTintMode(mode);
        }
    }

    de()
    {
    }
}
