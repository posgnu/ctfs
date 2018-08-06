// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.view.View;
import android.view.ViewParent;

// Referenced classes of package android.support.v4.h:
//            p, q

public class j
{

    private ViewParent a;
    private ViewParent b;
    private final View c;
    private boolean d;
    private int e[];

    public j(View view)
    {
        c = view;
    }

    private void a(int i, ViewParent viewparent)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
            a = viewparent;
            return;

        case 1: // '\001'
            b = viewparent;
            break;
        }
    }

    private ViewParent d(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
            return a;

        case 1: // '\001'
            return b;
        }
    }

    public void a(boolean flag)
    {
        if (d)
        {
            p.k(c);
        }
        d = flag;
    }

    public boolean a()
    {
        return d;
    }

    public boolean a(float f, float f1)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (a())
        {
            ViewParent viewparent = d(0);
            flag = flag1;
            if (viewparent != null)
            {
                flag = q.a(viewparent, c, f, f1);
            }
        }
        return flag;
    }

    public boolean a(float f, float f1, boolean flag)
    {
        boolean flag2 = false;
        boolean flag1 = flag2;
        if (a())
        {
            ViewParent viewparent = d(0);
            flag1 = flag2;
            if (viewparent != null)
            {
                flag1 = q.a(viewparent, c, f, f1, flag);
            }
        }
        return flag1;
    }

    public boolean a(int i)
    {
        return d(i) != null;
    }

    public boolean a(int i, int k)
    {
        if (a(k))
        {
            return true;
        }
        if (a())
        {
            ViewParent viewparent = c.getParent();
            View view = c;
            for (; viewparent != null; viewparent = viewparent.getParent())
            {
                if (q.a(viewparent, view, c, i, k))
                {
                    a(k, viewparent);
                    q.b(viewparent, view, c, i, k);
                    return true;
                }
                if (viewparent instanceof View)
                {
                    view = (View)viewparent;
                }
            }

        }
        return false;
    }

    public boolean a(int i, int k, int l, int i1, int ai[])
    {
        return a(i, k, l, i1, ai, 0);
    }

    public boolean a(int i, int k, int l, int i1, int ai[], int j1)
    {
        if (a())
        {
            ViewParent viewparent = d(j1);
            if (viewparent == null)
            {
                return false;
            }
            if (i != 0 || k != 0 || l != 0 || i1 != 0)
            {
                int k1;
                int l1;
                if (ai != null)
                {
                    c.getLocationInWindow(ai);
                    l1 = ai[0];
                    k1 = ai[1];
                } else
                {
                    k1 = 0;
                    l1 = 0;
                }
                q.a(viewparent, c, i, k, l, i1, j1);
                if (ai != null)
                {
                    c.getLocationInWindow(ai);
                    ai[0] = ai[0] - l1;
                    ai[1] = ai[1] - k1;
                }
                return true;
            }
            if (ai != null)
            {
                ai[0] = 0;
                ai[1] = 0;
            }
        }
        return false;
    }

    public boolean a(int i, int k, int ai[], int ai1[])
    {
        return a(i, k, ai, ai1, 0);
    }

    public boolean a(int i, int k, int ai[], int ai1[], int l)
    {
        if (a())
        {
            ViewParent viewparent = d(l);
            if (viewparent != null)
            {
                if (i != 0 || k != 0)
                {
                    int i1;
                    int j1;
                    boolean flag;
                    if (ai1 != null)
                    {
                        c.getLocationInWindow(ai1);
                        j1 = ai1[0];
                        i1 = ai1[1];
                    } else
                    {
                        i1 = 0;
                        j1 = 0;
                    }
                    if (ai == null)
                    {
                        if (e == null)
                        {
                            e = new int[2];
                        }
                        ai = e;
                    }
                    ai[0] = 0;
                    ai[1] = 0;
                    q.a(viewparent, c, i, k, ai, l);
                    if (ai1 != null)
                    {
                        c.getLocationInWindow(ai1);
                        ai1[0] = ai1[0] - j1;
                        ai1[1] = ai1[1] - i1;
                    }
                    if (ai[0] != 0 || ai[1] != 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    return flag;
                }
                if (ai1 != null)
                {
                    ai1[0] = 0;
                    ai1[1] = 0;
                    return false;
                }
            }
        }
        return false;
    }

    public boolean b()
    {
        return a(0);
    }

    public boolean b(int i)
    {
        return a(i, 0);
    }

    public void c()
    {
        c(0);
    }

    public void c(int i)
    {
        ViewParent viewparent = d(i);
        if (viewparent != null)
        {
            q.a(viewparent, c, i);
            a(i, ((ViewParent) (null)));
        }
    }
}
