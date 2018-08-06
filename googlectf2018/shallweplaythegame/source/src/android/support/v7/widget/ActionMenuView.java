// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.view.menu.ActionMenuItemView;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.p;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v7.widget:
//            ai, d, bc

public class ActionMenuView extends ai
    implements android.support.v7.view.menu.h.b, p
{
    public static interface a
    {

        public abstract boolean c();

        public abstract boolean d();
    }

    private static class b
        implements android.support.v7.view.menu.o.a
    {

        public void a(h h1, boolean flag)
        {
        }

        public boolean a(h h1)
        {
            return false;
        }

        b()
        {
        }
    }

    public static class c extends ai.a
    {

        public boolean a;
        public int b;
        public int c;
        public boolean d;
        public boolean e;
        boolean f;

        public c(int i1, int j1)
        {
            super(i1, j1);
            a = false;
        }

        public c(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public c(c c1)
        {
            super(c1);
            a = c1.a;
        }

        public c(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }
    }

    private class d
        implements android.support.v7.view.menu.h.a
    {

        final ActionMenuView a;

        public void a(h h1)
        {
            if (a.a != null)
            {
                a.a.a(h1);
            }
        }

        public boolean a(h h1, MenuItem menuitem)
        {
            return a.b != null && a.b.a(menuitem);
        }

        d()
        {
            a = ActionMenuView.this;
            super();
        }
    }

    public static interface e
    {

        public abstract boolean a(MenuItem menuitem);
    }


    android.support.v7.view.menu.h.a a;
    e b;
    private h c;
    private Context d;
    private int e;
    private boolean f;
    private android.support.v7.widget.d g;
    private android.support.v7.view.menu.o.a h;
    private boolean i;
    private int j;
    private int k;
    private int l;

    public ActionMenuView(Context context)
    {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setBaselineAligned(false);
        float f1 = context.getResources().getDisplayMetrics().density;
        k = (int)(56F * f1);
        l = (int)(f1 * 4F);
        d = context;
        e = 0;
    }

    static int a(View view, int i1, int j1, int k1, int l1)
    {
        boolean flag1 = false;
        c c1 = (c)view.getLayoutParams();
        int i2 = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(k1) - l1, android.view.View.MeasureSpec.getMode(k1));
        ActionMenuItemView actionmenuitemview;
        boolean flag;
        if (view instanceof ActionMenuItemView)
        {
            actionmenuitemview = (ActionMenuItemView)view;
        } else
        {
            actionmenuitemview = null;
        }
        if (actionmenuitemview != null && actionmenuitemview.b())
        {
            l1 = 1;
        } else
        {
            l1 = 0;
        }
        if (j1 > 0 && (l1 == 0 || j1 >= 2))
        {
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i1 * j1, 0x80000000), i2);
            int j2 = view.getMeasuredWidth();
            k1 = j2 / i1;
            j1 = k1;
            if (j2 % i1 != 0)
            {
                j1 = k1 + 1;
            }
            k1 = j1;
            if (l1 != 0)
            {
                k1 = j1;
                if (j1 < 2)
                {
                    k1 = 2;
                }
            }
        } else
        {
            k1 = 0;
        }
        flag = flag1;
        if (!c1.a)
        {
            flag = flag1;
            if (l1 != 0)
            {
                flag = true;
            }
        }
        c1.d = flag;
        c1.b = k1;
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(k1 * i1, 0x40000000), i2);
        return k1;
    }

    private void c(int i1, int j1)
    {
        int k4 = android.view.View.MeasureSpec.getMode(j1);
        i1 = android.view.View.MeasureSpec.getSize(i1);
        int j4 = android.view.View.MeasureSpec.getSize(j1);
        int k1 = getPaddingLeft();
        int l1 = getPaddingRight();
        int l3 = getPaddingTop() + getPaddingBottom();
        int l4 = getChildMeasureSpec(j1, l3, -2);
        int i5 = i1 - (k1 + l1);
        i1 = i5 / k;
        j1 = k;
        if (i1 == 0)
        {
            setMeasuredDimension(i5, 0);
            return;
        }
        int j5 = k + (i5 % j1) / i1;
        k1 = 0;
        int l2 = 0;
        int k2 = 0;
        int i3 = 0;
        int j2 = 0;
        long l5 = 0L;
        int k5 = getChildCount();
        int j3 = 0;
        while (j3 < k5) 
        {
            Object obj = getChildAt(j3);
            int i2;
            if (((View) (obj)).getVisibility() == 8)
            {
                j1 = l2;
                i2 = i1;
                i1 = i3;
            } else
            {
                boolean flag = obj instanceof ActionMenuItemView;
                i3++;
                if (flag)
                {
                    ((View) (obj)).setPadding(l, 0, l, 0);
                }
                c c1 = (c)((View) (obj)).getLayoutParams();
                c1.f = false;
                c1.c = 0;
                c1.b = 0;
                c1.d = false;
                c1.leftMargin = 0;
                c1.rightMargin = 0;
                int k3;
                int i4;
                if (flag && ((ActionMenuItemView)obj).b())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                c1.e = flag;
                if (c1.a)
                {
                    j1 = 1;
                } else
                {
                    j1 = i1;
                }
                i4 = a(((View) (obj)), j5, j1, l4, l3);
                l2 = Math.max(l2, i4);
                float f1;
                float f2;
                float f3;
                long l7;
                if (c1.d)
                {
                    j1 = k2 + 1;
                } else
                {
                    j1 = k2;
                }
                if (c1.a)
                {
                    i2 = 1;
                } else
                {
                    i2 = j2;
                }
                k3 = i1 - i4;
                k1 = Math.max(k1, ((View) (obj)).getMeasuredHeight());
                if (i4 == 1)
                {
                    long l6 = 1 << j3;
                    k2 = j1;
                    l5 = l6 | l5;
                    j1 = l2;
                    i1 = i3;
                    j2 = i2;
                    i2 = k3;
                } else
                {
                    i1 = i3;
                    j2 = l2;
                    l2 = k3;
                    k2 = j1;
                    j1 = j2;
                    j2 = i2;
                    i2 = l2;
                }
            }
            j3++;
            i3 = i1;
            i1 = i2;
            l2 = j1;
        }
        if (j2 != 0 && i3 == 2)
        {
            k3 = 1;
        } else
        {
            k3 = 0;
        }
        i2 = 0;
        j3 = i1;
        if (k2 <= 0 || j3 <= 0) goto _L2; else goto _L1
_L1:
        i1 = 0x7fffffff;
        l7 = 0L;
        j1 = 0;
        l3 = 0;
        while (l3 < k5) 
        {
            obj = (c)getChildAt(l3).getLayoutParams();
            if (!((c) (obj)).d)
            {
                i4 = j1;
                j1 = i1;
                i1 = i4;
            } else
            if (((c) (obj)).b < i1)
            {
                j1 = ((c) (obj)).b;
                l7 = 1 << l3;
                i1 = 1;
            } else
            if (((c) (obj)).b == i1)
            {
                l7 |= 1 << l3;
                i4 = j1 + 1;
                j1 = i1;
                i1 = i4;
            } else
            {
                i4 = i1;
                i1 = j1;
                j1 = i4;
            }
            i4 = l3 + 1;
            l3 = j1;
            j1 = i1;
            i1 = l3;
            l3 = i4;
        }
        l5 |= l7;
        if (j1 <= j3) goto _L3; else goto _L2
_L2:
        if (j2 == 0 && i3 == 1)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (j3 <= 0 || l5 == 0L || j3 >= i3 - 1 && i1 == 0 && l2 <= 1) goto _L5; else goto _L4
_L4:
        f3 = Long.bitCount(l5);
        f2 = f3;
        if (i1 != 0)
        {
            break MISSING_BLOCK_LABEL_1175;
        }
        f1 = f3;
        if ((1L & l5) != 0L)
        {
            f1 = f3;
            if (!((c)getChildAt(0).getLayoutParams()).e)
            {
                f1 = f3 - 0.5F;
            }
        }
        f2 = f1;
        if (((long)(1 << k5 - 1) & l5) == 0L)
        {
            break MISSING_BLOCK_LABEL_1175;
        }
        f2 = f1;
        if (((c)getChildAt(k5 - 1).getLayoutParams()).e)
        {
            break MISSING_BLOCK_LABEL_1175;
        }
        f1 -= 0.5F;
_L8:
        if (f1 > 0.0F)
        {
            j1 = (int)((float)(j3 * j5) / f1);
        } else
        {
            j1 = 0;
        }
        j2 = 0;
        i1 = i2;
        i2 = j2;
        do
        {
            j2 = i1;
            if (i2 >= k5)
            {
                break;
            }
            if (((long)(1 << i2) & l5) != 0L)
            {
                obj = getChildAt(i2);
                c1 = (c)((View) (obj)).getLayoutParams();
                if (obj instanceof ActionMenuItemView)
                {
                    c1.c = j1;
                    c1.f = true;
                    if (i2 == 0 && !c1.e)
                    {
                        c1.leftMargin = -j1 / 2;
                    }
                    i1 = 1;
                } else
                if (c1.a)
                {
                    c1.c = j1;
                    c1.f = true;
                    c1.rightMargin = -j1 / 2;
                    i1 = 1;
                } else
                {
                    if (i2 != 0)
                    {
                        c1.leftMargin = j1 / 2;
                    }
                    if (i2 != k5 - 1)
                    {
                        c1.rightMargin = j1 / 2;
                    }
                }
            }
            i2++;
        } while (true);
          goto _L6
_L3:
        i2 = 0;
        j1 = j3;
        while (i2 < k5) 
        {
            obj = getChildAt(i2);
            c1 = (c)((View) (obj)).getLayoutParams();
            if (((long)(1 << i2) & l7) == 0L)
            {
                if (c1.b == i1 + 1)
                {
                    l5 |= 1 << i2;
                }
            } else
            {
                if (k3 != 0 && c1.e && j1 == 1)
                {
                    ((View) (obj)).setPadding(l + j5, 0, l, 0);
                }
                c1.b = c1.b + 1;
                c1.f = true;
                j1--;
            }
            i2++;
        }
        i2 = 1;
        j3 = j1;
        break MISSING_BLOCK_LABEL_427;
_L5:
        j2 = i2;
_L6:
        if (j2 != 0)
        {
            i1 = 0;
            while (i1 < k5) 
            {
                obj = getChildAt(i1);
                c1 = (c)((View) (obj)).getLayoutParams();
                if (c1.f)
                {
                    j1 = c1.b;
                    ((View) (obj)).measure(android.view.View.MeasureSpec.makeMeasureSpec(c1.c + j1 * j5, 0x40000000), l4);
                }
                i1++;
            }
        }
        if (k4 == 0x40000000)
        {
            k1 = j4;
        }
        setMeasuredDimension(i5, k1);
        return;
        f1 = f2;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public c a(AttributeSet attributeset)
    {
        return new c(getContext(), attributeset);
    }

    protected c a(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams != null)
        {
            if (layoutparams instanceof c)
            {
                layoutparams = new c((c)layoutparams);
            } else
            {
                layoutparams = new c(layoutparams);
            }
            if (((c) (layoutparams)).h <= 0)
            {
                layoutparams.h = 16;
            }
            return layoutparams;
        } else
        {
            return b();
        }
    }

    public void a(h h1)
    {
        c = h1;
    }

    public void a(android.support.v7.view.menu.o.a a1, android.support.v7.view.menu.h.a a2)
    {
        h = a1;
        a = a2;
    }

    public boolean a()
    {
        return f;
    }

    protected boolean a(int i1)
    {
        boolean flag1 = false;
        if (i1 == 0)
        {
            return false;
        }
        View view = getChildAt(i1 - 1);
        View view1 = getChildAt(i1);
        boolean flag = flag1;
        if (i1 < getChildCount())
        {
            flag = flag1;
            if (view instanceof a)
            {
                flag = false | ((a)view).d();
            }
        }
        if (i1 > 0 && (view1 instanceof a))
        {
            return ((a)view1).c() | flag;
        } else
        {
            return flag;
        }
    }

    public boolean a(j j1)
    {
        return c.a(j1, 0);
    }

    protected c b()
    {
        c c1 = new c(-2, -2);
        c1.h = 16;
        return c1;
    }

    public ai.a b(AttributeSet attributeset)
    {
        return a(attributeset);
    }

    protected ai.a b(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return a(layoutparams);
    }

    public c c()
    {
        c c1 = b();
        c1.a = true;
        return c1;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams != null && (layoutparams instanceof c);
    }

    public h d()
    {
        return c;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        return false;
    }

    public boolean e()
    {
        return g != null && g.d();
    }

    public boolean f()
    {
        return g != null && g.e();
    }

    public boolean g()
    {
        return g != null && g.h();
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return b();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return a(attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return a(layoutparams);
    }

    public Menu getMenu()
    {
        if (c == null)
        {
            Object obj = getContext();
            c = new h(((Context) (obj)));
            c.a(new d());
            g = new android.support.v7.widget.d(((Context) (obj)));
            g.c(true);
            android.support.v7.widget.d d1 = g;
            if (h != null)
            {
                obj = h;
            } else
            {
                obj = new b();
            }
            d1.a(((android.support.v7.view.menu.o.a) (obj)));
            c.a(g, d);
            g.a(this);
        }
        return c;
    }

    public Drawable getOverflowIcon()
    {
        getMenu();
        return g.c();
    }

    public int getPopupTheme()
    {
        return e;
    }

    public int getWindowAnimations()
    {
        return 0;
    }

    public boolean h()
    {
        return g != null && g.i();
    }

    public void i()
    {
        if (g != null)
        {
            g.f();
        }
    }

    protected ai.a j()
    {
        return b();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if (g != null)
        {
            g.b(false);
            if (g.h())
            {
                g.e();
                g.d();
            }
        }
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        i();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        if (i) goto _L2; else goto _L1
_L1:
        super.onLayout(flag, i1, j1, k1, l1);
_L4:
        return;
_L2:
        int l5;
        int i6;
        i6 = getChildCount();
        l5 = (l1 - j1) / 2;
        int j6 = getDividerWidth();
        l1 = 0;
        j1 = 0;
        int l2 = k1 - i1 - getPaddingRight() - getPaddingLeft();
        int i2 = 0;
        flag = bc.a(this);
        int k3 = 0;
        while (k3 < i6) 
        {
            View view = getChildAt(k3);
            int i4;
            int i5;
            if (view.getVisibility() == 8)
            {
                int l3 = i2;
                int l4 = l2;
                l2 = l1;
                i2 = j1;
                l1 = l4;
                j1 = l3;
            } else
            {
                c c1 = (c)view.getLayoutParams();
                if (c1.a)
                {
                    int j4 = view.getMeasuredWidth();
                    i2 = j4;
                    if (a(k3))
                    {
                        i2 = j4 + j6;
                    }
                    int k6 = view.getMeasuredHeight();
                    int j5;
                    int l6;
                    if (flag)
                    {
                        j4 = getPaddingLeft();
                        j4 = c1.leftMargin + j4;
                        j5 = j4 + i2;
                    } else
                    {
                        j5 = getWidth() - getPaddingRight() - c1.rightMargin;
                        j4 = j5 - i2;
                    }
                    l6 = l5 - k6 / 2;
                    view.layout(j4, l6, j5, k6 + l6);
                    j4 = l2 - i2;
                    j5 = 1;
                    i2 = j1;
                    l2 = l1;
                    j1 = j5;
                    l1 = j4;
                } else
                {
                    int k5 = view.getMeasuredWidth() + c1.leftMargin + c1.rightMargin;
                    int k4 = l1 + k5;
                    l1 = k4;
                    if (a(k3))
                    {
                        l1 = k4 + j6;
                    }
                    k4 = l2 - k5;
                    k5 = j1 + 1;
                    l2 = l1;
                    j1 = i2;
                    l1 = k4;
                    i2 = k5;
                }
            }
            i5 = k3 + 1;
            k3 = l2;
            i4 = i2;
            i2 = j1;
            l2 = l1;
            j1 = i4;
            l1 = k3;
            k3 = i5;
        }
        if (i6 == 1 && i2 == 0)
        {
            View view1 = getChildAt(0);
            j1 = view1.getMeasuredWidth();
            l1 = view1.getMeasuredHeight();
            i1 = (k1 - i1) / 2 - j1 / 2;
            k1 = l5 - l1 / 2;
            view1.layout(i1, k1, j1 + i1, l1 + k1);
            return;
        }
        if (i2 != 0)
        {
            i1 = 0;
        } else
        {
            i1 = 1;
        }
        i1 = j1 - i1;
        if (i1 > 0)
        {
            i1 = l2 / i1;
        } else
        {
            i1 = 0;
        }
        k1 = Math.max(0, i1);
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = getWidth() - getPaddingRight();
        j1 = 0;
        while (j1 < i6) 
        {
            View view2 = getChildAt(j1);
            c c2 = (c)view2.getLayoutParams();
            if (view2.getVisibility() != 8 && !c2.a)
            {
                i1 -= c2.rightMargin;
                l1 = view2.getMeasuredWidth();
                int j2 = view2.getMeasuredHeight();
                int i3 = l5 - j2 / 2;
                view2.layout(i1 - l1, i3, i1, j2 + i3);
                i1 -= c2.leftMargin + l1 + k1;
            }
            j1++;
        }
        if (true) goto _L4; else goto _L3
_L3:
        i1 = getPaddingLeft();
        j1 = 0;
        while (j1 < i6) 
        {
            View view3 = getChildAt(j1);
            c c3 = (c)view3.getLayoutParams();
            if (view3.getVisibility() != 8 && !c3.a)
            {
                i1 += c3.leftMargin;
                l1 = view3.getMeasuredWidth();
                int k2 = view3.getMeasuredHeight();
                int j3 = l5 - k2 / 2;
                view3.layout(i1, j3, i1 + l1, k2 + j3);
                i1 = c3.rightMargin + l1 + k1 + i1;
            }
            j1++;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    protected void onMeasure(int i1, int j1)
    {
        boolean flag1 = i;
        int k1;
        int i2;
        boolean flag;
        if (android.view.View.MeasureSpec.getMode(i1) == 0x40000000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = flag;
        if (flag1 != i)
        {
            j = 0;
        }
        k1 = android.view.View.MeasureSpec.getSize(i1);
        if (i && c != null && k1 != j)
        {
            j = k1;
            c.b(true);
        }
        i2 = getChildCount();
        if (i && i2 > 0)
        {
            c(i1, j1);
            return;
        }
        for (int l1 = 0; l1 < i2; l1++)
        {
            c c1 = (c)getChildAt(l1).getLayoutParams();
            c1.rightMargin = 0;
            c1.leftMargin = 0;
        }

        super.onMeasure(i1, j1);
    }

    public void setExpandedActionViewsExclusive(boolean flag)
    {
        g.d(flag);
    }

    public void setOnMenuItemClickListener(e e1)
    {
        b = e1;
    }

    public void setOverflowIcon(Drawable drawable)
    {
        getMenu();
        g.a(drawable);
    }

    public void setOverflowReserved(boolean flag)
    {
        f = flag;
    }

    public void setPopupTheme(int i1)
    {
label0:
        {
            if (e != i1)
            {
                e = i1;
                if (i1 != 0)
                {
                    break label0;
                }
                d = getContext();
            }
            return;
        }
        d = new ContextThemeWrapper(getContext(), i1);
    }

    public void setPresenter(android.support.v7.widget.d d1)
    {
        g = d1;
        g.a(this);
    }
}
