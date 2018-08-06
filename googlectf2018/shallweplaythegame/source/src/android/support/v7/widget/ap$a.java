// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

// Referenced classes of package android.support.v7.widget:
//            ap, ai

private class t> extends BaseAdapter
{

    final ap a;

    public int getCount()
    {
        return a.b.getChildCount();
    }

    public Object getItem(int i)
    {
        return ((tChildCount)a.b.getChildAt(i)).b();
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            return a.a((android.support.v7.app..a)getItem(i), true);
        } else
        {
            ((getItem)view).a((android.support.v7.app..c.a)getItem(i));
            return view;
        }
    }

    (ap ap1)
    {
        a = ap1;
        super();
    }
}
