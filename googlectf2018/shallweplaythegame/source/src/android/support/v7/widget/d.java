// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.h.c;
import android.support.v7.view.a;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.b;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.n;
import android.support.v7.view.menu.p;
import android.support.v7.view.menu.s;
import android.support.v7.view.menu.u;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuView, p, ay, ah

class android.support.v7.widget.d extends android.support.v7.view.menu.b
    implements android.support.v4.h.c.a
{
    private class a extends n
    {

        final android.support.v7.widget.d a;

        protected void e()
        {
            a.i = null;
            a.l = 0;
            super.e();
        }

        public a(Context context, u u1, View view)
        {
            a = android.support.v7.widget.d.this;
            super(context, u1, view, false, android.support.v7.a.a.a.actionOverflowMenuStyle);
            if (!((j)u1.getItem()).j())
            {
                if (g == null)
                {
                    context = (View)android.support.v7.widget.d.c(android.support.v7.widget.d.this);
                } else
                {
                    context = g;
                }
                a(context);
            }
            a(k);
        }
    }

    private class b extends android.support.v7.view.menu.ActionMenuItemView.b
    {

        final android.support.v7.widget.d a;

        public s a()
        {
            if (a.i != null)
            {
                return a.i.b();
            } else
            {
                return null;
            }
        }

        b()
        {
            a = android.support.v7.widget.d.this;
            super();
        }
    }

    private class c
        implements Runnable
    {

        final android.support.v7.widget.d a;
        private e b;

        public void run()
        {
            if (android.support.v7.widget.d.d(a) != null)
            {
                android.support.v7.widget.d.e(a).f();
            }
            View view = (View)android.support.v7.widget.d.f(a);
            if (view != null && view.getWindowToken() != null && b.c())
            {
                a.h = b;
            }
            a.j = null;
        }

        public c(e e1)
        {
            a = android.support.v7.widget.d.this;
            super();
            b = e1;
        }
    }

    private class d extends android.support.v7.widget.p
        implements ActionMenuView.a
    {

        final android.support.v7.widget.d a;
        private final float b[] = new float[2];

        public boolean c()
        {
            return false;
        }

        public boolean d()
        {
            return false;
        }

        public boolean performClick()
        {
            if (super.performClick())
            {
                return true;
            } else
            {
                playSoundEffect(0);
                a.d();
                return true;
            }
        }

        protected boolean setFrame(int i1, int j1, int k1, int l1)
        {
            boolean flag = super.setFrame(i1, j1, k1, l1);
            Drawable drawable = getDrawable();
            Drawable drawable1 = getBackground();
            if (drawable != null && drawable1 != null)
            {
                int i2 = getWidth();
                j1 = getHeight();
                i1 = Math.max(i2, j1) / 2;
                int j2 = getPaddingLeft();
                int k2 = getPaddingRight();
                k1 = getPaddingTop();
                l1 = getPaddingBottom();
                i2 = (i2 + (j2 - k2)) / 2;
                j1 = (j1 + (k1 - l1)) / 2;
                android.support.v4.c.a.a.a(drawable1, i2 - i1, j1 - i1, i2 + i1, j1 + i1);
            }
            return flag;
        }

        public d(Context context)
        {
            a = android.support.v7.widget.d.this;
            super(context, null, android.support.v7.a.a.a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            android.support.v7.widget.ay.a(this, getContentDescription());
            setOnTouchListener(new _cls1(this, this, android.support.v7.widget.d.this));
        }
    }

    private class e extends n
    {

        final android.support.v7.widget.d a;

        protected void e()
        {
            if (android.support.v7.widget.d.a(a) != null)
            {
                android.support.v7.widget.d.b(a).close();
            }
            a.h = null;
            super.e();
        }

        public e(Context context, h h1, View view, boolean flag)
        {
            a = android.support.v7.widget.d.this;
            super(context, h1, view, flag, android.support.v7.a.a.a.actionOverflowMenuStyle);
            a(0x800005);
            a(k);
        }
    }

    private class f
        implements android.support.v7.view.menu.o.a
    {

        final android.support.v7.widget.d a;

        public void a(h h1, boolean flag)
        {
            if (h1 instanceof u)
            {
                h1.p().a(false);
            }
            android.support.v7.view.menu.o.a a1 = a.a();
            if (a1 != null)
            {
                a1.a(h1, flag);
            }
        }

        public boolean a(h h1)
        {
            if (h1 == null)
            {
                return false;
            }
            a.l = ((u)h1).getItem().getItemId();
            android.support.v7.view.menu.o.a a1 = a.a();
            boolean flag;
            if (a1 != null)
            {
                flag = a1.a(h1);
            } else
            {
                flag = false;
            }
            return flag;
        }

        f()
        {
            a = android.support.v7.widget.d.this;
            super();
        }
    }


    private b A;
    d g;
    e h;
    a i;
    c j;
    final f k = new f();
    int l;
    private Drawable m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private final SparseBooleanArray y = new SparseBooleanArray();
    private View z;

    public android.support.v7.widget.d(Context context)
    {
        super(context, android.support.v7.a.a.g.abc_action_menu_layout, android.support.v7.a.a.g.abc_action_menu_item_layout);
    }

    static h a(android.support.v7.widget.d d1)
    {
        return d1.c;
    }

    private View a(MenuItem menuitem)
    {
        ViewGroup viewgroup = (ViewGroup)f;
        if (viewgroup != null) goto _L2; else goto _L1
_L1:
        View view = null;
_L6:
        return view;
_L2:
        int i1;
        int j1;
        j1 = viewgroup.getChildCount();
        i1 = 0;
_L7:
        if (i1 >= j1) goto _L4; else goto _L3
_L3:
        View view1;
        view1 = viewgroup.getChildAt(i1);
        if (!(view1 instanceof android.support.v7.view.menu.p.a))
        {
            continue; /* Loop/switch isn't completed */
        }
        view = view1;
        if (((android.support.v7.view.menu.p.a)view1).getItemData() == menuitem) goto _L6; else goto _L5
_L5:
        i1++;
          goto _L7
_L4:
        return null;
    }

    static h b(android.support.v7.widget.d d1)
    {
        return d1.c;
    }

    static p c(android.support.v7.widget.d d1)
    {
        return d1.f;
    }

    static h d(android.support.v7.widget.d d1)
    {
        return d1.c;
    }

    static h e(android.support.v7.widget.d d1)
    {
        return d1.c;
    }

    static p f(android.support.v7.widget.d d1)
    {
        return d1.f;
    }

    public p a(ViewGroup viewgroup)
    {
        p p1 = f;
        viewgroup = super.a(viewgroup);
        if (p1 != viewgroup)
        {
            ((ActionMenuView)viewgroup).setPresenter(this);
        }
        return viewgroup;
    }

    public View a(j j1, View view, ViewGroup viewgroup)
    {
        View view1 = j1.getActionView();
        if (view1 == null || j1.n())
        {
            view1 = super.a(j1, view, viewgroup);
        }
        byte byte0;
        if (j1.isActionViewExpanded())
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view1.setVisibility(byte0);
        j1 = (ActionMenuView)viewgroup;
        view = view1.getLayoutParams();
        if (!j1.checkLayoutParams(view))
        {
            view1.setLayoutParams(j1.a(view));
        }
        return view1;
    }

    public void a(Context context, h h1)
    {
        super.a(context, h1);
        h1 = context.getResources();
        context = android.support.v7.view.a.a(context);
        if (!p)
        {
            o = context.b();
        }
        if (!v)
        {
            q = context.c();
        }
        if (!t)
        {
            s = context.a();
        }
        int i1 = q;
        if (o)
        {
            if (g == null)
            {
                g = new d(a);
                if (n)
                {
                    g.setImageDrawable(m);
                    m = null;
                    n = false;
                }
                int j1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                g.measure(j1, j1);
            }
            i1 -= g.getMeasuredWidth();
        } else
        {
            g = null;
        }
        r = i1;
        x = (int)(56F * h1.getDisplayMetrics().density);
        z = null;
    }

    public void a(Configuration configuration)
    {
        if (!t)
        {
            s = android.support.v7.view.a.a(b).a();
        }
        if (c != null)
        {
            c.b(true);
        }
    }

    public void a(Drawable drawable)
    {
        if (g != null)
        {
            g.setImageDrawable(drawable);
            return;
        } else
        {
            n = true;
            m = drawable;
            return;
        }
    }

    public void a(h h1, boolean flag)
    {
        f();
        super.a(h1, flag);
    }

    public void a(j j1, android.support.v7.view.menu.p.a a1)
    {
        a1.a(j1, 0);
        j1 = (ActionMenuView)f;
        a1 = (ActionMenuItemView)a1;
        a1.setItemInvoker(j1);
        if (A == null)
        {
            A = new b();
        }
        a1.setPopupCallback(A);
    }

    public void a(ActionMenuView actionmenuview)
    {
        f = actionmenuview;
        actionmenuview.a(c);
    }

    public void a(boolean flag)
    {
        if (flag)
        {
            super.a(null);
        } else
        if (c != null)
        {
            c.a(false);
            return;
        }
    }

    public boolean a(int i1, j j1)
    {
        return j1.j();
    }

    public boolean a(u u1)
    {
        if (u1.hasVisibleItems()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        Object obj;
        for (obj = u1; ((u) (obj)).s() != c; obj = (u)((u) (obj)).s()) { }
        obj = a(((u) (obj)).getItem());
        if (obj == null) goto _L1; else goto _L3
_L3:
        int i1;
        int j1;
        l = u1.getItem().getItemId();
        j1 = u1.size();
        i1 = 0;
_L6:
        MenuItem menuitem;
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        menuitem = u1.getItem(i1);
        if (!menuitem.isVisible() || menuitem.getIcon() == null) goto _L5; else goto _L4
_L4:
        boolean flag = true;
_L7:
        i = new a(b, u1, ((View) (obj)));
        i.a(flag);
        i.a();
        super.a(u1);
        return true;
_L5:
        i1++;
          goto _L6
        flag = false;
          goto _L7
    }

    public boolean a(ViewGroup viewgroup, int i1)
    {
        if (viewgroup.getChildAt(i1) == g)
        {
            return false;
        } else
        {
            return super.a(viewgroup, i1);
        }
    }

    public void b(boolean flag)
    {
        boolean flag1 = true;
        boolean flag2 = false;
        super.b(flag);
        ((View)f).requestLayout();
        if (c != null)
        {
            ArrayList arraylist = c.k();
            int k1 = arraylist.size();
            for (int i1 = 0; i1 < k1; i1++)
            {
                android.support.v4.h.c c1 = ((j)arraylist.get(i1)).a();
                if (c1 != null)
                {
                    c1.a(this);
                }
            }

        }
        Object obj;
        int j1;
        if (c != null)
        {
            obj = c.l();
        } else
        {
            obj = null;
        }
        j1 = ((flag2) ? 1 : 0);
        if (o)
        {
            j1 = ((flag2) ? 1 : 0);
            if (obj != null)
            {
                j1 = ((ArrayList) (obj)).size();
                if (j1 == 1)
                {
                    if (!((j)((ArrayList) (obj)).get(0)).isActionViewExpanded())
                    {
                        j1 = 1;
                    } else
                    {
                        j1 = 0;
                    }
                } else
                if (j1 > 0)
                {
                    j1 = ((flag1) ? 1 : 0);
                } else
                {
                    j1 = 0;
                }
            }
        }
        if (j1 == 0) goto _L2; else goto _L1
_L1:
        if (g == null)
        {
            g = new d(a);
        }
        obj = (ViewGroup)g.getParent();
        if (obj != f)
        {
            if (obj != null)
            {
                ((ViewGroup) (obj)).removeView(g);
            }
            obj = (ActionMenuView)f;
            ((ActionMenuView) (obj)).addView(g, ((ActionMenuView) (obj)).c());
        }
_L4:
        ((ActionMenuView)f).setOverflowReserved(o);
        return;
_L2:
        if (g != null && g.getParent() == f)
        {
            ((ViewGroup)f).removeView(g);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean b()
    {
        ArrayList arraylist;
        ViewGroup viewgroup;
        int l1;
        int i2;
        int i4;
        int l4;
        int l5;
label0:
        {
            int i1;
            int k2;
            boolean flag;
            if (c != null)
            {
                arraylist = c.i();
                i4 = arraylist.size();
            } else
            {
                i4 = 0;
                arraylist = null;
            }
            i1 = s;
            l4 = r;
            l5 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            viewgroup = (ViewGroup)f;
            i2 = 0;
            k2 = 0;
            flag = false;
            l1 = 0;
            while (l1 < i4) 
            {
                j j1 = (j)arraylist.get(l1);
                if (j1.l())
                {
                    i2++;
                } else
                if (j1.k())
                {
                    k2++;
                } else
                {
                    flag = true;
                }
                if (w && j1.isActionViewExpanded())
                {
                    i1 = 0;
                }
                l1++;
            }
            l1 = i1;
            if (!o)
            {
                break label0;
            }
            if (!flag)
            {
                l1 = i1;
                if (i2 + k2 <= i1)
                {
                    break label0;
                }
            }
            l1 = i1 - 1;
        }
        l1 -= i2;
        SparseBooleanArray sparsebooleanarray = y;
        sparsebooleanarray.clear();
        int k1 = 0;
        int i3;
        boolean flag1;
        int j4;
        int k4;
        if (u)
        {
            k1 = l4 / x;
            i2 = x;
            int l2 = x;
            j4 = (l4 % i2) / k1 + l2;
        } else
        {
            j4 = 0;
        }
        k4 = 0;
        flag1 = false;
        i2 = k1;
        k1 = l1;
        i3 = l4;
        l1 = ((flag1) ? 1 : 0);
        while (k4 < i4) 
        {
            j j2 = (j)arraylist.get(k4);
            int k3;
            if (j2.l())
            {
                View view = a(j2, z, viewgroup);
                if (z == null)
                {
                    z = view;
                }
                int i5;
                if (u)
                {
                    k3 = i2 - android.support.v7.widget.ActionMenuView.a(view, j4, i2, l5, 0);
                } else
                {
                    view.measure(l5, l5);
                    k3 = i2;
                }
                i2 = view.getMeasuredWidth();
                if (l1 == 0)
                {
                    l1 = i2;
                }
                i5 = j2.getGroupId();
                if (i5 != 0)
                {
                    sparsebooleanarray.put(i5, true);
                }
                j2.d(true);
                i3 -= i2;
                i2 = k1;
                k1 = i3;
            } else
            if (j2.k())
            {
                int i6 = j2.getGroupId();
                boolean flag3 = sparsebooleanarray.get(i6);
                boolean flag2;
                if ((k1 > 0 || flag3) && i3 > 0 && (!u || i2 > 0))
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                if (flag2)
                {
                    View view1 = a(j2, z, viewgroup);
                    if (z == null)
                    {
                        z = view1;
                    }
                    int j5;
                    if (u)
                    {
                        k3 = android.support.v7.widget.ActionMenuView.a(view1, j4, i2, l5, 0);
                        if (k3 == 0)
                        {
                            flag2 = false;
                        }
                        i2 -= k3;
                    } else
                    {
                        view1.measure(l5, l5);
                    }
                    k3 = view1.getMeasuredWidth();
                    j5 = i3 - k3;
                    i3 = l1;
                    if (l1 == 0)
                    {
                        i3 = k3;
                    }
                    if (u)
                    {
                        if (j5 >= 0)
                        {
                            l1 = 1;
                        } else
                        {
                            l1 = 0;
                        }
                        flag2 &= l1;
                        l1 = i3;
                        k3 = i2;
                        i3 = j5;
                        i2 = l1;
                        l1 = k3;
                    } else
                    {
                        if (j5 + i3 > 0)
                        {
                            l1 = 1;
                        } else
                        {
                            l1 = 0;
                        }
                        flag2 &= l1;
                        l1 = i2;
                        i2 = i3;
                        i3 = j5;
                    }
                } else
                {
                    int l3 = l1;
                    l1 = i2;
                    i2 = l3;
                }
                if (flag2 && i6 != 0)
                {
                    sparsebooleanarray.put(i6, true);
                } else
                if (flag3)
                {
                    sparsebooleanarray.put(i6, false);
                    int k5 = 0;
                    while (k5 < k4) 
                    {
                        j j3 = (j)arraylist.get(k5);
                        k3 = k1;
                        if (j3.getGroupId() == i6)
                        {
                            k3 = k1;
                            if (j3.j())
                            {
                                k3 = k1 + 1;
                            }
                            j3.d(false);
                        }
                        k5++;
                        k1 = k3;
                    }
                }
                k3 = k1;
                if (flag2)
                {
                    k3 = k1 - 1;
                }
                j2.d(flag2);
                k1 = i3;
                i3 = k3;
                k3 = l1;
                l1 = i2;
                i2 = i3;
            } else
            {
                j2.d(false);
                k3 = i3;
                i3 = k1;
                k1 = k3;
                k3 = i2;
                i2 = i3;
            }
            i5 = k4 + 1;
            k4 = i2;
            i2 = k3;
            i3 = k1;
            k1 = k4;
            k4 = i5;
        }
        return true;
    }

    public Drawable c()
    {
        if (g != null)
        {
            return g.getDrawable();
        }
        if (n)
        {
            return m;
        } else
        {
            return null;
        }
    }

    public void c(boolean flag)
    {
        o = flag;
        p = true;
    }

    public void d(boolean flag)
    {
        w = flag;
    }

    public boolean d()
    {
        if (o && !h() && c != null && f != null && j == null && !c.l().isEmpty())
        {
            j = new c(new e(b, c, g, true));
            ((View)f).post(j);
            super.a(null);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean e()
    {
        if (j != null && f != null)
        {
            ((View)f).removeCallbacks(j);
            j = null;
            return true;
        }
        e e1 = h;
        if (e1 != null)
        {
            e1.d();
            return true;
        } else
        {
            return false;
        }
    }

    public boolean f()
    {
        return e() | g();
    }

    public boolean g()
    {
        if (i != null)
        {
            i.d();
            return true;
        } else
        {
            return false;
        }
    }

    public boolean h()
    {
        return h != null && h.f();
    }

    public boolean i()
    {
        return j != null || h();
    }

    // Unreferenced inner class android/support/v7/widget/d$d$1

/* anonymous class */
    class d._cls1 extends ah
    {

        final android.support.v7.widget.d a;
        final d b;

        public s a()
        {
            if (b.a.h == null)
            {
                return null;
            } else
            {
                return b.a.h.b();
            }
        }

        public boolean b()
        {
            b.a.d();
            return true;
        }

        public boolean c()
        {
            if (b.a.j != null)
            {
                return false;
            } else
            {
                b.a.e();
                return true;
            }
        }

            
            {
                b = d1;
                a = d2;
                super(view);
            }
    }

}
