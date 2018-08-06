// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.h.k;
import android.support.v4.h.m;
import android.support.v4.h.p;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.OverScroller;

// Referenced classes of package android.support.v7.widget:
//            ac, ad, Toolbar, ActionBarContainer, 
//            ContentFrameLayout, bc

public class ActionBarOverlayLayout extends ViewGroup
    implements k, ac
{
    public static interface a
    {

        public abstract void a(int i1);

        public abstract void g(boolean flag);

        public abstract void j();

        public abstract void k();

        public abstract void l();

        public abstract void m();
    }

    public static class b extends android.view.ViewGroup.MarginLayoutParams
    {

        public b(int i1, int j1)
        {
            super(i1, j1);
        }

        public b(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public b(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }
    }


    static final int e[];
    private final Runnable A;
    private final Runnable B;
    private final m C;
    ActionBarContainer a;
    boolean b;
    ViewPropertyAnimator c;
    final AnimatorListenerAdapter d;
    private int f;
    private int g;
    private ContentFrameLayout h;
    private ad i;
    private Drawable j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private final Rect v;
    private final Rect w;
    private a x;
    private final int y;
    private OverScroller z;

    public ActionBarOverlayLayout(Context context)
    {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        g = 0;
        q = new Rect();
        r = new Rect();
        s = new Rect();
        t = new Rect();
        u = new Rect();
        v = new Rect();
        w = new Rect();
        y = 600;
        d = new AnimatorListenerAdapter() {

            final ActionBarOverlayLayout a;

            public void onAnimationCancel(Animator animator)
            {
                a.c = null;
                a.b = false;
            }

            public void onAnimationEnd(Animator animator)
            {
                a.c = null;
                a.b = false;
            }

            
            {
                a = ActionBarOverlayLayout.this;
                super();
            }
        };
        A = new Runnable() {

            final ActionBarOverlayLayout a;

            public void run()
            {
                a.d();
                a.c = a.a.animate().translationY(0.0F).setListener(a.d);
            }

            
            {
                a = ActionBarOverlayLayout.this;
                super();
            }
        };
        B = new Runnable() {

            final ActionBarOverlayLayout a;

            public void run()
            {
                a.d();
                a.c = a.a.animate().translationY(-a.a.getHeight()).setListener(a.d);
            }

            
            {
                a = ActionBarOverlayLayout.this;
                super();
            }
        };
        a(context);
        C = new m(this);
    }

    private ad a(View view)
    {
        if (view instanceof ad)
        {
            return (ad)view;
        }
        if (view instanceof Toolbar)
        {
            return ((Toolbar)view).getWrapper();
        } else
        {
            throw new IllegalStateException((new StringBuilder()).append("Can't make a decor toolbar out of ").append(view.getClass().getSimpleName()).toString());
        }
    }

    private void a(Context context)
    {
        boolean flag1 = true;
        TypedArray typedarray = getContext().getTheme().obtainStyledAttributes(e);
        f = typedarray.getDimensionPixelSize(0, 0);
        j = typedarray.getDrawable(1);
        boolean flag;
        if (j == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWillNotDraw(flag);
        typedarray.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        k = flag;
        z = new OverScroller(context);
    }

    private boolean a(float f1, float f2)
    {
        boolean flag = false;
        z.fling(0, 0, 0, (int)f2, 0, 0, 0x80000000, 0x7fffffff);
        if (z.getFinalY() > a.getHeight())
        {
            flag = true;
        }
        return flag;
    }

    private boolean a(View view, Rect rect, boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        boolean flag5 = false;
        view = (b)view.getLayoutParams();
        boolean flag4 = flag5;
        if (flag)
        {
            flag4 = flag5;
            if (((b) (view)).leftMargin != rect.left)
            {
                view.leftMargin = rect.left;
                flag4 = true;
            }
        }
        flag = flag4;
        if (flag1)
        {
            flag = flag4;
            if (((b) (view)).topMargin != rect.top)
            {
                view.topMargin = rect.top;
                flag = true;
            }
        }
        flag1 = flag;
        if (flag3)
        {
            flag1 = flag;
            if (((b) (view)).rightMargin != rect.right)
            {
                view.rightMargin = rect.right;
                flag1 = true;
            }
        }
        if (flag2 && ((b) (view)).bottomMargin != rect.bottom)
        {
            view.bottomMargin = rect.bottom;
            return true;
        } else
        {
            return flag1;
        }
    }

    private void l()
    {
        d();
        postDelayed(A, 600L);
    }

    private void m()
    {
        d();
        postDelayed(B, 600L);
    }

    private void n()
    {
        d();
        A.run();
    }

    private void o()
    {
        d();
        B.run();
    }

    public b a(AttributeSet attributeset)
    {
        return new b(getContext(), attributeset);
    }

    public void a(int i1)
    {
        c();
        switch (i1)
        {
        default:
            return;

        case 2: // '\002'
            i.f();
            return;

        case 5: // '\005'
            i.g();
            return;

        case 109: // 'm'
            setOverlayMode(true);
            break;
        }
    }

    public void a(Menu menu, android.support.v7.view.menu.o.a a1)
    {
        c();
        i.a(menu, a1);
    }

    public boolean a()
    {
        return l;
    }

    protected b b()
    {
        return new b(-1, -1);
    }

    void c()
    {
        if (h == null)
        {
            h = (ContentFrameLayout)findViewById(android.support.v7.a.a.f.action_bar_activity_content);
            a = (ActionBarContainer)findViewById(android.support.v7.a.a.f.action_bar_container);
            i = a(findViewById(android.support.v7.a.a.f.action_bar));
        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof b;
    }

    void d()
    {
        removeCallbacks(A);
        removeCallbacks(B);
        if (c != null)
        {
            c.cancel();
        }
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        if (j != null && !k)
        {
            int i1;
            if (a.getVisibility() == 0)
            {
                i1 = (int)((float)a.getBottom() + a.getTranslationY() + 0.5F);
            } else
            {
                i1 = 0;
            }
            j.setBounds(0, i1, getWidth(), j.getIntrinsicHeight() + i1);
            j.draw(canvas);
        }
    }

    public boolean e()
    {
        c();
        return i.h();
    }

    public boolean f()
    {
        c();
        return i.i();
    }

    protected boolean fitSystemWindows(Rect rect)
    {
        c();
        if ((android.support.v4.h.p.f(this) & 0x100) == 0);
        boolean flag = a(a, rect, true, true, false, true);
        t.set(rect);
        bc.a(this, t, q);
        if (!u.equals(t))
        {
            u.set(t);
            flag = true;
        }
        if (!r.equals(q))
        {
            r.set(q);
            flag = true;
        }
        if (flag)
        {
            requestLayout();
        }
        return true;
    }

    public boolean g()
    {
        c();
        return i.j();
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
        return new b(layoutparams);
    }

    public int getActionBarHideOffset()
    {
        if (a != null)
        {
            return -(int)a.getTranslationY();
        } else
        {
            return 0;
        }
    }

    public int getNestedScrollAxes()
    {
        return C.a();
    }

    public CharSequence getTitle()
    {
        c();
        return i.e();
    }

    public boolean h()
    {
        c();
        return i.k();
    }

    public boolean i()
    {
        c();
        return i.l();
    }

    public void j()
    {
        c();
        i.m();
    }

    public void k()
    {
        c();
        i.n();
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        a(getContext());
        android.support.v4.h.p.g(this);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        d();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        j1 = getChildCount();
        k1 = getPaddingLeft();
        getPaddingRight();
        l1 = getPaddingTop();
        getPaddingBottom();
        for (i1 = 0; i1 < j1; i1++)
        {
            View view = getChildAt(i1);
            if (view.getVisibility() != 8)
            {
                b b1 = (b)view.getLayoutParams();
                int i2 = view.getMeasuredWidth();
                int j2 = view.getMeasuredHeight();
                int k2 = b1.leftMargin + k1;
                int l2 = b1.topMargin + l1;
                view.layout(k2, l2, i2 + k2, j2 + l2);
            }
        }

    }

    protected void onMeasure(int i1, int j1)
    {
        c();
        measureChildWithMargins(a, i1, 0, j1, 0);
        Object obj = (b)a.getLayoutParams();
        int i3 = Math.max(0, a.getMeasuredWidth() + ((b) (obj)).leftMargin + ((b) (obj)).rightMargin);
        int k1 = a.getMeasuredHeight();
        int l1 = ((b) (obj)).topMargin;
        int l2 = Math.max(0, ((b) (obj)).bottomMargin + (k1 + l1));
        int k2 = View.combineMeasuredStates(0, a.getMeasuredState());
        int j2;
        if ((android.support.v4.h.p.f(this) & 0x100) != 0)
        {
            l1 = 1;
        } else
        {
            l1 = 0;
        }
        if (l1 != 0)
        {
            int i2 = f;
            k1 = i2;
            if (m)
            {
                k1 = i2;
                if (a.getTabContainer() != null)
                {
                    k1 = i2 + f;
                }
            }
        } else
        if (a.getVisibility() != 8)
        {
            k1 = a.getMeasuredHeight();
        } else
        {
            k1 = 0;
        }
        s.set(q);
        v.set(t);
        if (!l && l1 == 0)
        {
            obj = s;
            obj.top = k1 + ((Rect) (obj)).top;
            obj = s;
            obj.bottom = ((Rect) (obj)).bottom + 0;
        } else
        {
            Rect rect = v;
            rect.top = k1 + rect.top;
            rect = v;
            rect.bottom = rect.bottom + 0;
        }
        a(h, s, true, true, true, true);
        if (!w.equals(v))
        {
            w.set(v);
            h.a(v);
        }
        measureChildWithMargins(h, i1, 0, j1, 0);
        obj = (b)h.getLayoutParams();
        k1 = Math.max(i3, h.getMeasuredWidth() + ((b) (obj)).leftMargin + ((b) (obj)).rightMargin);
        l1 = h.getMeasuredHeight();
        j2 = ((b) (obj)).topMargin;
        l1 = Math.max(l2, ((b) (obj)).bottomMargin + (l1 + j2));
        j2 = View.combineMeasuredStates(k2, h.getMeasuredState());
        k2 = getPaddingLeft();
        l2 = getPaddingRight();
        l1 = Math.max(l1 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(k1 + (k2 + l2), getSuggestedMinimumWidth()), i1, j2), View.resolveSizeAndState(l1, j1, j2 << 16));
    }

    public boolean onNestedFling(View view, float f1, float f2, boolean flag)
    {
        if (!n || !flag)
        {
            return false;
        }
        if (a(f1, f2))
        {
            o();
        } else
        {
            n();
        }
        b = true;
        return true;
    }

    public boolean onNestedPreFling(View view, float f1, float f2)
    {
        return false;
    }

    public void onNestedPreScroll(View view, int i1, int j1, int ai[])
    {
    }

    public void onNestedScroll(View view, int i1, int j1, int k1, int l1)
    {
        o = o + j1;
        setActionBarHideOffset(o);
    }

    public void onNestedScrollAccepted(View view, View view1, int i1)
    {
        C.a(view, view1, i1);
        o = getActionBarHideOffset();
        d();
        if (x != null)
        {
            x.l();
        }
    }

    public boolean onStartNestedScroll(View view, View view1, int i1)
    {
        if ((i1 & 2) == 0 || a.getVisibility() != 0)
        {
            return false;
        } else
        {
            return n;
        }
    }

    public void onStopNestedScroll(View view)
    {
        if (n && !b)
        {
            if (o <= a.getHeight())
            {
                l();
            } else
            {
                m();
            }
        }
        if (x != null)
        {
            x.m();
        }
    }

    public void onWindowSystemUiVisibilityChanged(int i1)
    {
        boolean flag2 = true;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            super.onWindowSystemUiVisibilityChanged(i1);
        }
        c();
        int j1 = p;
        p = i1;
        boolean flag;
        boolean flag1;
        if ((i1 & 4) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ((i1 & 0x100) != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (x != null)
        {
            a a1 = x;
            if (flag1)
            {
                flag2 = false;
            }
            a1.g(flag2);
            if (flag || !flag1)
            {
                x.j();
            } else
            {
                x.k();
            }
        }
        if (((j1 ^ i1) & 0x100) != 0 && x != null)
        {
            android.support.v4.h.p.g(this);
        }
    }

    protected void onWindowVisibilityChanged(int i1)
    {
        super.onWindowVisibilityChanged(i1);
        g = i1;
        if (x != null)
        {
            x.a(i1);
        }
    }

    public void setActionBarHideOffset(int i1)
    {
        d();
        i1 = Math.max(0, Math.min(i1, a.getHeight()));
        a.setTranslationY(-i1);
    }

    public void setActionBarVisibilityCallback(a a1)
    {
        x = a1;
        if (getWindowToken() != null)
        {
            x.a(g);
            if (p != 0)
            {
                onWindowSystemUiVisibilityChanged(p);
                android.support.v4.h.p.g(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean flag)
    {
        m = flag;
    }

    public void setHideOnContentScrollEnabled(boolean flag)
    {
        if (flag != n)
        {
            n = flag;
            if (!flag)
            {
                d();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i1)
    {
        c();
        i.a(i1);
    }

    public void setIcon(Drawable drawable)
    {
        c();
        i.a(drawable);
    }

    public void setLogo(int i1)
    {
        c();
        i.b(i1);
    }

    public void setOverlayMode(boolean flag)
    {
        l = flag;
        if (flag && getContext().getApplicationInfo().targetSdkVersion < 19)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = flag;
    }

    public void setShowingForActionMode(boolean flag)
    {
    }

    public void setUiOptions(int i1)
    {
    }

    public void setWindowCallback(android.view.Window.Callback callback)
    {
        c();
        i.a(callback);
    }

    public void setWindowTitle(CharSequence charsequence)
    {
        c();
        i.a(charsequence);
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
    }

    static 
    {
        e = (new int[] {
            android.support.v7.a.a.a.actionBarSize, 0x1010059
        });
    }
}
