// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.h.d;
import android.support.v4.h.p;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;

// Referenced classes of package android.support.v7.view.menu:
//            m, e, t, h

public class n
{

    private final Context a;
    private final h b;
    private final boolean c;
    private final int d;
    private final int e;
    private View f;
    private int g;
    private boolean h;
    private o.a i;
    private m j;
    private android.widget.PopupWindow.OnDismissListener k;
    private final android.widget.PopupWindow.OnDismissListener l;

    public n(Context context, h h1, View view, boolean flag, int i1)
    {
        this(context, h1, view, flag, i1, 0);
    }

    public n(Context context, h h1, View view, boolean flag, int i1, int j1)
    {
        g = 0x800003;
        l = new android.widget.PopupWindow.OnDismissListener() {

            final n a;

            public void onDismiss()
            {
                a.e();
            }

            
            {
                a = n.this;
                super();
            }
        };
        a = context;
        b = h1;
        f = view;
        c = flag;
        d = i1;
        e = j1;
    }

    private void a(int i1, int j1, boolean flag, boolean flag1)
    {
        m m1 = b();
        m1.c(flag1);
        if (flag)
        {
            int k1 = i1;
            if ((android.support.v4.h.d.a(g, p.b(f)) & 7) == 5)
            {
                k1 = i1 + f.getWidth();
            }
            m1.b(k1);
            m1.c(j1);
            i1 = (int)((a.getResources().getDisplayMetrics().density * 48F) / 2.0F);
            m1.a(new Rect(k1 - i1, j1 - i1, k1 + i1, i1 + j1));
        }
        m1.a();
    }

    private m g()
    {
        Object obj = ((WindowManager)a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            ((Display) (obj)).getRealSize(point);
        } else
        {
            ((Display) (obj)).getSize(point);
        }
        if (Math.min(point.x, point.y) >= a.getResources().getDimensionPixelSize(android.support.v7.a.a.d.abc_cascading_menus_min_smallest_width))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            obj = new e(a, f, d, e, c);
        } else
        {
            obj = new t(a, b, f, d, e, c);
        }
        ((m) (obj)).a(b);
        ((m) (obj)).a(l);
        ((m) (obj)).a(f);
        ((m) (obj)).a(i);
        ((m) (obj)).a(h);
        ((m) (obj)).a(g);
        return ((m) (obj));
    }

    public void a()
    {
        if (!c())
        {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        } else
        {
            return;
        }
    }

    public void a(int i1)
    {
        g = i1;
    }

    public void a(o.a a1)
    {
        i = a1;
        if (j != null)
        {
            j.a(a1);
        }
    }

    public void a(View view)
    {
        f = view;
    }

    public void a(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        k = ondismisslistener;
    }

    public void a(boolean flag)
    {
        h = flag;
        if (j != null)
        {
            j.a(flag);
        }
    }

    public boolean a(int i1, int j1)
    {
        if (f())
        {
            return true;
        }
        if (f == null)
        {
            return false;
        } else
        {
            a(i1, j1, true, true);
            return true;
        }
    }

    public m b()
    {
        if (j == null)
        {
            j = g();
        }
        return j;
    }

    public boolean c()
    {
        if (f())
        {
            return true;
        }
        if (f == null)
        {
            return false;
        } else
        {
            a(0, 0, false, false);
            return true;
        }
    }

    public void d()
    {
        if (f())
        {
            j.c();
        }
    }

    protected void e()
    {
        j = null;
        if (k != null)
        {
            k.onDismiss();
        }
    }

    public boolean f()
    {
        return j != null && j.d();
    }
}
