// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

// Referenced classes of package android.support.v4.widget:
//            l

public class f
{
    static class a
        implements b
    {

        public ColorStateList a(ImageView imageview)
        {
            if (imageview instanceof l)
            {
                return ((l)imageview).getSupportImageTintList();
            } else
            {
                return null;
            }
        }

        public void a(ImageView imageview, ColorStateList colorstatelist)
        {
            if (imageview instanceof l)
            {
                ((l)imageview).setSupportImageTintList(colorstatelist);
            }
        }

        public void a(ImageView imageview, android.graphics.PorterDuff.Mode mode)
        {
            if (imageview instanceof l)
            {
                ((l)imageview).setSupportImageTintMode(mode);
            }
        }

        public android.graphics.PorterDuff.Mode b(ImageView imageview)
        {
            if (imageview instanceof l)
            {
                return ((l)imageview).getSupportImageTintMode();
            } else
            {
                return null;
            }
        }

        a()
        {
        }
    }

    static interface b
    {

        public abstract ColorStateList a(ImageView imageview);

        public abstract void a(ImageView imageview, ColorStateList colorstatelist);

        public abstract void a(ImageView imageview, android.graphics.PorterDuff.Mode mode);

        public abstract android.graphics.PorterDuff.Mode b(ImageView imageview);
    }

    static class c extends a
    {

        public ColorStateList a(ImageView imageview)
        {
            return imageview.getImageTintList();
        }

        public void a(ImageView imageview, ColorStateList colorstatelist)
        {
            imageview.setImageTintList(colorstatelist);
            if (android.os.Build.VERSION.SDK_INT == 21)
            {
                colorstatelist = imageview.getDrawable();
                boolean flag;
                if (imageview.getImageTintList() != null && imageview.getImageTintMode() != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (colorstatelist != null && flag)
                {
                    if (colorstatelist.isStateful())
                    {
                        colorstatelist.setState(imageview.getDrawableState());
                    }
                    imageview.setImageDrawable(colorstatelist);
                }
            }
        }

        public void a(ImageView imageview, android.graphics.PorterDuff.Mode mode)
        {
            imageview.setImageTintMode(mode);
            if (android.os.Build.VERSION.SDK_INT == 21)
            {
                mode = imageview.getDrawable();
                boolean flag;
                if (imageview.getImageTintList() != null && imageview.getImageTintMode() != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (mode != null && flag)
                {
                    if (mode.isStateful())
                    {
                        mode.setState(imageview.getDrawableState());
                    }
                    imageview.setImageDrawable(mode);
                }
            }
        }

        public android.graphics.PorterDuff.Mode b(ImageView imageview)
        {
            return imageview.getImageTintMode();
        }

        c()
        {
        }
    }


    static final b a;

    public static ColorStateList a(ImageView imageview)
    {
        return a.a(imageview);
    }

    public static void a(ImageView imageview, ColorStateList colorstatelist)
    {
        a.a(imageview, colorstatelist);
    }

    public static void a(ImageView imageview, android.graphics.PorterDuff.Mode mode)
    {
        a.a(imageview, mode);
    }

    public static android.graphics.PorterDuff.Mode b(ImageView imageview)
    {
        return a.b(imageview);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new c();
        } else
        {
            a = new a();
        }
    }
}
