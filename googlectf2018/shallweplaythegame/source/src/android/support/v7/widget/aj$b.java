// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.database.DataSetObserver;

// Referenced classes of package android.support.v7.widget:
//            aj

private class r extends DataSetObserver
{

    final aj a;

    public void onChanged()
    {
        if (a.d())
        {
            a.a();
        }
    }

    public void onInvalidated()
    {
        a.c();
    }

    r(aj aj1)
    {
        a = aj1;
        super();
    }
}
