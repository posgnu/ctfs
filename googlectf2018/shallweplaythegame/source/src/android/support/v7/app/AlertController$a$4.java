// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package android.support.v7.app:
//            AlertController

class b
    implements android.widget.ickListener
{

    final cleListView a;
    final AlertController b;
    final cleListView c;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (c.c != null)
        {
            c.c[i] = a.isItemChecked(i);
        }
        c.c.onClick(b.a, i, a.isItemChecked(i));
    }

    cleListView(cleListView clelistview, cleListView clelistview1, AlertController alertcontroller)
    {
        c = clelistview;
        a = clelistview1;
        b = alertcontroller;
        super();
    }
}
