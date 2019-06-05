// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.graphics.drawable.Drawable;

// Referenced classes of package android.support.b.a:
//            c

class a
    implements android.graphics.drawable.able.Callback
{

    final c a;

    public void invalidateDrawable(Drawable drawable)
    {
        a.invalidateSelf();
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
    {
        a.scheduleSelf(runnable, l);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable)
    {
        a.unscheduleSelf(runnable);
    }

    e.Drawable(c c1)
    {
        a = c1;
        super();
    }
}
