// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

// Referenced classes of package android.support.v4.widget:
//            f

static class de extends de
{

    public ColorStateList a(ImageView imageview)
    {
        return imageview.getImageTintList();
    }

    public void a(ImageView imageview, ColorStateList colorstatelist)
    {
        imageview.setImageTintList(colorstatelist);
        if (android.os.d.VERSION.SDK_INT == 21)
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

    public void a(ImageView imageview, android.graphics.erDuff.Mode mode)
    {
        imageview.setImageTintMode(mode);
        if (android.os.d.VERSION.SDK_INT == 21)
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

    public android.graphics.erDuff.Mode b(ImageView imageview)
    {
        return imageview.getImageTintMode();
    }

    de()
    {
    }
}
