// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.graphics.drawable.Drawable;

// Referenced classes of package android.support.v4.c.a:
//            a, f, d

static class rawable extends rawable
{

    public void a(Drawable drawable, boolean flag)
    {
        drawable.setAutoMirrored(flag);
    }

    public boolean b(Drawable drawable)
    {
        return drawable.isAutoMirrored();
    }

    public Drawable c(Drawable drawable)
    {
        Object obj = drawable;
        if (!(drawable instanceof f))
        {
            obj = new d(drawable);
        }
        return ((Drawable) (obj));
    }

    public int d(Drawable drawable)
    {
        return drawable.getAlpha();
    }

    rawable()
    {
    }
}
