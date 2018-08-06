// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.widget:
//            aj

private class a
    implements android.widget.stView.OnScrollListener
{

    final aj a;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (i == 1 && !a.n() && a.g.getContentView() != null)
        {
            a.f.removeCallbacks(a.e);
            a.e.run();
        }
    }

    rollListener(aj aj1)
    {
        a = aj1;
        super();
    }
}
