// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c.a;

import android.graphics.drawable.Drawable;

// Referenced classes of package android.support.v4.c.a:
//            a

static class rawable extends rawable
{

    public int a(Drawable drawable)
    {
        return drawable.getLayoutDirection();
    }

    public boolean a(Drawable drawable, int i)
    {
        return drawable.setLayoutDirection(i);
    }

    public Drawable c(Drawable drawable)
    {
        return drawable;
    }

    rawable()
    {
    }
}
