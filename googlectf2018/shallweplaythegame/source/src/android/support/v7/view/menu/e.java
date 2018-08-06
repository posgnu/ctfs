// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.h.d;
import android.support.v4.h.p;
import android.support.v7.widget.al;
import android.support.v7.widget.am;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package android.support.v7.view.menu:
//            m, o, h, g, 
//            u

final class e extends m
    implements o, android.view.View.OnKeyListener, android.widget.PopupWindow.OnDismissListener
{
    private static class a
    {

        public final am a;
        public final h b;
        public final int c;

        public ListView a()
        {
            return a.e();
        }

        public a(am am1, h h1, int i1)
        {
            a = am1;
            b = h1;
            c = i1;
        }
    }


    final Handler a = new Handler();
    final List b = new ArrayList();
    View c;
    boolean d;
    private final Context e;
    private final int f;
    private final int g;
    private final int h;
    private final boolean i;
    private final List j = new LinkedList();
    private final android.view.ViewTreeObserver.OnGlobalLayoutListener k = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

        final e a;

        public void onGlobalLayout()
        {
            if (a.d() && a.b.size() > 0 && !((a)a.b.get(0)).a.g())
            {
                View view1 = a.c;
                if (view1 == null || !view1.isShown())
                {
                    a.c();
                } else
                {
                    Iterator iterator = a.b.iterator();
                    while (iterator.hasNext()) 
                    {
                        ((a)iterator.next()).a.a();
                    }
                }
            }
        }

            
            {
                a = e.this;
                super();
            }
    };
    private final android.view.View.OnAttachStateChangeListener l = new android.view.View.OnAttachStateChangeListener() {

        final e a;

        public void onViewAttachedToWindow(View view1)
        {
        }

        public void onViewDetachedFromWindow(View view1)
        {
            if (e.a(a) != null)
            {
                if (!e.a(a).isAlive())
                {
                    e.a(a, view1.getViewTreeObserver());
                }
                e.a(a).removeGlobalOnLayoutListener(e.b(a));
            }
            view1.removeOnAttachStateChangeListener(this);
        }

            
            {
                a = e.this;
                super();
            }
    };
    private final al m = new al() {

        final e a;

        public void a(h h1, MenuItem menuitem)
        {
            a.a.removeCallbacksAndMessages(h1);
        }

        public void b(h h1, MenuItem menuitem)
        {
            int k1;
            int l1;
            a.a.removeCallbacksAndMessages(null);
            k1 = 0;
            l1 = a.b.size();
_L4:
label0:
            {
                if (k1 >= l1)
                {
                    break MISSING_BLOCK_LABEL_158;
                }
                if (h1 == ((a)a.b.get(k1)).b)
                {
                    break label0;
                } else
                {
                    k1++;
                    continue; /* Loop/switch isn't completed */
                }
            }
_L2:
            if (k1 == -1)
            {
                return;
            }
            k1++;
            a a1;
            long l2;
            if (k1 < a.b.size())
            {
                a1 = (a)a.b.get(k1);
            } else
            {
                a1 = null;
            }
            menuitem = new Runnable(this, a1, menuitem, h1) {

                final a a;
                final MenuItem b;
                final h c;
                final _cls3 d;

                public void run()
                {
                    if (a != null)
                    {
                        d.a.d = true;
                        a.b.a(false);
                        d.a.d = false;
                    }
                    if (b.isEnabled() && b.hasSubMenu())
                    {
                        c.a(b, 4);
                    }
                }

            
            {
                d = _pcls3;
                a = a1;
                b = menuitem;
                c = h1;
                super();
            }
            };
            l2 = SystemClock.uptimeMillis();
            a.a.postAtTime(menuitem, h1, l2 + 200L);
            return;
            k1 = -1;
            if (true) goto _L2; else goto _L1
_L1:
            if (true) goto _L4; else goto _L3
_L3:
        }

            
            {
                a = e.this;
                super();
            }
    };
    private int n;
    private int o;
    private View p;
    private int q;
    private boolean r;
    private boolean s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;
    private o.a x;
    private ViewTreeObserver y;
    private android.widget.PopupWindow.OnDismissListener z;

    public e(Context context, View view, int i1, int j1, boolean flag)
    {
        n = 0;
        o = 0;
        e = context;
        p = view;
        g = i1;
        h = j1;
        i = flag;
        v = false;
        q = i();
        context = context.getResources();
        f = Math.max(context.getDisplayMetrics().widthPixels / 2, context.getDimensionPixelSize(android.support.v7.a.a.d.abc_config_prefDialogWidth));
    }

    private MenuItem a(h h1, h h2)
    {
        int j1 = h1.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            MenuItem menuitem = h1.getItem(i1);
            if (menuitem.hasSubMenu() && h2 == menuitem.getSubMenu())
            {
                return menuitem;
            }
        }

        return null;
    }

    private View a(a a1, h h1)
    {
        ListView listview;
        int i1;
        int j1;
        i1 = 0;
        h1 = a(a1.b, h1);
        if (h1 == null)
        {
            return null;
        }
        listview = a1.a();
        a1 = listview.getAdapter();
        int k1;
        if (a1 instanceof HeaderViewListAdapter)
        {
            a1 = (HeaderViewListAdapter)a1;
            j1 = a1.getHeadersCount();
            a1 = (g)a1.getWrappedAdapter();
        } else
        {
            a1 = (g)a1;
            j1 = 0;
        }
        k1 = a1.getCount();
_L4:
label0:
        {
            if (i1 >= k1)
            {
                break MISSING_BLOCK_LABEL_141;
            }
            if (h1 == a1.a(i1))
            {
                break label0;
            } else
            {
                i1++;
                continue; /* Loop/switch isn't completed */
            }
        }
_L2:
        if (i1 == -1)
        {
            return null;
        }
        i1 = (i1 + j1) - listview.getFirstVisiblePosition();
        if (i1 < 0 || i1 >= listview.getChildCount())
        {
            return null;
        } else
        {
            return listview.getChildAt(i1);
        }
        i1 = -1;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    static ViewTreeObserver a(e e1)
    {
        return e1.y;
    }

    static ViewTreeObserver a(e e1, ViewTreeObserver viewtreeobserver)
    {
        e1.y = viewtreeobserver;
        return viewtreeobserver;
    }

    static android.view.ViewTreeObserver.OnGlobalLayoutListener b(e e1)
    {
        return e1.k;
    }

    private void c(h h1)
    {
        Object obj2 = LayoutInflater.from(e);
        Object obj = new g(h1, ((LayoutInflater) (obj2)), i);
        Object obj1;
        am am1;
        int l1;
        if (!d() && v)
        {
            ((g) (obj)).a(true);
        } else
        if (d())
        {
            ((g) (obj)).a(android.support.v7.view.menu.m.b(h1));
        }
        l1 = a(((android.widget.ListAdapter) (obj)), null, e, f);
        am1 = h();
        am1.a(((android.widget.ListAdapter) (obj)));
        am1.g(l1);
        am1.e(o);
        if (b.size() > 0)
        {
            obj = (a)b.get(b.size() - 1);
            obj1 = a(((a) (obj)), h1);
        } else
        {
            obj1 = null;
            obj = null;
        }
        if (obj1 != null)
        {
            am1.c(false);
            am1.a(null);
            int j1 = d(l1);
            int i1;
            int k1;
            if (j1 == 1)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            q = j1;
            if (android.os.Build.VERSION.SDK_INT >= 26)
            {
                am1.b(((View) (obj1)));
                j1 = 0;
                k1 = 0;
            } else
            {
                int ai[] = new int[2];
                p.getLocationOnScreen(ai);
                int ai1[] = new int[2];
                ((View) (obj1)).getLocationOnScreen(ai1);
                k1 = ai1[0] - ai[0];
                j1 = ai1[1] - ai[1];
            }
            if ((o & 5) == 5)
            {
                if (i1 != 0)
                {
                    i1 = k1 + l1;
                } else
                {
                    i1 = k1 - ((View) (obj1)).getWidth();
                }
            } else
            if (i1 != 0)
            {
                i1 = ((View) (obj1)).getWidth() + k1;
            } else
            {
                i1 = k1 - l1;
            }
            am1.c(i1);
            am1.b(true);
            am1.d(j1);
        } else
        {
            if (r)
            {
                am1.c(t);
            }
            if (s)
            {
                am1.d(u);
            }
            am1.a(g());
        }
        obj1 = new a(am1, h1, q);
        b.add(obj1);
        am1.a();
        obj1 = am1.e();
        ((ListView) (obj1)).setOnKeyListener(this);
        if (obj == null && w && h1.m() != null)
        {
            obj = (FrameLayout)((LayoutInflater) (obj2)).inflate(android.support.v7.a.a.g.abc_popup_menu_header_item_layout, ((android.view.ViewGroup) (obj1)), false);
            obj2 = (TextView)((FrameLayout) (obj)).findViewById(0x1020016);
            ((FrameLayout) (obj)).setEnabled(false);
            ((TextView) (obj2)).setText(h1.m());
            ((ListView) (obj1)).addHeaderView(((View) (obj)), null, false);
            am1.a();
        }
    }

    private int d(int i1)
    {
        ListView listview = ((a)b.get(b.size() - 1)).a();
        int ai[] = new int[2];
        listview.getLocationOnScreen(ai);
        Rect rect = new Rect();
        c.getWindowVisibleDisplayFrame(rect);
        if (q == 1)
        {
            int j1 = ai[0];
            return listview.getWidth() + j1 + i1 <= rect.right ? 1 : 0;
        }
        return ai[0] - i1 >= 0 ? 0 : 1;
    }

    private int d(h h1)
    {
        int i1 = 0;
        for (int j1 = b.size(); i1 < j1; i1++)
        {
            if (h1 == ((a)b.get(i1)).b)
            {
                return i1;
            }
        }

        return -1;
    }

    private am h()
    {
        am am1 = new am(e, null, g, h);
        am1.a(m);
        am1.a(this);
        am1.a(this);
        am1.b(p);
        am1.e(o);
        am1.a(true);
        am1.h(2);
        return am1;
    }

    private int i()
    {
        int i1 = 1;
        if (android.support.v4.h.p.b(p) == 1)
        {
            i1 = 0;
        }
        return i1;
    }

    public void a()
    {
        if (!d())
        {
            for (Iterator iterator = j.iterator(); iterator.hasNext(); c((h)iterator.next())) { }
            j.clear();
            c = p;
            if (c != null)
            {
                boolean flag;
                if (y == null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                y = c.getViewTreeObserver();
                if (flag)
                {
                    y.addOnGlobalLayoutListener(k);
                }
                c.addOnAttachStateChangeListener(l);
                return;
            }
        }
    }

    public void a(int i1)
    {
        if (n != i1)
        {
            n = i1;
            o = android.support.v4.h.d.a(i1, android.support.v4.h.p.b(p));
        }
    }

    public void a(h h1)
    {
        h1.a(this, e);
        if (d())
        {
            c(h1);
            return;
        } else
        {
            j.add(h1);
            return;
        }
    }

    public void a(h h1, boolean flag)
    {
        int i1 = d(h1);
        if (i1 >= 0)
        {
            int j1 = i1 + 1;
            if (j1 < b.size())
            {
                ((a)b.get(j1)).b.a(false);
            }
            a a1 = (a)b.remove(i1);
            a1.b.b(this);
            if (d)
            {
                a1.a.b(null);
                a1.a.b(0);
            }
            a1.a.c();
            i1 = b.size();
            if (i1 > 0)
            {
                q = ((a)b.get(i1 - 1)).c;
            } else
            {
                q = i();
            }
            if (i1 == 0)
            {
                c();
                if (x != null)
                {
                    x.a(h1, true);
                }
                if (y != null)
                {
                    if (y.isAlive())
                    {
                        y.removeGlobalOnLayoutListener(k);
                    }
                    y = null;
                }
                c.removeOnAttachStateChangeListener(l);
                z.onDismiss();
                return;
            }
            if (flag)
            {
                ((a)b.get(0)).b.a(false);
                return;
            }
        }
    }

    public void a(o.a a1)
    {
        x = a1;
    }

    public void a(View view)
    {
        if (p != view)
        {
            p = view;
            o = android.support.v4.h.d.a(n, android.support.v4.h.p.b(p));
        }
    }

    public void a(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        z = ondismisslistener;
    }

    public void a(boolean flag)
    {
        v = flag;
    }

    public boolean a(u u1)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            a a1 = (a)iterator.next();
            if (u1 == a1.b)
            {
                a1.a().requestFocus();
                return true;
            }
        }

        if (u1.hasVisibleItems())
        {
            a(((h) (u1)));
            if (x != null)
            {
                x.a(u1);
            }
            return true;
        } else
        {
            return false;
        }
    }

    public void b(int i1)
    {
        r = true;
        t = i1;
    }

    public void b(boolean flag)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); a(((a)iterator.next()).a().getAdapter()).notifyDataSetChanged()) { }
    }

    public boolean b()
    {
        return false;
    }

    public void c()
    {
        int i1 = b.size();
        if (i1 > 0)
        {
            a aa[] = (a[])b.toArray(new a[i1]);
            for (i1--; i1 >= 0; i1--)
            {
                a a1 = aa[i1];
                if (a1.a.d())
                {
                    a1.a.c();
                }
            }

        }
    }

    public void c(int i1)
    {
        s = true;
        u = i1;
    }

    public void c(boolean flag)
    {
        w = flag;
    }

    public boolean d()
    {
        return b.size() > 0 && ((a)b.get(0)).a.d();
    }

    public ListView e()
    {
        if (b.isEmpty())
        {
            return null;
        } else
        {
            return ((a)b.get(b.size() - 1)).a();
        }
    }

    protected boolean f()
    {
        return false;
    }

    public void onDismiss()
    {
        int i1;
        int j1;
        j1 = b.size();
        i1 = 0;
_L3:
        a a1;
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        a1 = (a)b.get(i1);
        if (a1.a.d()) goto _L2; else goto _L1
_L1:
        if (a1 != null)
        {
            a1.b.a(false);
        }
        return;
_L2:
        i1++;
          goto _L3
        a1 = null;
          goto _L1
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
