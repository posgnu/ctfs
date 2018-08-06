// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.h.d;
import android.support.v4.h.f;
import android.support.v4.h.p;
import android.support.v7.b.a.b;
import android.support.v7.view.g;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.u;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            aw, ao, p, ActionMenuView, 
//            n, d, ax, bc, 
//            aa, ad

public class Toolbar extends ViewGroup
{
    private class a
        implements o
    {

        h a;
        j b;
        final Toolbar c;

        public void a(Context context, h h1)
        {
            if (a != null && b != null)
            {
                a.d(b);
            }
            a = h1;
        }

        public void a(h h1, boolean flag)
        {
        }

        public void a(android.support.v7.view.menu.o.a a1)
        {
        }

        public boolean a(h h1, j j1)
        {
            c.i();
            if (c.a.getParent() != c)
            {
                c.addView(c.a);
            }
            c.b = j1.getActionView();
            b = j1;
            if (c.b.getParent() != c)
            {
                h1 = c.j();
                h1.a = 0x800003 | c.c & 0x70;
                h1.b = 2;
                c.b.setLayoutParams(h1);
                c.addView(c.b);
            }
            c.k();
            c.requestLayout();
            j1.e(true);
            if (c.b instanceof android.support.v7.view.c)
            {
                ((android.support.v7.view.c)c.b).a();
            }
            return true;
        }

        public boolean a(u u1)
        {
            return false;
        }

        public void b(boolean flag)
        {
            boolean flag2 = false;
            if (b == null) goto _L2; else goto _L1
_L1:
            boolean flag1 = flag2;
            if (a == null) goto _L4; else goto _L3
_L3:
            int i1;
            int j1;
            j1 = a.size();
            i1 = 0;
_L9:
            flag1 = flag2;
            if (i1 >= j1) goto _L4; else goto _L5
_L5:
            if (a.getItem(i1) != b) goto _L7; else goto _L6
_L6:
            flag1 = true;
_L4:
            if (!flag1)
            {
                b(a, b);
            }
_L2:
            return;
_L7:
            i1++;
            if (true) goto _L9; else goto _L8
_L8:
        }

        public boolean b()
        {
            return false;
        }

        public boolean b(h h1, j j1)
        {
            if (c.b instanceof android.support.v7.view.c)
            {
                ((android.support.v7.view.c)c.b).b();
            }
            c.removeView(c.b);
            c.removeView(c.a);
            c.b = null;
            c.l();
            b = null;
            c.requestLayout();
            j1.e(false);
            return true;
        }

        a()
        {
            c = Toolbar.this;
            super();
        }
    }

    public static class b extends android.support.v7.app.a.a
    {

        int b;

        void a(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            leftMargin = marginlayoutparams.leftMargin;
            topMargin = marginlayoutparams.topMargin;
            rightMargin = marginlayoutparams.rightMargin;
            bottomMargin = marginlayoutparams.bottomMargin;
        }

        public b(int i1, int j1)
        {
            super(i1, j1);
            b = 0;
            a = 0x800013;
        }

        public b(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            b = 0;
        }

        public b(android.support.v7.app.a.a a1)
        {
            super(a1);
            b = 0;
        }

        public b(b b1)
        {
            super(b1);
            b = 0;
            b = b1.b;
        }

        public b(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            b = 0;
        }

        public b(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            b = 0;
            a(marginlayoutparams);
        }
    }

    public static interface c
    {

        public abstract boolean a(MenuItem menuitem);
    }

    public static class d extends android.support.v4.h.a
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.ClassLoaderCreator() {

            public d a(Parcel parcel)
            {
                return new d(parcel, null);
            }

            public d a(Parcel parcel, ClassLoader classloader)
            {
                return new d(parcel, classloader);
            }

            public d[] a(int i1)
            {
                return new d[i1];
            }

            public Object createFromParcel(Parcel parcel)
            {
                return a(parcel);
            }

            public Object createFromParcel(Parcel parcel, ClassLoader classloader)
            {
                return a(parcel, classloader);
            }

            public Object[] newArray(int i1)
            {
                return a(i1);
            }

        };
        int b;
        boolean c;

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeInt(b);
            if (c)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
        }


        public d(Parcel parcel, ClassLoader classloader)
        {
            super(parcel, classloader);
            b = parcel.readInt();
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            c = flag;
        }

        public d(Parcelable parcelable)
        {
            super(parcelable);
        }
    }


    private int A;
    private int B;
    private boolean C;
    private boolean D;
    private final ArrayList E;
    private final ArrayList F;
    private final int G[];
    private final ActionMenuView.e H;
    private ax I;
    private android.support.v7.widget.d J;
    private a K;
    private android.support.v7.view.menu.o.a L;
    private android.support.v7.view.menu.h.a M;
    private boolean N;
    private final Runnable O;
    ImageButton a;
    View b;
    int c;
    c d;
    private ActionMenuView e;
    private TextView f;
    private TextView g;
    private ImageButton h;
    private ImageView i;
    private Drawable j;
    private CharSequence k;
    private Context l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private ao u;
    private int v;
    private int w;
    private int x;
    private CharSequence y;
    private CharSequence z;

    public Toolbar(Context context)
    {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        x = 0x800013;
        E = new ArrayList();
        F = new ArrayList();
        G = new int[2];
        H = new ActionMenuView.e() {

            final Toolbar a;

            public boolean a(MenuItem menuitem)
            {
                if (a.d != null)
                {
                    return a.d.a(menuitem);
                } else
                {
                    return false;
                }
            }

            
            {
                a = Toolbar.this;
                super();
            }
        };
        O = new Runnable() {

            final Toolbar a;

            public void run()
            {
                a.d();
            }

            
            {
                a = Toolbar.this;
                super();
            }
        };
        context = aw.a(getContext(), attributeset, android.support.v7.a.a.j.Toolbar, i1, 0);
        n = context.g(android.support.v7.a.a.j.Toolbar_titleTextAppearance, 0);
        o = context.g(android.support.v7.a.a.j.Toolbar_subtitleTextAppearance, 0);
        x = context.c(android.support.v7.a.a.j.Toolbar_android_gravity, x);
        c = context.c(android.support.v7.a.a.j.Toolbar_buttonGravity, 48);
        int j1 = context.d(android.support.v7.a.a.j.Toolbar_titleMargin, 0);
        i1 = j1;
        if (context.g(android.support.v7.a.a.j.Toolbar_titleMargins))
        {
            i1 = context.d(android.support.v7.a.a.j.Toolbar_titleMargins, j1);
        }
        t = i1;
        s = i1;
        r = i1;
        q = i1;
        i1 = context.d(android.support.v7.a.a.j.Toolbar_titleMarginStart, -1);
        if (i1 >= 0)
        {
            q = i1;
        }
        i1 = context.d(android.support.v7.a.a.j.Toolbar_titleMarginEnd, -1);
        if (i1 >= 0)
        {
            r = i1;
        }
        i1 = context.d(android.support.v7.a.a.j.Toolbar_titleMarginTop, -1);
        if (i1 >= 0)
        {
            s = i1;
        }
        i1 = context.d(android.support.v7.a.a.j.Toolbar_titleMarginBottom, -1);
        if (i1 >= 0)
        {
            t = i1;
        }
        p = context.e(android.support.v7.a.a.j.Toolbar_maxButtonHeight, -1);
        i1 = context.d(android.support.v7.a.a.j.Toolbar_contentInsetStart, 0x80000000);
        j1 = context.d(android.support.v7.a.a.j.Toolbar_contentInsetEnd, 0x80000000);
        int k1 = context.e(android.support.v7.a.a.j.Toolbar_contentInsetLeft, 0);
        int l1 = context.e(android.support.v7.a.a.j.Toolbar_contentInsetRight, 0);
        s();
        u.b(k1, l1);
        if (i1 != 0x80000000 || j1 != 0x80000000)
        {
            u.a(i1, j1);
        }
        v = context.d(android.support.v7.a.a.j.Toolbar_contentInsetStartWithNavigation, 0x80000000);
        w = context.d(android.support.v7.a.a.j.Toolbar_contentInsetEndWithActions, 0x80000000);
        j = context.a(android.support.v7.a.a.j.Toolbar_collapseIcon);
        k = context.c(android.support.v7.a.a.j.Toolbar_collapseContentDescription);
        attributeset = context.c(android.support.v7.a.a.j.Toolbar_title);
        if (!TextUtils.isEmpty(attributeset))
        {
            setTitle(attributeset);
        }
        attributeset = context.c(android.support.v7.a.a.j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(attributeset))
        {
            setSubtitle(attributeset);
        }
        l = getContext();
        setPopupTheme(context.g(android.support.v7.a.a.j.Toolbar_popupTheme, 0));
        attributeset = context.a(android.support.v7.a.a.j.Toolbar_navigationIcon);
        if (attributeset != null)
        {
            setNavigationIcon(attributeset);
        }
        attributeset = context.c(android.support.v7.a.a.j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(attributeset))
        {
            setNavigationContentDescription(attributeset);
        }
        attributeset = context.a(android.support.v7.a.a.j.Toolbar_logo);
        if (attributeset != null)
        {
            setLogo(attributeset);
        }
        attributeset = context.c(android.support.v7.a.a.j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(attributeset))
        {
            setLogoDescription(attributeset);
        }
        if (context.g(android.support.v7.a.a.j.Toolbar_titleTextColor))
        {
            setTitleTextColor(context.b(android.support.v7.a.a.j.Toolbar_titleTextColor, -1));
        }
        if (context.g(android.support.v7.a.a.j.Toolbar_subtitleTextColor))
        {
            setSubtitleTextColor(context.b(android.support.v7.a.a.j.Toolbar_subtitleTextColor, -1));
        }
        context.a();
    }

    private int a(int i1)
    {
        int j1 = i1 & 0x70;
        i1 = j1;
        switch (j1)
        {
        default:
            i1 = x & 0x70;
            // fall through

        case 16: // '\020'
        case 48: // '0'
        case 80: // 'P'
            return i1;
        }
    }

    private int a(View view, int i1)
    {
        b b1;
        int j1;
        int k1;
        int l1;
        int i2;
        b1 = (b)view.getLayoutParams();
        k1 = view.getMeasuredHeight();
        if (i1 > 0)
        {
            i1 = (k1 - i1) / 2;
        } else
        {
            i1 = 0;
        }
        a(b1.a);
        JVM INSTR lookupswitch 2: default 60
    //                   48: 115
    //                   80: 122;
           goto _L1 _L2 _L3
_L1:
        j1 = getPaddingTop();
        l1 = getPaddingBottom();
        i2 = getHeight();
        i1 = (i2 - j1 - l1 - k1) / 2;
        if (i1 >= b1.topMargin) goto _L5; else goto _L4
_L4:
        i1 = b1.topMargin;
_L7:
        return i1 + j1;
_L2:
        return getPaddingTop() - i1;
_L3:
        return getHeight() - getPaddingBottom() - k1 - b1.bottomMargin - i1;
_L5:
        k1 = i2 - l1 - k1 - i1 - j1;
        if (k1 < b1.bottomMargin)
        {
            i1 = Math.max(0, i1 - (b1.bottomMargin - k1));
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    private int a(View view, int i1, int j1, int k1, int l1, int ai[])
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i2 = marginlayoutparams.leftMargin - ai[0];
        int j2 = marginlayoutparams.rightMargin - ai[1];
        int k2 = Math.max(0, i2) + Math.max(0, j2);
        ai[0] = Math.max(0, -i2);
        ai[1] = Math.max(0, -j2);
        view.measure(getChildMeasureSpec(i1, getPaddingLeft() + getPaddingRight() + k2 + j1, marginlayoutparams.width), getChildMeasureSpec(k1, getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin + l1, marginlayoutparams.height));
        return view.getMeasuredWidth() + k2;
    }

    private int a(View view, int i1, int ai[], int j1)
    {
        b b1 = (b)view.getLayoutParams();
        int k1 = b1.leftMargin - ai[0];
        i1 = Math.max(0, k1) + i1;
        ai[0] = Math.max(0, -k1);
        j1 = a(view, j1);
        k1 = view.getMeasuredWidth();
        view.layout(i1, j1, i1 + k1, view.getMeasuredHeight() + j1);
        return b1.rightMargin + k1 + i1;
    }

    private int a(List list, int ai[])
    {
        int l1 = ai[0];
        int k1 = ai[1];
        int i2 = list.size();
        int j1 = 0;
        int i1;
        int j2;
        int k2;
        int l2;
        for (i1 = 0; j1 < i2; i1 += l2 + j2 + k2)
        {
            ai = (View)list.get(j1);
            b b1 = (b)ai.getLayoutParams();
            l1 = b1.leftMargin - l1;
            k1 = b1.rightMargin - k1;
            j2 = Math.max(0, l1);
            k2 = Math.max(0, k1);
            l1 = Math.max(0, -l1);
            k1 = Math.max(0, -k1);
            l2 = ai.getMeasuredWidth();
            j1++;
        }

        return i1;
    }

    private void a(View view, int i1, int j1, int k1, int l1, int i2)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int j2 = getChildMeasureSpec(i1, getPaddingLeft() + getPaddingRight() + marginlayoutparams.leftMargin + marginlayoutparams.rightMargin + j1, marginlayoutparams.width);
        j1 = getChildMeasureSpec(k1, getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin + l1, marginlayoutparams.height);
        k1 = android.view.View.MeasureSpec.getMode(j1);
        i1 = j1;
        if (k1 != 0x40000000)
        {
            i1 = j1;
            if (i2 >= 0)
            {
                i1 = i2;
                if (k1 != 0)
                {
                    i1 = Math.min(android.view.View.MeasureSpec.getSize(j1), i2);
                }
                i1 = android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000);
            }
        }
        view.measure(j2, i1);
    }

    private void a(View view, boolean flag)
    {
        Object obj = view.getLayoutParams();
        if (obj == null)
        {
            obj = j();
        } else
        if (!checkLayoutParams(((android.view.ViewGroup.LayoutParams) (obj))))
        {
            obj = a(((android.view.ViewGroup.LayoutParams) (obj)));
        } else
        {
            obj = (b)obj;
        }
        obj.b = 1;
        if (flag && b != null)
        {
            view.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            F.add(view);
            return;
        } else
        {
            addView(view, ((android.view.ViewGroup.LayoutParams) (obj)));
            return;
        }
    }

    private void a(List list, int i1)
    {
        boolean flag = true;
        boolean flag1 = false;
        int j1;
        int k1;
        if (android.support.v4.h.p.b(this) != 1)
        {
            flag = false;
        }
        k1 = getChildCount();
        j1 = android.support.v4.h.d.a(i1, android.support.v4.h.p.b(this));
        list.clear();
        i1 = ((flag1) ? 1 : 0);
        if (flag)
        {
            for (i1 = k1 - 1; i1 >= 0; i1--)
            {
                View view = getChildAt(i1);
                b b1 = (b)view.getLayoutParams();
                if (b1.b == 0 && a(view) && b(b1.a) == j1)
                {
                    list.add(view);
                }
            }

        } else
        {
            for (; i1 < k1; i1++)
            {
                View view1 = getChildAt(i1);
                b b2 = (b)view1.getLayoutParams();
                if (b2.b == 0 && a(view1) && b(b2.a) == j1)
                {
                    list.add(view1);
                }
            }

        }
    }

    private boolean a(View view)
    {
        return view != null && view.getParent() == this && view.getVisibility() != 8;
    }

    private int b(int i1)
    {
label0:
        {
            int k1 = android.support.v4.h.p.b(this);
            int j1 = android.support.v4.h.d.a(i1, k1) & 7;
            i1 = j1;
            switch (j1)
            {
            case 2: // '\002'
            case 4: // '\004'
            default:
                if (k1 != 1)
                {
                    break label0;
                }
                i1 = 5;
                break;

            case 1: // '\001'
            case 3: // '\003'
            case 5: // '\005'
                break;
            }
            return i1;
        }
        return 3;
    }

    private int b(View view)
    {
        view = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i1 = android.support.v4.h.f.a(view);
        return android.support.v4.h.f.b(view) + i1;
    }

    private int b(View view, int i1, int ai[], int j1)
    {
        b b1 = (b)view.getLayoutParams();
        int k1 = b1.rightMargin - ai[1];
        i1 -= Math.max(0, k1);
        ai[1] = Math.max(0, -k1);
        j1 = a(view, j1);
        k1 = view.getMeasuredWidth();
        view.layout(i1 - k1, j1, i1, view.getMeasuredHeight() + j1);
        return i1 - (b1.leftMargin + k1);
    }

    private int c(View view)
    {
        view = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i1 = ((android.view.ViewGroup.MarginLayoutParams) (view)).topMargin;
        return ((android.view.ViewGroup.MarginLayoutParams) (view)).bottomMargin + i1;
    }

    private boolean d(View view)
    {
        return view.getParent() == this || F.contains(view);
    }

    private MenuInflater getMenuInflater()
    {
        return new g(getContext());
    }

    private void m()
    {
        if (i == null)
        {
            i = new android.support.v7.widget.p(getContext());
        }
    }

    private void n()
    {
        o();
        if (e.d() == null)
        {
            h h1 = (h)e.getMenu();
            if (K == null)
            {
                K = new a();
            }
            e.setExpandedActionViewsExclusive(true);
            h1.a(K, l);
        }
    }

    private void o()
    {
        if (e == null)
        {
            e = new ActionMenuView(getContext());
            e.setPopupTheme(m);
            e.setOnMenuItemClickListener(H);
            e.a(L, M);
            b b1 = j();
            b1.a = 0x800005 | c & 0x70;
            e.setLayoutParams(b1);
            a(e, false);
        }
    }

    private void p()
    {
        if (h == null)
        {
            h = new n(getContext(), null, android.support.v7.a.a.a.toolbarNavigationButtonStyle);
            b b1 = j();
            b1.a = 0x800003 | c & 0x70;
            h.setLayoutParams(b1);
        }
    }

    private void q()
    {
        removeCallbacks(O);
        post(O);
    }

    private boolean r()
    {
        if (N) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int j1 = getChildCount();
        int i1 = 0;
label0:
        do
        {
label1:
            {
                if (i1 >= j1)
                {
                    break label1;
                }
                View view = getChildAt(i1);
                if (a(view) && view.getMeasuredWidth() > 0 && view.getMeasuredHeight() > 0)
                {
                    break label0;
                }
                i1++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    private void s()
    {
        if (u == null)
        {
            u = new ao();
        }
    }

    public b a(AttributeSet attributeset)
    {
        return new b(getContext(), attributeset);
    }

    protected b a(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof b)
        {
            return new b((b)layoutparams);
        }
        if (layoutparams instanceof android.support.v7.app.a.a)
        {
            return new b((android.support.v7.app.a.a)layoutparams);
        }
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new b((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new b(layoutparams);
        }
    }

    public void a(int i1, int j1)
    {
        s();
        u.a(i1, j1);
    }

    public void a(Context context, int i1)
    {
        n = i1;
        if (f != null)
        {
            f.setTextAppearance(context, i1);
        }
    }

    public void a(h h1, android.support.v7.widget.d d1)
    {
        if (h1 != null || e != null)
        {
            o();
            h h2 = e.d();
            if (h2 != h1)
            {
                if (h2 != null)
                {
                    h2.b(J);
                    h2.b(K);
                }
                if (K == null)
                {
                    K = new a();
                }
                d1.d(true);
                if (h1 != null)
                {
                    h1.a(d1, l);
                    h1.a(K, l);
                } else
                {
                    d1.a(l, null);
                    K.a(l, null);
                    d1.b(true);
                    K.b(true);
                }
                e.setPopupTheme(m);
                e.setPresenter(d1);
                J = d1;
                return;
            }
        }
    }

    public void a(android.support.v7.view.menu.o.a a1, android.support.v7.view.menu.h.a a2)
    {
        L = a1;
        M = a2;
        if (e != null)
        {
            e.a(a1, a2);
        }
    }

    public boolean a()
    {
        return getVisibility() == 0 && e != null && e.a();
    }

    public void b(Context context, int i1)
    {
        o = i1;
        if (g != null)
        {
            g.setTextAppearance(context, i1);
        }
    }

    public boolean b()
    {
        return e != null && e.g();
    }

    public boolean c()
    {
        return e != null && e.h();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return super.checkLayoutParams(layoutparams) && (layoutparams instanceof b);
    }

    public boolean d()
    {
        return e != null && e.e();
    }

    public boolean e()
    {
        return e != null && e.f();
    }

    public void f()
    {
        if (e != null)
        {
            e.i();
        }
    }

    public boolean g()
    {
        return K != null && K.b != null;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return j();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return a(attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return a(layoutparams);
    }

    public int getContentInsetEnd()
    {
        if (u != null)
        {
            return u.d();
        } else
        {
            return 0;
        }
    }

    public int getContentInsetEndWithActions()
    {
        if (w != 0x80000000)
        {
            return w;
        } else
        {
            return getContentInsetEnd();
        }
    }

    public int getContentInsetLeft()
    {
        if (u != null)
        {
            return u.a();
        } else
        {
            return 0;
        }
    }

    public int getContentInsetRight()
    {
        if (u != null)
        {
            return u.b();
        } else
        {
            return 0;
        }
    }

    public int getContentInsetStart()
    {
        if (u != null)
        {
            return u.c();
        } else
        {
            return 0;
        }
    }

    public int getContentInsetStartWithNavigation()
    {
        if (v != 0x80000000)
        {
            return v;
        } else
        {
            return getContentInsetStart();
        }
    }

    public int getCurrentContentInsetEnd()
    {
        boolean flag;
        if (e != null)
        {
            h h1 = e.d();
            if (h1 != null && h1.hasVisibleItems())
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return Math.max(getContentInsetEnd(), Math.max(w, 0));
        } else
        {
            return getContentInsetEnd();
        }
    }

    public int getCurrentContentInsetLeft()
    {
        if (android.support.v4.h.p.b(this) == 1)
        {
            return getCurrentContentInsetEnd();
        } else
        {
            return getCurrentContentInsetStart();
        }
    }

    public int getCurrentContentInsetRight()
    {
        if (android.support.v4.h.p.b(this) == 1)
        {
            return getCurrentContentInsetStart();
        } else
        {
            return getCurrentContentInsetEnd();
        }
    }

    public int getCurrentContentInsetStart()
    {
        if (getNavigationIcon() != null)
        {
            return Math.max(getContentInsetStart(), Math.max(v, 0));
        } else
        {
            return getContentInsetStart();
        }
    }

    public Drawable getLogo()
    {
        if (i != null)
        {
            return i.getDrawable();
        } else
        {
            return null;
        }
    }

    public CharSequence getLogoDescription()
    {
        if (i != null)
        {
            return i.getContentDescription();
        } else
        {
            return null;
        }
    }

    public Menu getMenu()
    {
        n();
        return e.getMenu();
    }

    public CharSequence getNavigationContentDescription()
    {
        if (h != null)
        {
            return h.getContentDescription();
        } else
        {
            return null;
        }
    }

    public Drawable getNavigationIcon()
    {
        if (h != null)
        {
            return h.getDrawable();
        } else
        {
            return null;
        }
    }

    android.support.v7.widget.d getOuterActionMenuPresenter()
    {
        return J;
    }

    public Drawable getOverflowIcon()
    {
        n();
        return e.getOverflowIcon();
    }

    Context getPopupContext()
    {
        return l;
    }

    public int getPopupTheme()
    {
        return m;
    }

    public CharSequence getSubtitle()
    {
        return z;
    }

    public CharSequence getTitle()
    {
        return y;
    }

    public int getTitleMarginBottom()
    {
        return t;
    }

    public int getTitleMarginEnd()
    {
        return r;
    }

    public int getTitleMarginStart()
    {
        return q;
    }

    public int getTitleMarginTop()
    {
        return s;
    }

    public ad getWrapper()
    {
        if (I == null)
        {
            I = new ax(this, true);
        }
        return I;
    }

    public void h()
    {
        j j1;
        if (K == null)
        {
            j1 = null;
        } else
        {
            j1 = K.b;
        }
        if (j1 != null)
        {
            j1.collapseActionView();
        }
    }

    void i()
    {
        if (a == null)
        {
            a = new n(getContext(), null, android.support.v7.a.a.a.toolbarNavigationButtonStyle);
            a.setImageDrawable(j);
            a.setContentDescription(k);
            b b1 = j();
            b1.a = 0x800003 | c & 0x70;
            b1.b = 2;
            a.setLayoutParams(b1);
            a.setOnClickListener(new android.view.View.OnClickListener() {

                final Toolbar a;

                public void onClick(View view)
                {
                    a.h();
                }

            
            {
                a = Toolbar.this;
                super();
            }
            });
        }
    }

    protected b j()
    {
        return new b(-2, -2);
    }

    void k()
    {
        for (int i1 = getChildCount() - 1; i1 >= 0; i1--)
        {
            View view = getChildAt(i1);
            if (((b)view.getLayoutParams()).b != 2 && view != e)
            {
                removeViewAt(i1);
                F.add(view);
            }
        }

    }

    void l()
    {
        for (int i1 = F.size() - 1; i1 >= 0; i1--)
        {
            addView((View)F.get(i1));
        }

        F.clear();
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        removeCallbacks(O);
    }

    public boolean onHoverEvent(MotionEvent motionevent)
    {
        int i1 = motionevent.getActionMasked();
        if (i1 == 9)
        {
            D = false;
        }
        if (!D)
        {
            boolean flag = super.onHoverEvent(motionevent);
            if (i1 == 9 && !flag)
            {
                D = true;
            }
        }
        if (i1 == 10 || i1 == 3)
        {
            D = false;
        }
        return true;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        Object obj;
        Object obj1;
        int ai[];
        int i2;
        int j2;
        int k2;
        boolean flag1;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        boolean flag2;
        if (android.support.v4.h.p.b(this) == 1)
        {
            k2 = 1;
        } else
        {
            k2 = 0;
        }
        j3 = getWidth();
        i4 = getHeight();
        j2 = getPaddingLeft();
        k3 = getPaddingRight();
        l3 = getPaddingTop();
        j4 = getPaddingBottom();
        i1 = j3 - k3;
        ai = G;
        ai[1] = 0;
        ai[0] = 0;
        k1 = android.support.v4.h.p.c(this);
        if (k1 >= 0)
        {
            i2 = Math.min(k1, l1 - j1);
        } else
        {
            i2 = 0;
        }
        if (a(h))
        {
            if (k2 != 0)
            {
                i1 = b(h, i1, ai, i2);
                j1 = j2;
            } else
            {
                j1 = a(h, j2, ai, i2);
            }
        } else
        {
            j1 = j2;
        }
        k1 = i1;
        l1 = j1;
        if (a(a))
        {
            if (k2 != 0)
            {
                k1 = b(a, i1, ai, i2);
                l1 = j1;
            } else
            {
                l1 = a(a, j1, ai, i2);
                k1 = i1;
            }
        }
        i1 = k1;
        j1 = l1;
        if (a(e))
        {
            if (k2 != 0)
            {
                j1 = a(e, l1, ai, i2);
                i1 = k1;
            } else
            {
                i1 = b(e, k1, ai, i2);
                j1 = l1;
            }
        }
        k1 = getCurrentContentInsetLeft();
        l1 = getCurrentContentInsetRight();
        ai[0] = Math.max(0, k1 - j1);
        ai[1] = Math.max(0, l1 - (j3 - k3 - i1));
        k1 = Math.max(j1, k1);
        l1 = Math.min(i1, j3 - k3 - l1);
        j1 = l1;
        i1 = k1;
        if (a(b))
        {
            if (k2 != 0)
            {
                j1 = b(b, l1, ai, i2);
                i1 = k1;
            } else
            {
                i1 = a(b, k1, ai, i2);
                j1 = l1;
            }
        }
        if (a(i))
        {
            if (k2 != 0)
            {
                j1 = b(i, j1, ai, i2);
                k1 = i1;
            } else
            {
                k1 = a(i, i1, ai, i2);
            }
        } else
        {
            k1 = i1;
        }
        flag = a(f);
        flag2 = a(g);
        i1 = 0;
        if (flag)
        {
            b b1 = (b)f.getLayoutParams();
            i1 = b1.topMargin;
            l1 = f.getMeasuredHeight();
            i1 = 0 + (b1.bottomMargin + (i1 + l1));
        }
        if (flag2)
        {
            b b2 = (b)g.getLayoutParams();
            l1 = b2.topMargin;
            int l2 = g.getMeasuredHeight();
            i3 = b2.bottomMargin + (l1 + l2) + i1;
        } else
        {
            i3 = i1;
        }
        if (flag) goto _L2; else goto _L1
_L1:
        l1 = j1;
        i1 = k1;
        if (!flag2) goto _L3; else goto _L2
_L2:
        if (flag)
        {
            obj = f;
        } else
        {
            obj = g;
        }
        if (flag2)
        {
            obj1 = g;
        } else
        {
            obj1 = f;
        }
        obj = (b)((View) (obj)).getLayoutParams();
        obj1 = (b)((View) (obj1)).getLayoutParams();
        if (flag && f.getMeasuredWidth() > 0 || flag2 && g.getMeasuredWidth() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        x & 0x70;
        JVM INSTR lookupswitch 2: default 576
    //                   48: 1021
    //                   80: 1095;
           goto _L4 _L5 _L6
_L4:
        i1 = (i4 - l3 - j4 - i3) / 2;
        if (i1 < ((b) (obj)).topMargin + s)
        {
            i1 = ((b) (obj)).topMargin + s;
        } else
        {
            l1 = i4 - j4 - i3 - i1 - l3;
            if (l1 < ((b) (obj)).bottomMargin + t)
            {
                i1 = Math.max(0, i1 - ((((b) (obj1)).bottomMargin + t) - l1));
            }
        }
        i1 = l3 + i1;
_L8:
        if (k2 != 0)
        {
            if (flag1)
            {
                l1 = q;
            } else
            {
                l1 = 0;
            }
            l1 -= ai[1];
            j1 -= Math.max(0, l1);
            ai[1] = Math.max(0, -l1);
            if (flag)
            {
                obj = (b)f.getLayoutParams();
                l1 = j1 - f.getMeasuredWidth();
                k2 = f.getMeasuredHeight() + i1;
                f.layout(l1, i1, j1, k2);
                i3 = r;
                i1 = k2 + ((b) (obj)).bottomMargin;
                l1 -= i3;
            } else
            {
                l1 = j1;
            }
            if (flag2)
            {
                obj = (b)g.getLayoutParams();
                i1 = ((b) (obj)).topMargin + i1;
                k2 = g.getMeasuredWidth();
                i3 = g.getMeasuredHeight() + i1;
                g.layout(j1 - k2, i1, j1, i3);
                i1 = r;
                k2 = ((b) (obj)).bottomMargin;
                i1 = j1 - i1;
            } else
            {
                i1 = j1;
            }
            if (flag1)
            {
                i1 = Math.min(l1, i1);
            } else
            {
                i1 = j1;
            }
            l1 = i1;
            i1 = k1;
        } else
        {
            if (flag1)
            {
                l1 = q;
            } else
            {
                l1 = 0;
            }
            l1 -= ai[0];
            k1 += Math.max(0, l1);
            ai[0] = Math.max(0, -l1);
            if (flag)
            {
                obj = (b)f.getLayoutParams();
                k2 = f.getMeasuredWidth() + k1;
                l1 = f.getMeasuredHeight() + i1;
                f.layout(k1, i1, k2, l1);
                i3 = r;
                i1 = ((b) (obj)).bottomMargin;
                k2 += i3;
                i1 += l1;
            } else
            {
                k2 = k1;
            }
            if (flag2)
            {
                obj = (b)g.getLayoutParams();
                l1 = i1 + ((b) (obj)).topMargin;
                i1 = g.getMeasuredWidth() + k1;
                i3 = g.getMeasuredHeight() + l1;
                g.layout(k1, l1, i1, i3);
                l1 = r;
                i3 = ((b) (obj)).bottomMargin;
                i3 = l1 + i1;
            } else
            {
                i3 = k1;
            }
            l1 = j1;
            i1 = k1;
            if (flag1)
            {
                i1 = Math.max(k2, i3);
                l1 = j1;
            }
        }
_L3:
        a(E, 3);
        k1 = E.size();
        for (j1 = 0; j1 < k1; j1++)
        {
            i1 = a((View)E.get(j1), i1, ai, i2);
        }

        a(E, 5);
        k1 = E.size();
        for (j1 = 0; j1 < k1; j1++)
        {
            l1 = b((View)E.get(j1), l1, ai, i2);
        }

        a(E, 1);
        k1 = a(E, ai);
        j1 = ((j3 - j2 - k3) / 2 + j2) - k1 / 2;
        k1 += j1;
          goto _L7
_L5:
        i1 = getPaddingTop();
        i1 = ((b) (obj)).topMargin + i1 + s;
        break MISSING_BLOCK_LABEL_620;
_L6:
        i1 = i4 - j4 - ((b) (obj1)).bottomMargin - t - i3;
          goto _L8
_L7:
        if (j1 >= i1) goto _L10; else goto _L9
_L9:
        l1 = E.size();
        k1 = 0;
        j1 = i1;
        for (i1 = k1; i1 < l1; i1++)
        {
            j1 = a((View)E.get(i1), j1, ai, i2);
        }

        break; /* Loop/switch isn't completed */
_L10:
        i1 = j1;
        if (k1 > l1)
        {
            i1 = j1 - (k1 - l1);
        }
        if (true) goto _L9; else goto _L11
_L11:
        E.clear();
        return;
          goto _L8
    }

    protected void onMeasure(int i1, int j1)
    {
        int j2 = 0;
        int i2 = 0;
        int ai[] = G;
        int k1;
        int l1;
        int k2;
        int l2;
        int i3;
        int j3;
        if (bc.a(this))
        {
            k2 = 0;
            l2 = 1;
        } else
        {
            k2 = 1;
            l2 = 0;
        }
        k1 = 0;
        if (a(h))
        {
            a(h, i1, 0, j1, 0, p);
            k1 = h.getMeasuredWidth() + b(h);
            j2 = Math.max(0, h.getMeasuredHeight() + c(h));
            i2 = View.combineMeasuredStates(0, h.getMeasuredState());
        }
        i3 = k1;
        k1 = i2;
        l1 = j2;
        if (a(a))
        {
            a(a, i1, 0, j1, 0, p);
            i3 = a.getMeasuredWidth() + b(a);
            l1 = Math.max(j2, a.getMeasuredHeight() + c(a));
            k1 = View.combineMeasuredStates(i2, a.getMeasuredState());
        }
        i2 = getCurrentContentInsetStart();
        j3 = 0 + Math.max(i2, i3);
        ai[l2] = Math.max(0, i2 - i3);
        l2 = 0;
        i2 = k1;
        j2 = l1;
        if (a(e))
        {
            a(e, i1, j3, j1, 0, p);
            l2 = e.getMeasuredWidth() + b(e);
            j2 = Math.max(l1, e.getMeasuredHeight() + c(e));
            i2 = View.combineMeasuredStates(k1, e.getMeasuredState());
        }
        k1 = getCurrentContentInsetEnd();
        i3 = j3 + Math.max(k1, l2);
        ai[k2] = Math.max(0, k1 - l2);
        l2 = i3;
        k1 = i2;
        l1 = j2;
        if (a(b))
        {
            l2 = i3 + a(b, i1, i3, j1, 0, ai);
            l1 = Math.max(j2, b.getMeasuredHeight() + c(b));
            k1 = View.combineMeasuredStates(i2, b.getMeasuredState());
        }
        i2 = l2;
        j2 = k1;
        k2 = l1;
        if (a(i))
        {
            i2 = l2 + a(i, i1, l2, j1, 0, ai);
            k2 = Math.max(l1, i.getMeasuredHeight() + c(i));
            j2 = View.combineMeasuredStates(k1, i.getMeasuredState());
        }
        i3 = getChildCount();
        l2 = 0;
        l1 = k2;
        k1 = j2;
        j2 = l2;
        l2 = i2;
        while (j2 < i3) 
        {
            View view = getChildAt(j2);
            if (((b)view.getLayoutParams()).b == 0 && a(view))
            {
                l2 += a(view, i1, l2, j1, 0, ai);
                l1 = Math.max(l1, view.getMeasuredHeight() + c(view));
                k1 = View.combineMeasuredStates(k1, view.getMeasuredState());
            }
            j2++;
        }
        k2 = 0;
        j2 = 0;
        int k3 = s + t;
        int l3 = q + r;
        i2 = k1;
        if (a(f))
        {
            a(f, i1, l2 + l3, j1, k3, ai);
            i2 = f.getMeasuredWidth();
            k2 = b(f) + i2;
            j2 = f.getMeasuredHeight() + c(f);
            i2 = View.combineMeasuredStates(k1, f.getMeasuredState());
        }
        j3 = j2;
        i3 = k2;
        k1 = i2;
        if (a(g))
        {
            i3 = Math.max(k2, a(g, i1, l2 + l3, j1, k3 + j2, ai));
            j3 = j2 + (g.getMeasuredHeight() + c(g));
            k1 = View.combineMeasuredStates(i2, g.getMeasuredState());
        }
        l1 = Math.max(l1, j3);
        k2 = getPaddingLeft();
        j3 = getPaddingRight();
        i2 = getPaddingTop();
        j2 = getPaddingBottom();
        k2 = View.resolveSizeAndState(Math.max(i3 + l2 + (k2 + j3), getSuggestedMinimumWidth()), i1, 0xff000000 & k1);
        i1 = View.resolveSizeAndState(Math.max(l1 + (i2 + j2), getSuggestedMinimumHeight()), j1, k1 << 16);
        if (r())
        {
            i1 = 0;
        }
        setMeasuredDimension(k2, i1);
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof d))
        {
            super.onRestoreInstanceState(parcelable);
        } else
        {
            d d1 = (d)parcelable;
            super.onRestoreInstanceState(d1.a());
            if (e != null)
            {
                parcelable = e.d();
            } else
            {
                parcelable = null;
            }
            if (d1.b != 0 && K != null && parcelable != null)
            {
                parcelable = parcelable.findItem(d1.b);
                if (parcelable != null)
                {
                    parcelable.expandActionView();
                }
            }
            if (d1.c)
            {
                q();
                return;
            }
        }
    }

    public void onRtlPropertiesChanged(int i1)
    {
        boolean flag = true;
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            super.onRtlPropertiesChanged(i1);
        }
        s();
        ao ao1 = u;
        if (i1 != 1)
        {
            flag = false;
        }
        ao1.a(flag);
    }

    protected Parcelable onSaveInstanceState()
    {
        d d1 = new d(super.onSaveInstanceState());
        if (K != null && K.b != null)
        {
            d1.b = K.b.getItemId();
        }
        d1.c = b();
        return d1;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1 = motionevent.getActionMasked();
        if (i1 == 0)
        {
            C = false;
        }
        if (!C)
        {
            boolean flag = super.onTouchEvent(motionevent);
            if (i1 == 0 && !flag)
            {
                C = true;
            }
        }
        if (i1 == 1 || i1 == 3)
        {
            C = false;
        }
        return true;
    }

    public void setCollapsible(boolean flag)
    {
        N = flag;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i1)
    {
        int j1 = i1;
        if (i1 < 0)
        {
            j1 = 0x80000000;
        }
        if (j1 != w)
        {
            w = j1;
            if (getNavigationIcon() != null)
            {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i1)
    {
        int j1 = i1;
        if (i1 < 0)
        {
            j1 = 0x80000000;
        }
        if (j1 != v)
        {
            v = j1;
            if (getNavigationIcon() != null)
            {
                requestLayout();
            }
        }
    }

    public void setLogo(int i1)
    {
        setLogo(android.support.v7.b.a.b.b(getContext(), i1));
    }

    public void setLogo(Drawable drawable)
    {
        if (drawable == null) goto _L2; else goto _L1
_L1:
        m();
        if (!d(i))
        {
            a(i, true);
        }
_L4:
        if (i != null)
        {
            i.setImageDrawable(drawable);
        }
        return;
_L2:
        if (i != null && d(i))
        {
            removeView(i);
            F.remove(i);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setLogoDescription(int i1)
    {
        setLogoDescription(getContext().getText(i1));
    }

    public void setLogoDescription(CharSequence charsequence)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            m();
        }
        if (i != null)
        {
            i.setContentDescription(charsequence);
        }
    }

    public void setNavigationContentDescription(int i1)
    {
        CharSequence charsequence;
        if (i1 != 0)
        {
            charsequence = getContext().getText(i1);
        } else
        {
            charsequence = null;
        }
        setNavigationContentDescription(charsequence);
    }

    public void setNavigationContentDescription(CharSequence charsequence)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            p();
        }
        if (h != null)
        {
            h.setContentDescription(charsequence);
        }
    }

    public void setNavigationIcon(int i1)
    {
        setNavigationIcon(android.support.v7.b.a.b.b(getContext(), i1));
    }

    public void setNavigationIcon(Drawable drawable)
    {
        if (drawable == null) goto _L2; else goto _L1
_L1:
        p();
        if (!d(h))
        {
            a(h, true);
        }
_L4:
        if (h != null)
        {
            h.setImageDrawable(drawable);
        }
        return;
_L2:
        if (h != null && d(h))
        {
            removeView(h);
            F.remove(h);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setNavigationOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        p();
        h.setOnClickListener(onclicklistener);
    }

    public void setOnMenuItemClickListener(c c1)
    {
        d = c1;
    }

    public void setOverflowIcon(Drawable drawable)
    {
        n();
        e.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i1)
    {
label0:
        {
            if (m != i1)
            {
                m = i1;
                if (i1 != 0)
                {
                    break label0;
                }
                l = getContext();
            }
            return;
        }
        l = new ContextThemeWrapper(getContext(), i1);
    }

    public void setSubtitle(int i1)
    {
        setSubtitle(getContext().getText(i1));
    }

    public void setSubtitle(CharSequence charsequence)
    {
        if (TextUtils.isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        if (g == null)
        {
            Context context = getContext();
            g = new aa(context);
            g.setSingleLine();
            g.setEllipsize(android.text.TextUtils.TruncateAt.END);
            if (o != 0)
            {
                g.setTextAppearance(context, o);
            }
            if (B != 0)
            {
                g.setTextColor(B);
            }
        }
        if (!d(g))
        {
            a(g, true);
        }
_L4:
        if (g != null)
        {
            g.setText(charsequence);
        }
        z = charsequence;
        return;
_L2:
        if (g != null && d(g))
        {
            removeView(g);
            F.remove(g);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setSubtitleTextColor(int i1)
    {
        B = i1;
        if (g != null)
        {
            g.setTextColor(i1);
        }
    }

    public void setTitle(int i1)
    {
        setTitle(getContext().getText(i1));
    }

    public void setTitle(CharSequence charsequence)
    {
        if (TextUtils.isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        if (f == null)
        {
            Context context = getContext();
            f = new aa(context);
            f.setSingleLine();
            f.setEllipsize(android.text.TextUtils.TruncateAt.END);
            if (n != 0)
            {
                f.setTextAppearance(context, n);
            }
            if (A != 0)
            {
                f.setTextColor(A);
            }
        }
        if (!d(f))
        {
            a(f, true);
        }
_L4:
        if (f != null)
        {
            f.setText(charsequence);
        }
        y = charsequence;
        return;
_L2:
        if (f != null && d(f))
        {
            removeView(f);
            F.remove(f);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setTitleMarginBottom(int i1)
    {
        t = i1;
        requestLayout();
    }

    public void setTitleMarginEnd(int i1)
    {
        r = i1;
        requestLayout();
    }

    public void setTitleMarginStart(int i1)
    {
        q = i1;
        requestLayout();
    }

    public void setTitleMarginTop(int i1)
    {
        s = i1;
        requestLayout();
    }

    public void setTitleTextColor(int i1)
    {
        A = i1;
        if (f != null)
        {
            f.setTextColor(i1);
        }
    }
}
