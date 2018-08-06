// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.view.menu:
//            h, j, ListMenuItemView

public class g extends BaseAdapter
{

    static final int a;
    h b;
    private int c;
    private boolean d;
    private final boolean e;
    private final LayoutInflater f;

    public g(h h1, LayoutInflater layoutinflater, boolean flag)
    {
        c = -1;
        e = flag;
        f = layoutinflater;
        b = h1;
        b();
    }

    public h a()
    {
        return b;
    }

    public j a(int i)
    {
        ArrayList arraylist;
        int k;
        if (e)
        {
            arraylist = b.l();
        } else
        {
            arraylist = b.i();
        }
        k = i;
        if (c >= 0)
        {
            k = i;
            if (i >= c)
            {
                k = i + 1;
            }
        }
        return (j)arraylist.get(k);
    }

    public void a(boolean flag)
    {
        d = flag;
    }

    void b()
    {
        j j1 = b.r();
        if (j1 != null)
        {
            ArrayList arraylist = b.l();
            int k = arraylist.size();
            for (int i = 0; i < k; i++)
            {
                if ((j)arraylist.get(i) == j1)
                {
                    c = i;
                    return;
                }
            }

        }
        c = -1;
    }

    public int getCount()
    {
        ArrayList arraylist;
        if (e)
        {
            arraylist = b.l();
        } else
        {
            arraylist = b.i();
        }
        if (c < 0)
        {
            return arraylist.size();
        } else
        {
            return arraylist.size() - 1;
        }
    }

    public Object getItem(int i)
    {
        return a(i);
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = f.inflate(a, viewgroup, false);
        }
        viewgroup = (p.a)view;
        if (d)
        {
            ((ListMenuItemView)view).setForceShowIcon(true);
        }
        viewgroup.a(a(i), 0);
        return view;
    }

    public void notifyDataSetChanged()
    {
        b();
        super.notifyDataSetChanged();
    }

    static 
    {
        a = android.support.v7.a.a.g.abc_popup_menu_item_layout;
    }
}
