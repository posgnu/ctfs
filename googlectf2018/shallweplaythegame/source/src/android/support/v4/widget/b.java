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
//            k

public final class android.support.v4.widget.b
{
    static class a extends c
    {

        public void a(CompoundButton compoundbutton, ColorStateList colorstatelist)
        {
            compoundbutton.setButtonTintList(colorstatelist);
        }

        public void a(CompoundButton compoundbutton, android.graphics.PorterDuff.Mode mode)
        {
            compoundbutton.setButtonTintMode(mode);
        }

        a()
        {
        }
    }

    static class b extends a
    {

        public Drawable a(CompoundButton compoundbutton)
        {
            return compoundbutton.getButtonDrawable();
        }

        b()
        {
        }
    }

    static class c
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

        public void a(CompoundButton compoundbutton, android.graphics.PorterDuff.Mode mode)
        {
            if (compoundbutton instanceof k)
            {
                ((k)compoundbutton).setSupportButtonTintMode(mode);
            }
        }

        c()
        {
        }
    }


    private static final c a;

    public static Drawable a(CompoundButton compoundbutton)
    {
        return a.a(compoundbutton);
    }

    public static void a(CompoundButton compoundbutton, ColorStateList colorstatelist)
    {
        a.a(compoundbutton, colorstatelist);
    }

    public static void a(CompoundButton compoundbutton, android.graphics.PorterDuff.Mode mode)
    {
        a.a(compoundbutton, mode);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new a();
        } else
        {
            a = new c();
        }
    }
}
