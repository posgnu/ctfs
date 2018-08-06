// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

// Referenced classes of package android.support.v7.app:
//            AlertController

class a extends ArrayAdapter
{

    final cleListView a;
    final cleListView b;

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        view = super.getView(i, view, viewgroup);
        if (b.b != null && b.b[i])
        {
            a.setItemChecked(i, true);
        }
        return view;
    }

    cleListView(cleListView clelistview, Context context, int i, int j, CharSequence acharsequence[], cleListView clelistview1)
    {
        b = clelistview;
        a = clelistview1;
        super(context, i, j, acharsequence);
    }
}
