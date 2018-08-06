// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.h.p;
import android.support.v4.h.s;
import android.support.v4.h.t;
import android.support.v4.h.u;
import android.support.v7.view.a;
import android.support.v7.view.b;
import android.support.v7.view.g;
import android.support.v7.view.h;
import android.support.v7.widget.ActionBarContainer;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ActionBarOverlayLayout;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.ad;
import android.support.v7.widget.ap;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.app:
//            a

public class r extends android.support.v7.app.a
    implements android.support.v7.widget.ActionBarOverlayLayout.a
{
    public class a extends b
        implements android.support.v7.view.menu.h.a
    {

        final r a;
        private final Context b;
        private final android.support.v7.view.menu.h c;
        private android.support.v7.view.b.a d;
        private WeakReference e;

        public MenuInflater a()
        {
            return new g(b);
        }

        public void a(int i1)
        {
            b(a.a.getResources().getString(i1));
        }

        public void a(android.support.v7.view.menu.h h1)
        {
            if (d == null)
            {
                return;
            } else
            {
                d();
                a.e.a();
                return;
            }
        }

        public void a(View view)
        {
            a.e.setCustomView(view);
            e = new WeakReference(view);
        }

        public void a(CharSequence charsequence)
        {
            a.e.setSubtitle(charsequence);
        }

        public void a(boolean flag)
        {
            super.a(flag);
            a.e.setTitleOptional(flag);
        }

        public boolean a(android.support.v7.view.menu.h h1, MenuItem menuitem)
        {
            if (d != null)
            {
                return d.a(this, menuitem);
            } else
            {
                return false;
            }
        }

        public Menu b()
        {
            return c;
        }

        public void b(int i1)
        {
            a(a.a.getResources().getString(i1));
        }

        public void b(CharSequence charsequence)
        {
            a.e.setTitle(charsequence);
        }

        public void c()
        {
            if (a.h != this)
            {
                return;
            }
            if (!android.support.v7.app.r.a(a.l, a.m, false))
            {
                a.i = this;
                a.j = d;
            } else
            {
                d.a(this);
            }
            d = null;
            a.j(false);
            a.e.b();
            a.d.a().sendAccessibilityEvent(32);
            a.b.setHideOnContentScrollEnabled(a.o);
            a.h = null;
        }

        public void d()
        {
            if (a.h != this)
            {
                return;
            }
            c.g();
            d.b(this, c);
            c.h();
            return;
            Exception exception;
            exception;
            c.h();
            throw exception;
        }

        public boolean e()
        {
            c.g();
            boolean flag = d.a(this, c);
            c.h();
            return flag;
            Exception exception;
            exception;
            c.h();
            throw exception;
        }

        public CharSequence f()
        {
            return a.e.getTitle();
        }

        public CharSequence g()
        {
            return a.e.getSubtitle();
        }

        public boolean h()
        {
            return a.e.d();
        }

        public View i()
        {
            if (e != null)
            {
                return (View)e.get();
            } else
            {
                return null;
            }
        }

        public a(Context context, android.support.v7.view.b.a a1)
        {
            a = r.this;
            super();
            b = context;
            d = a1;
            c = (new android.support.v7.view.menu.h(context)).a(1);
            c.a(this);
        }
    }


    static final boolean s;
    private static final Interpolator t = new AccelerateInterpolator();
    private static final Interpolator u = new DecelerateInterpolator();
    private boolean A;
    private boolean B;
    private ArrayList C;
    private boolean D;
    private int E;
    private boolean F;
    private boolean G;
    private boolean H;
    Context a;
    ActionBarOverlayLayout b;
    ActionBarContainer c;
    ad d;
    ActionBarContextView e;
    View f;
    ap g;
    a h;
    b i;
    android.support.v7.view.b.a j;
    boolean k;
    boolean l;
    boolean m;
    h n;
    boolean o;
    final s p;
    final s q;
    final u r;
    private Context v;
    private Activity w;
    private Dialog x;
    private ArrayList y;
    private int z;

    public r(Activity activity, boolean flag)
    {
        y = new ArrayList();
        z = -1;
        C = new ArrayList();
        E = 0;
        k = true;
        G = true;
        p = new t() {

            final r a;

            public void b(View view)
            {
                if (a.k && a.f != null)
                {
                    a.f.setTranslationY(0.0F);
                    a.c.setTranslationY(0.0F);
                }
                a.c.setVisibility(8);
                a.c.setTransitioning(false);
                a.n = null;
                a.h();
                if (a.b != null)
                {
                    android.support.v4.h.p.g(a.b);
                }
            }

            
            {
                a = r.this;
                super();
            }
        };
        q = new t() {

            final r a;

            public void b(View view)
            {
                a.n = null;
                a.c.requestLayout();
            }

            
            {
                a = r.this;
                super();
            }
        };
        r = new u() {

            final r a;

            public void a(View view)
            {
                ((View)a.c.getParent()).invalidate();
            }

            
            {
                a = r.this;
                super();
            }
        };
        w = activity;
        activity = activity.getWindow().getDecorView();
        a(activity);
        if (!flag)
        {
            f = activity.findViewById(0x1020002);
        }
    }

    public r(Dialog dialog)
    {
        y = new ArrayList();
        z = -1;
        C = new ArrayList();
        E = 0;
        k = true;
        G = true;
        p = new _cls1();
        q = new _cls2();
        r = new _cls3();
        x = dialog;
        a(dialog.getWindow().getDecorView());
    }

    private void a(View view)
    {
        b = (ActionBarOverlayLayout)view.findViewById(android.support.v7.a.a.f.decor_content_parent);
        if (b != null)
        {
            b.setActionBarVisibilityCallback(this);
        }
        d = b(view.findViewById(android.support.v7.a.a.f.action_bar));
        e = (ActionBarContextView)view.findViewById(android.support.v7.a.a.f.action_context_bar);
        c = (ActionBarContainer)view.findViewById(android.support.v7.a.a.f.action_bar_container);
        if (d == null || e == null || c == null)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getSimpleName()).append(" can only be used ").append("with a compatible window decor layout").toString());
        }
        a = d.b();
        int i1;
        boolean flag;
        if ((d.o() & 4) != 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 != 0)
        {
            A = true;
        }
        view = android.support.v7.view.a.a(a);
        if (view.f() || i1 != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag);
        k(view.d());
        view = a.obtainStyledAttributes(null, android.support.v7.a.a.j.ActionBar, android.support.v7.a.a.a.actionBarStyle, 0);
        if (view.getBoolean(android.support.v7.a.a.j.ActionBar_hideOnContentScroll, false))
        {
            b(true);
        }
        i1 = view.getDimensionPixelSize(android.support.v7.a.a.j.ActionBar_elevation, 0);
        if (i1 != 0)
        {
            a(i1);
        }
        view.recycle();
    }

    static boolean a(boolean flag, boolean flag1, boolean flag2)
    {
        while (flag2 || !flag && !flag1) 
        {
            return true;
        }
        return false;
    }

    private ad b(View view)
    {
        if (view instanceof ad)
        {
            return (ad)view;
        }
        if (view instanceof Toolbar)
        {
            return ((Toolbar)view).getWrapper();
        }
        if ((new StringBuilder()).append("Can't make a decor toolbar out of ").append(view).toString() != null)
        {
            view = view.getClass().getSimpleName();
        } else
        {
            view = "null";
        }
        throw new IllegalStateException(view);
    }

    private void k(boolean flag)
    {
        boolean flag2 = true;
        D = flag;
        Object obj;
        boolean flag1;
        if (!D)
        {
            d.a(null);
            c.setTabContainer(g);
        } else
        {
            c.setTabContainer(null);
            d.a(g);
        }
        if (i() == 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (g != null)
        {
            if (flag1)
            {
                g.setVisibility(0);
                if (b != null)
                {
                    android.support.v4.h.p.g(b);
                }
            } else
            {
                g.setVisibility(8);
            }
        }
        obj = d;
        if (!D && flag1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((ad) (obj)).a(flag);
        obj = b;
        if (!D && flag1)
        {
            flag = flag2;
        } else
        {
            flag = false;
        }
        ((ActionBarOverlayLayout) (obj)).setHasNonEmbeddedTabs(flag);
    }

    private void l(boolean flag)
    {
        if (a(l, m, F))
        {
            if (!G)
            {
                G = true;
                h(flag);
            }
        } else
        if (G)
        {
            G = false;
            i(flag);
            return;
        }
    }

    private void n()
    {
        if (!F)
        {
            F = true;
            if (b != null)
            {
                b.setShowingForActionMode(true);
            }
            l(false);
        }
    }

    private void o()
    {
        if (F)
        {
            F = false;
            if (b != null)
            {
                b.setShowingForActionMode(false);
            }
            l(false);
        }
    }

    private boolean p()
    {
        return android.support.v4.h.p.l(c);
    }

    public int a()
    {
        return d.o();
    }

    public b a(android.support.v7.view.b.a a1)
    {
        if (h != null)
        {
            h.c();
        }
        b.setHideOnContentScrollEnabled(false);
        e.c();
        a1 = new a(e.getContext(), a1);
        if (a1.e())
        {
            h = a1;
            a1.d();
            e.a(a1);
            j(true);
            e.sendAccessibilityEvent(32);
            return a1;
        } else
        {
            return null;
        }
    }

    public void a(float f1)
    {
        android.support.v4.h.p.a(c, f1);
    }

    public void a(int i1)
    {
        E = i1;
    }

    public void a(int i1, int j1)
    {
        int k1 = d.o();
        if ((j1 & 4) != 0)
        {
            A = true;
        }
        d.c(k1 & ~j1 | i1 & j1);
    }

    public void a(Configuration configuration)
    {
        k(android.support.v7.view.a.a(a).d());
    }

    public void a(CharSequence charsequence)
    {
        d.a(charsequence);
    }

    public void a(boolean flag)
    {
        d.b(flag);
    }

    public boolean a(int i1, KeyEvent keyevent)
    {
        Menu menu;
        if (h != null)
        {
            if ((menu = h.b()) != null)
            {
                int j1;
                boolean flag;
                if (keyevent != null)
                {
                    j1 = keyevent.getDeviceId();
                } else
                {
                    j1 = -1;
                }
                if (KeyCharacterMap.load(j1).getKeyboardType() != 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                menu.setQwertyMode(flag);
                return menu.performShortcut(i1, keyevent, 0);
            }
        }
        return false;
    }

    public Context b()
    {
        if (v == null)
        {
            TypedValue typedvalue = new TypedValue();
            a.getTheme().resolveAttribute(android.support.v7.a.a.a.actionBarWidgetTheme, typedvalue, true);
            int i1 = typedvalue.resourceId;
            if (i1 != 0)
            {
                v = new ContextThemeWrapper(a, i1);
            } else
            {
                v = a;
            }
        }
        return v;
    }

    public void b(boolean flag)
    {
        if (flag && !b.a())
        {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        } else
        {
            o = flag;
            b.setHideOnContentScrollEnabled(flag);
            return;
        }
    }

    public void c(boolean flag)
    {
        if (!A)
        {
            f(flag);
        }
    }

    public void d(boolean flag)
    {
        H = flag;
        if (!flag && n != null)
        {
            n.c();
        }
    }

    public void e(boolean flag)
    {
        if (flag != B)
        {
            B = flag;
            int j1 = C.size();
            int i1 = 0;
            while (i1 < j1) 
            {
                ((a.b)C.get(i1)).a(flag);
                i1++;
            }
        }
    }

    public void f(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        a(byte0, 4);
    }

    public boolean f()
    {
        if (d != null && d.c())
        {
            d.d();
            return true;
        } else
        {
            return false;
        }
    }

    public void g(boolean flag)
    {
        k = flag;
    }

    void h()
    {
        if (j != null)
        {
            j.a(i);
            i = null;
            j = null;
        }
    }

    public void h(boolean flag)
    {
        if (n != null)
        {
            n.c();
        }
        c.setVisibility(0);
        if (E == 0 && (H || flag))
        {
            c.setTranslationY(0.0F);
            float f2 = -c.getHeight();
            float f1 = f2;
            if (flag)
            {
                int ai[] = new int[2];
                int[] _tmp = ai;
                ai[0] = 0;
                ai[1] = 0;
                c.getLocationInWindow(ai);
                f1 = f2 - (float)ai[1];
            }
            c.setTranslationY(f1);
            h h1 = new h();
            android.support.v4.h.r r1 = android.support.v4.h.p.d(c).b(0.0F);
            r1.a(r);
            h1.a(r1);
            if (k && f != null)
            {
                f.setTranslationY(f1);
                h1.a(android.support.v4.h.p.d(f).b(0.0F));
            }
            h1.a(u);
            h1.a(250L);
            h1.a(q);
            n = h1;
            h1.a();
        } else
        {
            c.setAlpha(1.0F);
            c.setTranslationY(0.0F);
            if (k && f != null)
            {
                f.setTranslationY(0.0F);
            }
            q.b(null);
        }
        if (b != null)
        {
            android.support.v4.h.p.g(b);
        }
    }

    public int i()
    {
        return d.p();
    }

    public void i(boolean flag)
    {
        if (n != null)
        {
            n.c();
        }
        if (E == 0 && (H || flag))
        {
            c.setAlpha(1.0F);
            c.setTransitioning(true);
            h h1 = new h();
            float f2 = -c.getHeight();
            float f1 = f2;
            if (flag)
            {
                int ai[] = new int[2];
                int[] _tmp = ai;
                ai[0] = 0;
                ai[1] = 0;
                c.getLocationInWindow(ai);
                f1 = f2 - (float)ai[1];
            }
            android.support.v4.h.r r1 = android.support.v4.h.p.d(c).b(f1);
            r1.a(r);
            h1.a(r1);
            if (k && f != null)
            {
                h1.a(android.support.v4.h.p.d(f).b(f1));
            }
            h1.a(t);
            h1.a(250L);
            h1.a(p);
            n = h1;
            h1.a();
            return;
        } else
        {
            p.b(null);
            return;
        }
    }

    public void j()
    {
        if (m)
        {
            m = false;
            l(true);
        }
    }

    public void j(boolean flag)
    {
        if (flag)
        {
            n();
        } else
        {
            o();
        }
        if (p())
        {
            android.support.v4.h.r r1;
            android.support.v4.h.r r2;
            h h1;
            if (flag)
            {
                r1 = d.a(4, 100L);
                r2 = e.a(0, 200L);
            } else
            {
                r2 = d.a(0, 200L);
                r1 = e.a(8, 100L);
            }
            h1 = new h();
            h1.a(r1, r2);
            h1.a();
            return;
        }
        if (flag)
        {
            d.d(4);
            e.setVisibility(0);
            return;
        } else
        {
            d.d(0);
            e.setVisibility(8);
            return;
        }
    }

    public void k()
    {
        if (!m)
        {
            m = true;
            l(true);
        }
    }

    public void l()
    {
        if (n != null)
        {
            n.c();
            n = null;
        }
    }

    public void m()
    {
    }

    static 
    {
        boolean flag;
        if (!android/support/v7/app/r.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        s = flag;
    }
}
