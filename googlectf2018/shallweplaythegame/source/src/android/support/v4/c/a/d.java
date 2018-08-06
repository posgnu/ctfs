// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

// Referenced classes of package android.support.v4.c.a:
//            c

class d extends c
{
    private static class a extends c.a
    {

        public Drawable newDrawable(Resources resources)
        {
            return new d(this, resources);
        }

        a(c.a a1, Resources resources)
        {
            super(a1, resources);
        }
    }


    d(Drawable drawable)
    {
        super(drawable);
    }

    d(c.a a1, Resources resources)
    {
        super(a1, resources);
    }

    c.a b()
    {
        return new a(b, null);
    }

    public boolean isAutoMirrored()
    {
        return c.isAutoMirrored();
    }

    public void setAutoMirrored(boolean flag)
    {
        c.setAutoMirrored(flag);
    }
}
