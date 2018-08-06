// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            aj

class a
    implements Runnable
{

    final aj a;

    public void run()
    {
        View view = a.i();
        if (view != null && view.getWindowToken() != null)
        {
            a.a();
        }
    }

    (aj aj1)
    {
        a = aj1;
        super();
    }
}
