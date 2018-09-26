// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.h.p;
import android.support.v4.h.r;
import android.support.v4.h.t;
import android.support.v7.b.a.b;
import android.support.v7.view.menu.a;
import android.support.v7.view.menu.h;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package android.support.v7.widget:
//            ad, Toolbar, aw, ap, 
//            d

public class ax
    implements ad
{

    Toolbar a;
    CharSequence b;
    android.view.Window.Callback c;
    boolean d;
    private int e;
    private View f;
    private View g;
    private Drawable h;
    private Drawable i;
    private Drawable j;
    private boolean k;
    private CharSequence l;
    private CharSequence m;
    private d n;
    private int o;
    private int p;
    private Drawable q;

    public ax(Toolbar toolbar, boolean flag)
    {
        this(toolbar, flag, android.support.v7.a.a.h.abc_action_bar_up_description, android.support.v7.a.a.e.abc_ic_ab_back_material);
    }

    public ax(Toolbar toolbar, boolean flag, int i1, int j1)
    {
        o = 0;
        p = 0;
        a = toolbar;
        b = toolbar.getTitle();
        l = toolbar.getSubtitle();
        boolean flag1;
        if (b != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        k = flag1;
        j = toolbar.getNavigationIcon();
        toolbar = android.support.v7.widget.aw.a(toolbar.getContext(), null, android.support.v7.a.a.j.ActionBar, android.support.v7.a.a.a.actionBarStyle, 0);
        q = toolbar.a(android.support.v7.a.a.j.ActionBar_homeAsUpIndicator);
        if (flag)
        {
            Object obj = toolbar.c(android.support.v7.a.a.j.ActionBar_title);
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                b(((CharSequence) (obj)));
            }
            obj = toolbar.c(android.support.v7.a.a.j.ActionBar_subtitle);
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                c(((CharSequence) (obj)));
            }
            obj = toolbar.a(android.support.v7.a.a.j.ActionBar_logo);
            if (obj != null)
            {
                b(((Drawable) (obj)));
            }
            obj = toolbar.a(android.support.v7.a.a.j.ActionBar_icon);
            if (obj != null)
            {
                a(((Drawable) (obj)));
            }
            if (j == null && q != null)
            {
                c(q);
            }
            c(toolbar.a(android.support.v7.a.a.j.ActionBar_displayOptions, 0));
            j1 = toolbar.g(android.support.v7.a.a.j.ActionBar_customNavigationLayout, 0);
            if (j1 != 0)
            {
                a(LayoutInflater.from(a.getContext()).inflate(j1, a, false));
                c(e | 0x10);
            }
            j1 = toolbar.f(android.support.v7.a.a.j.ActionBar_height, 0);
            if (j1 > 0)
            {
                android.view.ViewGroup.LayoutParams layoutparams = a.getLayoutParams();
                layoutparams.height = j1;
                a.setLayoutParams(layoutparams);
            }
            j1 = toolbar.d(android.support.v7.a.a.j.ActionBar_contentInsetStart, -1);
            int k1 = toolbar.d(android.support.v7.a.a.j.ActionBar_contentInsetEnd, -1);
            if (j1 >= 0 || k1 >= 0)
            {
                a.a(Math.max(j1, 0), Math.max(k1, 0));
            }
            j1 = toolbar.g(android.support.v7.a.a.j.ActionBar_titleTextStyle, 0);
            if (j1 != 0)
            {
                a.a(a.getContext(), j1);
            }
            j1 = toolbar.g(android.support.v7.a.a.j.ActionBar_subtitleTextStyle, 0);
            if (j1 != 0)
            {
                a.b(a.getContext(), j1);
            }
            j1 = toolbar.g(android.support.v7.a.a.j.ActionBar_popupTheme, 0);
            if (j1 != 0)
            {
                a.setPopupTheme(j1);
            }
        } else
        {
            e = r();
        }
        toolbar.a();
        e(i1);
        m = a.getNavigationContentDescription();
        a.setNavigationOnClickListener(new android.view.View.OnClickListener() {

            final a a;
            final ax b;

            public void onClick(View view)
            {
                if (b.c != null && b.d)
                {
                    b.c.onMenuItemSelected(0, a);
                }
            }

            
            {
                b = ax.this;
                super();
                a = new a(b.a.getContext(), 0, 0x102002c, 0, 0, b.b);
            }
        });
    }

    private void e(CharSequence charsequence)
    {
        b = charsequence;
        if ((e & 8) != 0)
        {
            a.setTitle(charsequence);
        }
    }

    private int r()
    {
        byte byte0 = 11;
        if (a.getNavigationIcon() != null)
        {
            byte0 = 15;
            q = a.getNavigationIcon();
        }
        return byte0;
    }

    private void s()
    {
        Drawable drawable = null;
        if ((e & 2) != 0)
        {
            if ((e & 1) != 0)
            {
                if (i != null)
                {
                    drawable = i;
                } else
                {
                    drawable = h;
                }
            } else
            {
                drawable = h;
            }
        }
        a.setLogo(drawable);
    }

    private void t()
    {
        if ((e & 4) != 0)
        {
            Toolbar toolbar = a;
            Drawable drawable;
            if (j != null)
            {
                drawable = j;
            } else
            {
                drawable = q;
            }
            toolbar.setNavigationIcon(drawable);
            return;
        } else
        {
            a.setNavigationIcon(null);
            return;
        }
    }

    private void u()
    {
label0:
        {
            if ((e & 4) != 0)
            {
                if (!TextUtils.isEmpty(m))
                {
                    break label0;
                }
                a.setNavigationContentDescription(p);
            }
            return;
        }
        a.setNavigationContentDescription(m);
    }

    public r a(int i1, long l1)
    {
        r r1 = android.support.v4.h.p.d(a);
        float f1;
        if (i1 == 0)
        {
            f1 = 1.0F;
        } else
        {
            f1 = 0.0F;
        }
        return r1.a(f1).a(l1).a(new t(i1) {

            final int a;
            final ax b;
            private boolean c;

            public void a(View view)
            {
                b.a.setVisibility(0);
            }

            public void b(View view)
            {
                if (!c)
                {
                    b.a.setVisibility(a);
                }
            }

            public void c(View view)
            {
                c = true;
            }

            
            {
                b = ax.this;
                a = i1;
                super();
                c = false;
            }
        });
    }

    public ViewGroup a()
    {
        return a;
    }

    public void a(int i1)
    {
        Drawable drawable;
        if (i1 != 0)
        {
            drawable = android.support.v7.b.a.b.b(b(), i1);
        } else
        {
            drawable = null;
        }
        a(drawable);
    }

    public void a(Drawable drawable)
    {
        h = drawable;
        s();
    }

    public void a(android.support.v7.view.menu.o.a a1, android.support.v7.view.menu.h.a a2)
    {
        a.a(a1, a2);
    }

    public void a(ap ap1)
    {
        if (f != null && f.getParent() == a)
        {
            a.removeView(f);
        }
        f = ap1;
        if (ap1 != null && o == 2)
        {
            a.addView(f, 0);
            Toolbar.b b1 = (Toolbar.b)f.getLayoutParams();
            b1.width = -2;
            b1.height = -2;
            b1.a = 0x800053;
            ap1.setAllowCollapse(true);
        }
    }

    public void a(Menu menu, android.support.v7.view.menu.o.a a1)
    {
        if (n == null)
        {
            n = new d(a.getContext());
            n.a(android.support.v7.a.a.f.action_menu_presenter);
        }
        n.a(a1);
        a.a((h)menu, n);
    }

    public void a(View view)
    {
        if (g != null && (e & 0x10) != 0)
        {
            a.removeView(g);
        }
        g = view;
        if (view != null && (e & 0x10) != 0)
        {
            a.addView(g);
        }
    }

    public void a(android.view.Window.Callback callback)
    {
        c = callback;
    }

    public void a(CharSequence charsequence)
    {
        if (!k)
        {
            e(charsequence);
        }
    }

    public void a(boolean flag)
    {
        a.setCollapsible(flag);
    }

    public Context b()
    {
        return a.getContext();
    }

    public void b(int i1)
    {
        Drawable drawable;
        if (i1 != 0)
        {
            drawable = android.support.v7.b.a.b.b(b(), i1);
        } else
        {
            drawable = null;
        }
        b(drawable);
    }

    public void b(Drawable drawable)
    {
        i = drawable;
        s();
    }

    public void b(CharSequence charsequence)
    {
        k = true;
        e(charsequence);
    }

    public void b(boolean flag)
    {
    }

    public void c(int i1)
    {
label0:
        {
            int j1 = e ^ i1;
            e = i1;
            if (j1 != 0)
            {
                if ((j1 & 4) != 0)
                {
                    if ((i1 & 4) != 0)
                    {
                        u();
                    }
                    t();
                }
                if ((j1 & 3) != 0)
                {
                    s();
                }
                if ((j1 & 8) != 0)
                {
                    if ((i1 & 8) != 0)
                    {
                        a.setTitle(b);
                        a.setSubtitle(l);
                    } else
                    {
                        a.setTitle(null);
                        a.setSubtitle(null);
                    }
                }
                if ((j1 & 0x10) != 0 && g != null)
                {
                    if ((i1 & 0x10) == 0)
                    {
                        break label0;
                    }
                    a.addView(g);
                }
            }
            return;
        }
        a.removeView(g);
    }

    public void c(Drawable drawable)
    {
        j = drawable;
        t();
    }

    public void c(CharSequence charsequence)
    {
        l = charsequence;
        if ((e & 8) != 0)
        {
            a.setSubtitle(charsequence);
        }
    }

    public boolean c()
    {
        return a.g();
    }

    public void d()
    {
        a.h();
    }

    public void d(int i1)
    {
        a.setVisibility(i1);
    }

    public void d(CharSequence charsequence)
    {
        m = charsequence;
        u();
    }

    public CharSequence e()
    {
        return a.getTitle();
    }

    public void e(int i1)
    {
        if (i1 != p)
        {
            p = i1;
            if (TextUtils.isEmpty(a.getNavigationContentDescription()))
            {
                f(p);
                return;
            }
        }
    }

    public void f()
    {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public void f(int i1)
    {
        Object obj;
        if (i1 == 0)
        {
            obj = null;
        } else
        {
            obj = b().getString(i1);
        }
        d(((CharSequence) (obj)));
    }

    public void g()
    {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public boolean h()
    {
        return a.a();
    }

    public boolean i()
    {
        return a.b();
    }

    public boolean j()
    {
        return a.c();
    }

    public boolean k()
    {
        return a.d();
    }

    public boolean l()
    {
        return a.e();
    }

    public void m()
    {
        d = true;
    }

    public void n()
    {
        a.f();
    }

    public int o()
    {
        return e;
    }

    public int p()
    {
        return o;
    }

    public Menu q()
    {
        return a.getMenu();
    }
}
