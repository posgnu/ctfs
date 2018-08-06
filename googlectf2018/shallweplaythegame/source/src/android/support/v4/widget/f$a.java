// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.widget.ImageView;

// Referenced classes of package android.support.v4.widget:
//            f, l

static class de
    implements de
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

    public void a(ImageView imageview, android.graphics.erDuff.Mode mode)
    {
        if (imageview instanceof l)
        {
            ((l)imageview).setSupportImageTintMode(mode);
        }
    }

    public android.graphics.erDuff.Mode b(ImageView imageview)
    {
        if (imageview instanceof l)
        {
            return ((l)imageview).getSupportImageTintMode();
        } else
        {
            return null;
        }
    }

    de()
    {
    }
}
