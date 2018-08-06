// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.view.menu:
//            o, ExpandedMenuView, u, i, 
//            h, p, j

public class f
    implements o, android.widget.AdapterView.OnItemClickListener
{
    private class a extends BaseAdapter
    {

        final f a;
        private int b;

        public j a(int k)
        {
            ArrayList arraylist = a.c.l();
            int l = a.e + k;
            k = l;
            if (b >= 0)
            {
                k = l;
                if (l >= b)
                {
                    k = l + 1;
                }
            }
            return (j)arraylist.get(k);
        }

        void a()
        {
            j j1 = a.c.r();
            if (j1 != null)
            {
                ArrayList arraylist = a.c.l();
                int l = arraylist.size();
                for (int k = 0; k < l; k++)
                {
                    if ((j)arraylist.get(k) == j1)
                    {
                        b = k;
                        return;
                    }
                }

            }
            b = -1;
        }

        public int getCount()
        {
            int k = a.c.l().size() - a.e;
            if (b < 0)
            {
                return k;
            } else
            {
                return k - 1;
            }
        }

        public Object getItem(int k)
        {
            return a(k);
        }

        public long getItemId(int k)
        {
            return (long)k;
        }

        public View getView(int k, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = a.b.inflate(a.g, viewgroup, false);
            }
            ((p.a)view).a(a(k), 0);
            return view;
        }

        public void notifyDataSetChanged()
        {
            a();
            super.notifyDataSetChanged();
        }

        public a()
        {
            a = f.this;
            super();
            b = -1;
            a();
        }
    }


    Context a;
    LayoutInflater b;
    h c;
    ExpandedMenuView d;
    int e;
    int f;
    int g;
    a h;
    private o.a i;

    public f(int j, int k)
    {
        g = j;
        f = k;
    }

    public f(Context context, int j)
    {
        this(j, 0);
        a = context;
        b = LayoutInflater.from(a);
    }

    public p a(ViewGroup viewgroup)
    {
        if (d == null)
        {
            d = (ExpandedMenuView)b.inflate(android.support.v7.a.a.g.abc_expanded_menu_layout, viewgroup, false);
            if (h == null)
            {
                h = new a();
            }
            d.setAdapter(h);
            d.setOnItemClickListener(this);
        }
        return d;
    }

    public ListAdapter a()
    {
        if (h == null)
        {
            h = new a();
        }
        return h;
    }

    public void a(Context context, h h1)
    {
        if (f == 0) goto _L2; else goto _L1
_L1:
        a = new ContextThemeWrapper(context, f);
        b = LayoutInflater.from(a);
_L4:
        c = h1;
        if (h != null)
        {
            h.notifyDataSetChanged();
        }
        return;
_L2:
        if (a != null)
        {
            a = context;
            if (b == null)
            {
                b = LayoutInflater.from(a);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(h h1, boolean flag)
    {
        if (i != null)
        {
            i.a(h1, flag);
        }
    }

    public void a(o.a a1)
    {
        i = a1;
    }

    public boolean a(h h1, j j)
    {
        return false;
    }

    public boolean a(u u1)
    {
        if (!u1.hasVisibleItems())
        {
            return false;
        }
        (new i(u1)).a(null);
        if (i != null)
        {
            i.a(u1);
        }
        return true;
    }

    public void b(boolean flag)
    {
        if (h != null)
        {
            h.notifyDataSetChanged();
        }
    }

    public boolean b()
    {
        return false;
    }

    public boolean b(h h1, j j)
    {
        return false;
    }

    public void onItemClick(AdapterView adapterview, View view, int j, long l)
    {
        c.a(h.a(j), this, 0);
    }
}
