// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

// Referenced classes of package android.support.v7.widget:
//            an, l

class av extends an
{

    private final WeakReference a;

    public av(Context context, Resources resources)
    {
        super(resources);
        a = new WeakReference(context);
    }

    public Drawable getDrawable(int i)
    {
        Drawable drawable = super.getDrawable(i);
        Context context = (Context)a.get();
        if (drawable != null && context != null)
        {
            l.a();
            l.a(context, i, drawable);
        }
        return drawable;
    }
}
