// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;

// Referenced classes of package android.support.v7.view.menu:
//            o, s, g, h, 
//            j

abstract class m
    implements o, s, android.widget.AdapterView.OnItemClickListener
{

    private Rect a;

    m()
    {
    }

    protected static int a(ListAdapter listadapter, ViewGroup viewgroup, Context context, int i)
    {
        int k1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        int l1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        int i2 = listadapter.getCount();
        int k = 0;
        int i1 = 0;
        View view = null;
        int j = 0;
        while (k < i2) 
        {
            int j1 = listadapter.getItemViewType(k);
            int l = i1;
            if (j1 != i1)
            {
                l = j1;
                view = null;
            }
            if (viewgroup == null)
            {
                viewgroup = new FrameLayout(context);
            }
            view = listadapter.getView(k, view, viewgroup);
            view.measure(k1, l1);
            i1 = view.getMeasuredWidth();
            if (i1 >= i)
            {
                return i;
            }
            if (i1 > j)
            {
                j = i1;
            }
            k++;
            i1 = l;
        }
        return j;
    }

    protected static g a(ListAdapter listadapter)
    {
        if (listadapter instanceof HeaderViewListAdapter)
        {
            return (g)((HeaderViewListAdapter)listadapter).getWrappedAdapter();
        } else
        {
            return (g)listadapter;
        }
    }

    protected static boolean b(h h1)
    {
        boolean flag1 = false;
        int j = h1.size();
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    MenuItem menuitem = h1.getItem(i);
                    if (!menuitem.isVisible() || menuitem.getIcon() == null)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i++;
        } while (true);
    }

    public abstract void a(int i);

    public void a(Context context, h h1)
    {
    }

    public void a(Rect rect)
    {
        a = rect;
    }

    public abstract void a(h h1);

    public abstract void a(View view);

    public abstract void a(android.widget.PopupWindow.OnDismissListener ondismisslistener);

    public abstract void a(boolean flag);

    public boolean a(h h1, j j)
    {
        return false;
    }

    public abstract void b(int i);

    public boolean b(h h1, j j)
    {
        return false;
    }

    public abstract void c(int i);

    public abstract void c(boolean flag);

    protected boolean f()
    {
        return true;
    }

    public Rect g()
    {
        return a;
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        view = (ListAdapter)adapterview.getAdapter();
        adapterview = a(view).b;
        view = (MenuItem)view.getItem(i);
        if (f())
        {
            i = 0;
        } else
        {
            i = 4;
        }
        adapterview.a(view, this, i);
    }
}
