// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.am;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;

// Referenced classes of package android.support.v7.view.menu:
//            m, o, g, h, 
//            u, n

final class t extends m
    implements o, android.view.View.OnKeyListener, android.widget.AdapterView.OnItemClickListener, android.widget.PopupWindow.OnDismissListener
{

    final am a;
    View b;
    private final Context c;
    private final h d;
    private final g e;
    private final boolean f;
    private final int g;
    private final int h;
    private final int i;
    private final android.view.ViewTreeObserver.OnGlobalLayoutListener j = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

        final t a;

        public void onGlobalLayout()
        {
label0:
            {
                if (a.d() && !a.a.g())
                {
                    View view1 = a.b;
                    if (view1 != null && view1.isShown())
                    {
                        break label0;
                    }
                    a.c();
                }
                return;
            }
            a.a.a();
        }

            
            {
                a = t.this;
                super();
            }
    };
    private final android.view.View.OnAttachStateChangeListener k = new android.view.View.OnAttachStateChangeListener() {

        final t a;

        public void onViewAttachedToWindow(View view1)
        {
        }

        public void onViewDetachedFromWindow(View view1)
        {
            if (t.a(a) != null)
            {
                if (!t.a(a).isAlive())
                {
                    t.a(a, view1.getViewTreeObserver());
                }
                t.a(a).removeGlobalOnLayoutListener(t.b(a));
            }
            view1.removeOnAttachStateChangeListener(this);
        }

            
            {
                a = t.this;
                super();
            }
    };
    private android.widget.PopupWindow.OnDismissListener l;
    private View m;
    private o.a n;
    private ViewTreeObserver o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private boolean t;

    public t(Context context, h h1, View view, int i1, int j1, boolean flag)
    {
        s = 0;
        c = context;
        d = h1;
        f = flag;
        e = new g(h1, LayoutInflater.from(context), f);
        h = i1;
        i = j1;
        Resources resources = context.getResources();
        g = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(android.support.v7.a.a.d.abc_config_prefDialogWidth));
        m = view;
        a = new am(c, null, h, i);
        h1.a(this, context);
    }

    static ViewTreeObserver a(t t1)
    {
        return t1.o;
    }

    static ViewTreeObserver a(t t1, ViewTreeObserver viewtreeobserver)
    {
        t1.o = viewtreeobserver;
        return viewtreeobserver;
    }

    static android.view.ViewTreeObserver.OnGlobalLayoutListener b(t t1)
    {
        return t1.j;
    }

    private boolean h()
    {
        if (d())
        {
            return true;
        }
        if (p || m == null)
        {
            return false;
        }
        b = m;
        a.a(this);
        a.a(this);
        a.a(true);
        Object obj = b;
        boolean flag;
        if (o == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        o = ((View) (obj)).getViewTreeObserver();
        if (flag)
        {
            o.addOnGlobalLayoutListener(j);
        }
        ((View) (obj)).addOnAttachStateChangeListener(k);
        a.b(((View) (obj)));
        a.e(s);
        if (!q)
        {
            r = a(e, null, c, g);
            q = true;
        }
        a.g(r);
        a.h(2);
        a.a(g());
        a.a();
        obj = a.e();
        ((ListView) (obj)).setOnKeyListener(this);
        if (t && d.m() != null)
        {
            FrameLayout framelayout = (FrameLayout)LayoutInflater.from(c).inflate(android.support.v7.a.a.g.abc_popup_menu_header_item_layout, ((android.view.ViewGroup) (obj)), false);
            TextView textview = (TextView)framelayout.findViewById(0x1020016);
            if (textview != null)
            {
                textview.setText(d.m());
            }
            framelayout.setEnabled(false);
            ((ListView) (obj)).addHeaderView(framelayout, null, false);
        }
        a.a(e);
        a.a();
        return true;
    }

    public void a()
    {
        if (!h())
        {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        } else
        {
            return;
        }
    }

    public void a(int i1)
    {
        s = i1;
    }

    public void a(h h1)
    {
    }

    public void a(h h1, boolean flag)
    {
        if (h1 == d)
        {
            c();
            if (n != null)
            {
                n.a(h1, flag);
                return;
            }
        }
    }

    public void a(o.a a1)
    {
        n = a1;
    }

    public void a(View view)
    {
        m = view;
    }

    public void a(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        l = ondismisslistener;
    }

    public void a(boolean flag)
    {
        e.a(flag);
    }

    public boolean a(u u1)
    {
        if (u1.hasVisibleItems())
        {
            n n1 = new n(c, u1, b, f, h, i);
            n1.a(n);
            n1.a(android.support.v7.view.menu.m.b(u1));
            n1.a(s);
            n1.a(l);
            l = null;
            d.a(false);
            if (n1.a(a.j(), a.k()))
            {
                if (n != null)
                {
                    n.a(u1);
                }
                return true;
            }
        }
        return false;
    }

    public void b(int i1)
    {
        a.c(i1);
    }

    public void b(boolean flag)
    {
        q = false;
        if (e != null)
        {
            e.notifyDataSetChanged();
        }
    }

    public boolean b()
    {
        return false;
    }

    public void c()
    {
        if (d())
        {
            a.c();
        }
    }

    public void c(int i1)
    {
        a.d(i1);
    }

    public void c(boolean flag)
    {
        t = flag;
    }

    public boolean d()
    {
        return !p && a.d();
    }

    public ListView e()
    {
        return a.e();
    }

    public void onDismiss()
    {
        p = true;
        d.close();
        if (o != null)
        {
            if (!o.isAlive())
            {
                o = b.getViewTreeObserver();
            }
            o.removeGlobalOnLayoutListener(j);
            o = null;
        }
        b.removeOnAttachStateChangeListener(k);
        if (l != null)
        {
            l.onDismiss();
        }
    }

    public boolean onKey(View view, int i1, KeyEvent keyevent)
    {
        if (keyevent.getAction() == 1 && i1 == 82)
        {
            c();
            return true;
        } else
        {
            return false;
        }
    }
}
