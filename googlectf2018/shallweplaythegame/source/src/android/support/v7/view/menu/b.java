// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.view.menu:
//            o, p, h, j, 
//            u

public abstract class b
    implements o
{

    protected Context a;
    protected Context b;
    protected h c;
    protected LayoutInflater d;
    protected LayoutInflater e;
    protected p f;
    private o.a g;
    private int h;
    private int i;
    private int j;

    public b(Context context, int k, int l)
    {
        a = context;
        d = LayoutInflater.from(context);
        h = k;
        i = l;
    }

    public o.a a()
    {
        return g;
    }

    public p a(ViewGroup viewgroup)
    {
        if (f == null)
        {
            f = (p)d.inflate(h, viewgroup, false);
            f.a(c);
            b(true);
        }
        return f;
    }

    public View a(j j1, View view, ViewGroup viewgroup)
    {
        if (view instanceof p.a)
        {
            view = (p.a)view;
        } else
        {
            view = b(viewgroup);
        }
        a(j1, ((p.a) (view)));
        return (View)view;
    }

    public void a(int k)
    {
        j = k;
    }

    public void a(Context context, h h1)
    {
        b = context;
        e = LayoutInflater.from(b);
        c = h1;
    }

    public void a(h h1, boolean flag)
    {
        if (g != null)
        {
            g.a(h1, flag);
        }
    }

    public abstract void a(j j1, p.a a1);

    public void a(o.a a1)
    {
        g = a1;
    }

    protected void a(View view, int k)
    {
        ViewGroup viewgroup = (ViewGroup)view.getParent();
        if (viewgroup != null)
        {
            viewgroup.removeView(view);
        }
        ((ViewGroup)f).addView(view, k);
    }

    public boolean a(int k, j j1)
    {
        return true;
    }

    public boolean a(h h1, j j1)
    {
        return false;
    }

    public boolean a(u u)
    {
        if (g != null)
        {
            return g.a(u);
        } else
        {
            return false;
        }
    }

    protected boolean a(ViewGroup viewgroup, int k)
    {
        viewgroup.removeViewAt(k);
        return true;
    }

    public p.a b(ViewGroup viewgroup)
    {
        return (p.a)d.inflate(i, viewgroup, false);
    }

    public void b(boolean flag)
    {
        ViewGroup viewgroup = (ViewGroup)f;
        if (viewgroup != null)
        {
            int l;
            if (c != null)
            {
                c.j();
                ArrayList arraylist = c.i();
                int k1 = arraylist.size();
                int i1 = 0;
                int k = 0;
                do
                {
                    l = k;
                    if (i1 >= k1)
                    {
                        break;
                    }
                    j j2 = (j)arraylist.get(i1);
                    if (a(k, j2))
                    {
                        View view = viewgroup.getChildAt(k);
                        j j1;
                        View view1;
                        if (view instanceof p.a)
                        {
                            j1 = ((p.a)view).getItemData();
                        } else
                        {
                            j1 = null;
                        }
                        view1 = a(j2, view, viewgroup);
                        if (j2 != j1)
                        {
                            view1.setPressed(false);
                            view1.jumpDrawablesToCurrentState();
                        }
                        if (view1 != view)
                        {
                            a(view1, k);
                        }
                        k++;
                    }
                    i1++;
                } while (true);
            } else
            {
                l = 0;
            }
            while (l < viewgroup.getChildCount()) 
            {
                if (!a(viewgroup, l))
                {
                    l++;
                }
            }
        }
    }

    public boolean b()
    {
        return false;
    }

    public boolean b(h h1, j j1)
    {
        return false;
    }
}
