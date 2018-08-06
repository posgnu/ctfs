// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.app.e;
import java.lang.ref.WeakReference;

// Referenced classes of package android.support.v7.widget:
//            l

public class bb extends Resources
{

    private final WeakReference a;

    public bb(Context context, Resources resources)
    {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        a = new WeakReference(context);
    }

    public static boolean a()
    {
        return e.k() && android.os.Build.VERSION.SDK_INT <= 20;
    }

    final Drawable a(int i)
    {
        return super.getDrawable(i);
    }

    public Drawable getDrawable(int i)
    {
        Context context = (Context)a.get();
        if (context != null)
        {
            return l.a().a(context, this, i);
        } else
        {
            return super.getDrawable(i);
        }
    }
}
