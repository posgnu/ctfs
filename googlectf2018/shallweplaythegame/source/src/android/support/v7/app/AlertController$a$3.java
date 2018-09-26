// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package android.support.v7.app:
//            AlertController, l

class a
    implements android.widget.ickListener
{

    final AlertController a;
    final a b;

    public void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        b.b.onClick(a.a, i);
        if (!b.b)
        {
            a.a.dismiss();
        }
    }

    ener(ener ener, AlertController alertcontroller)
    {
        b = ener;
        a = alertcontroller;
        super();
    }
}
