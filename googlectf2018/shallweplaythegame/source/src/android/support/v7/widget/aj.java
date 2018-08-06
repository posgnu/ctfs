// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.h.p;
import android.support.v4.widget.i;
import android.support.v7.view.menu.s;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v7.widget:
//            r, af

public class aj
    implements s
{
    private class a
        implements Runnable
    {

        final aj a;

        public void run()
        {
            a.m();
        }

        a()
        {
            a = aj.this;
            super();
        }
    }

    private class b extends DataSetObserver
    {

        final aj a;

        public void onChanged()
        {
            if (a.d())
            {
                a.a();
            }
        }

        public void onInvalidated()
        {
            a.c();
        }

        b()
        {
            a = aj.this;
            super();
        }
    }

    private class c
        implements android.widget.AbsListView.OnScrollListener
    {

        final aj a;

        public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
        }

        public void onScrollStateChanged(AbsListView abslistview, int i1)
        {
            if (i1 == 1 && !a.n() && a.g.getContentView() != null)
            {
                a.f.removeCallbacks(a.e);
                a.e.run();
            }
        }

        c()
        {
            a = aj.this;
            super();
        }
    }

    private class d
        implements android.view.View.OnTouchListener
    {

        final aj a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            int i1;
            int j1;
            int k1;
            i1 = motionevent.getAction();
            j1 = (int)motionevent.getX();
            k1 = (int)motionevent.getY();
            if (i1 != 0 || a.g == null || !a.g.isShowing() || j1 < 0 || j1 >= a.g.getWidth() || k1 < 0 || k1 >= a.g.getHeight()) goto _L2; else goto _L1
_L1:
            a.f.postDelayed(a.e, 250L);
_L4:
            return false;
_L2:
            if (i1 == 1)
            {
                a.f.removeCallbacks(a.e);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        d()
        {
            a = aj.this;
            super();
        }
    }

    private class e
        implements Runnable
    {

        final aj a;

        public void run()
        {
            if (a.c != null && android.support.v4.h.p.m(a.c) && a.c.getCount() > a.c.getChildCount() && a.c.getChildCount() <= a.d)
            {
                a.g.setInputMethodMode(2);
                a.a();
            }
        }

        e()
        {
            a = aj.this;
            super();
        }
    }


    private static Method a;
    private static Method b;
    private static Method h;
    private Drawable A;
    private android.widget.AdapterView.OnItemClickListener B;
    private android.widget.AdapterView.OnItemSelectedListener C;
    private final d D;
    private final c E;
    private final a F;
    private Runnable G;
    private final Rect H;
    private Rect I;
    private boolean J;
    af c;
    int d;
    final e e;
    final Handler f;
    PopupWindow g;
    private Context i;
    private ListAdapter j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private int t;
    private boolean u;
    private boolean v;
    private View w;
    private int x;
    private DataSetObserver y;
    private View z;

    public aj(Context context)
    {
        this(context, null, android.support.v7.a.a.a.listPopupWindowStyle);
    }

    public aj(Context context, AttributeSet attributeset, int i1)
    {
        this(context, attributeset, i1, 0);
    }

    public aj(Context context, AttributeSet attributeset, int i1, int j1)
    {
        k = -2;
        l = -2;
        o = 1002;
        q = true;
        t = 0;
        u = false;
        v = false;
        d = 0x7fffffff;
        x = 0;
        e = new e();
        D = new d();
        E = new c();
        F = new a();
        H = new Rect();
        i = context;
        f = new Handler(context.getMainLooper());
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.ListPopupWindow, i1, j1);
        m = typedarray.getDimensionPixelOffset(android.support.v7.a.a.j.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        n = typedarray.getDimensionPixelOffset(android.support.v7.a.a.j.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (n != 0)
        {
            p = true;
        }
        typedarray.recycle();
        g = new r(context, attributeset, i1, j1);
        g.setInputMethodMode(1);
    }

    private int a(View view, int i1, boolean flag)
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        int j1 = ((Integer)b.invoke(g, new Object[] {
            view, Integer.valueOf(i1), Boolean.valueOf(flag)
        })).intValue();
        return j1;
        Exception exception;
        exception;
        Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
        return g.getMaxAvailableHeight(view, i1);
    }

    private void b()
    {
        if (w != null)
        {
            android.view.ViewParent viewparent = w.getParent();
            if (viewparent instanceof ViewGroup)
            {
                ((ViewGroup)viewparent).removeView(w);
            }
        }
    }

    private void c(boolean flag)
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        a.invoke(g, new Object[] {
            Boolean.valueOf(flag)
        });
        return;
        Exception exception;
        exception;
        Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
        return;
    }

    private int f()
    {
        boolean flag1 = true;
        if (c != null) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        View view;
        android.widget.LinearLayout.LayoutParams layoutparams;
        int i1;
        int j1;
        int l1;
        boolean flag;
        obj1 = i;
        G = new Runnable() {

            final aj a;

            public void run()
            {
                View view1 = a.i();
                if (view1 != null && view1.getWindowToken() != null)
                {
                    a.a();
                }
            }

            
            {
                a = aj.this;
                super();
            }
        };
        if (!J)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = a(((Context) (obj1)), flag);
        if (A != null)
        {
            c.setSelector(A);
        }
        c.setAdapter(j);
        c.setOnItemClickListener(B);
        c.setFocusable(true);
        c.setFocusableInTouchMode(true);
        c.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {

            final aj a;

            public void onItemSelected(AdapterView adapterview, View view1, int i2, long l2)
            {
                if (i2 != -1)
                {
                    adapterview = a.c;
                    if (adapterview != null)
                    {
                        adapterview.setListSelectionHidden(false);
                    }
                }
            }

            public void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                a = aj.this;
                super();
            }
        });
        c.setOnScrollListener(E);
        if (C != null)
        {
            c.setOnItemSelectedListener(C);
        }
        obj = c;
        view = w;
        if (view == null) goto _L4; else goto _L3
_L3:
        obj1 = new LinearLayout(((Context) (obj1)));
        ((LinearLayout) (obj1)).setOrientation(1);
        layoutparams = new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0F);
        x;
        JVM INSTR tableswitch 0 1: default 216
    //                   0 447
    //                   1 432;
           goto _L5 _L6 _L7
_L5:
        Log.e("ListPopupWindow", (new StringBuilder()).append("Invalid hint position ").append(x).toString());
_L9:
        if (l >= 0)
        {
            j1 = l;
            i1 = 0x80000000;
        } else
        {
            i1 = 0;
            j1 = 0;
        }
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(j1, i1), 0);
        obj = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
        i1 = view.getMeasuredHeight();
        j1 = ((android.widget.LinearLayout.LayoutParams) (obj)).topMargin;
        i1 = ((android.widget.LinearLayout.LayoutParams) (obj)).bottomMargin + (i1 + j1);
        obj = obj1;
_L15:
        g.setContentView(((View) (obj)));
_L10:
        obj = g.getBackground();
        if (obj != null)
        {
            ((Drawable) (obj)).getPadding(H);
            j1 = H.top + H.bottom;
            if (!p)
            {
                n = -H.top;
            }
        } else
        {
            H.setEmpty();
            j1 = 0;
        }
        if (g.getInputMethodMode() == 2)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        l1 = a(i(), n, flag);
        if (u || k == -1)
        {
            return l1 + j1;
        }
          goto _L8
_L7:
        ((LinearLayout) (obj1)).addView(((View) (obj)), layoutparams);
        ((LinearLayout) (obj1)).addView(view);
          goto _L9
_L6:
        ((LinearLayout) (obj1)).addView(view);
        ((LinearLayout) (obj1)).addView(((View) (obj)), layoutparams);
          goto _L9
_L2:
        obj = (ViewGroup)g.getContentView();
        obj = w;
        int k1;
        if (obj != null)
        {
            obj1 = (android.widget.LinearLayout.LayoutParams)((View) (obj)).getLayoutParams();
            i1 = ((View) (obj)).getMeasuredHeight();
            j1 = ((android.widget.LinearLayout.LayoutParams) (obj1)).topMargin;
            i1 = ((android.widget.LinearLayout.LayoutParams) (obj1)).bottomMargin + (i1 + j1);
        } else
        {
            i1 = 0;
        }
          goto _L10
_L8:
        l;
        JVM INSTR tableswitch -2 -1: default 572
    //                   -2 641
    //                   -1 681;
           goto _L11 _L12 _L13
_L11:
        k1 = android.view.View.MeasureSpec.makeMeasureSpec(l, 0x40000000);
_L14:
        l1 = c.a(k1, 0, -1, l1 - i1, -1);
        k1 = i1;
        if (l1 > 0)
        {
            k1 = i1 + (c.getPaddingTop() + c.getPaddingBottom() + j1);
        }
        return l1 + k1;
_L12:
        k1 = android.view.View.MeasureSpec.makeMeasureSpec(i.getResources().getDisplayMetrics().widthPixels - (H.left + H.right), 0x80000000);
        continue; /* Loop/switch isn't completed */
_L13:
        k1 = android.view.View.MeasureSpec.makeMeasureSpec(i.getResources().getDisplayMetrics().widthPixels - (H.left + H.right), 0x40000000);
        if (true) goto _L14; else goto _L4
_L4:
        i1 = 0;
          goto _L15
    }

    af a(Context context, boolean flag)
    {
        return new af(context, flag);
    }

    public void a()
    {
        int i1;
        byte byte2;
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag = true;
        flag1 = false;
        byte2 = -1;
        i1 = f();
        flag2 = n();
        android.support.v4.widget.i.a(g, o);
        if (!g.isShowing()) goto _L2; else goto _L1
_L1:
        if (android.support.v4.h.p.m(i())) goto _L4; else goto _L3
_L3:
        return;
_L4:
        int j1;
        if (l == -1)
        {
            j1 = -1;
        } else
        if (l == -2)
        {
            j1 = i().getWidth();
        } else
        {
            j1 = l;
        }
        if (k != -1) goto _L6; else goto _L5
_L5:
        if (!flag2)
        {
            i1 = -1;
        }
        if (flag2)
        {
            PopupWindow popupwindow = g;
            View view;
            byte byte0;
            int l1;
            int i2;
            if (l == -1)
            {
                byte0 = -1;
            } else
            {
                byte0 = 0;
            }
            popupwindow.setWidth(byte0);
            g.setHeight(0);
        } else
        {
            PopupWindow popupwindow1 = g;
            byte byte1;
            if (l == -1)
            {
                byte1 = -1;
            } else
            {
                byte1 = 0;
            }
            popupwindow1.setWidth(byte1);
            g.setHeight(-1);
        }
_L7:
        popupwindow = g;
        flag = flag1;
        if (!v)
        {
            flag = flag1;
            if (!u)
            {
                flag = true;
            }
        }
        popupwindow.setOutsideTouchable(flag);
        popupwindow = g;
        view = i();
        l1 = m;
        i2 = n;
        byte0 = j1;
        if (j1 < 0)
        {
            byte0 = -1;
        }
        if (i1 < 0)
        {
            i1 = byte2;
        }
        popupwindow.update(view, l1, i2, byte0, i1);
        return;
_L6:
        if (k != -2)
        {
            i1 = k;
        }
        if (true) goto _L7; else goto _L2
_L2:
        PopupWindow popupwindow2;
        int k1;
        if (l == -1)
        {
            k1 = -1;
        } else
        if (l == -2)
        {
            k1 = i().getWidth();
        } else
        {
            k1 = l;
        }
        if (k == -1)
        {
            i1 = -1;
        } else
        if (k != -2)
        {
            i1 = k;
        }
        g.setWidth(k1);
        g.setHeight(i1);
        c(true);
        popupwindow2 = g;
        if (v || u)
        {
            flag = false;
        }
        popupwindow2.setOutsideTouchable(flag);
        g.setTouchInterceptor(D);
        if (s)
        {
            android.support.v4.widget.i.a(g, r);
        }
        if (h != null)
        {
            try
            {
                h.invoke(g, new Object[] {
                    I
                });
            }
            catch (Exception exception)
            {
                Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", exception);
            }
        }
        android.support.v4.widget.i.a(g, i(), m, n, t);
        c.setSelection(-1);
        if (!J || c.isInTouchMode())
        {
            m();
        }
        if (!J)
        {
            f.post(F);
            return;
        }
        if (true) goto _L3; else goto _L8
_L8:
    }

    public void a(int i1)
    {
        x = i1;
    }

    public void a(Rect rect)
    {
        I = rect;
    }

    public void a(Drawable drawable)
    {
        g.setBackgroundDrawable(drawable);
    }

    public void a(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        B = onitemclicklistener;
    }

    public void a(ListAdapter listadapter)
    {
        if (y != null) goto _L2; else goto _L1
_L1:
        y = new b();
_L4:
        j = listadapter;
        if (j != null)
        {
            listadapter.registerDataSetObserver(y);
        }
        if (c != null)
        {
            c.setAdapter(j);
        }
        return;
_L2:
        if (j != null)
        {
            j.unregisterDataSetObserver(y);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        g.setOnDismissListener(ondismisslistener);
    }

    public void a(boolean flag)
    {
        J = flag;
        g.setFocusable(flag);
    }

    public void b(int i1)
    {
        g.setAnimationStyle(i1);
    }

    public void b(View view)
    {
        z = view;
    }

    public void b(boolean flag)
    {
        s = true;
        r = flag;
    }

    public void c()
    {
        g.dismiss();
        b();
        g.setContentView(null);
        c = null;
        f.removeCallbacks(e);
    }

    public void c(int i1)
    {
        m = i1;
    }

    public void d(int i1)
    {
        n = i1;
        p = true;
    }

    public boolean d()
    {
        return g.isShowing();
    }

    public ListView e()
    {
        return c;
    }

    public void e(int i1)
    {
        t = i1;
    }

    public void f(int i1)
    {
        l = i1;
    }

    public void g(int i1)
    {
        Drawable drawable = g.getBackground();
        if (drawable != null)
        {
            drawable.getPadding(H);
            l = H.left + H.right + i1;
            return;
        } else
        {
            f(i1);
            return;
        }
    }

    public boolean g()
    {
        return J;
    }

    public Drawable h()
    {
        return g.getBackground();
    }

    public void h(int i1)
    {
        g.setInputMethodMode(i1);
    }

    public View i()
    {
        return z;
    }

    public void i(int i1)
    {
        af af1 = c;
        if (d() && af1 != null)
        {
            af1.setListSelectionHidden(false);
            af1.setSelection(i1);
            if (af1.getChoiceMode() != 0)
            {
                af1.setItemChecked(i1, true);
            }
        }
    }

    public int j()
    {
        return m;
    }

    public int k()
    {
        if (!p)
        {
            return 0;
        } else
        {
            return n;
        }
    }

    public int l()
    {
        return l;
    }

    public void m()
    {
        af af1 = c;
        if (af1 != null)
        {
            af1.setListSelectionHidden(true);
            af1.requestLayout();
        }
    }

    public boolean n()
    {
        return g.getInputMethodMode() == 2;
    }

    static 
    {
        try
        {
            a = android/widget/PopupWindow.getDeclaredMethod("setClipToScreenEnabled", new Class[] {
                Boolean.TYPE
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
        try
        {
            b = android/widget/PopupWindow.getDeclaredMethod("getMaxAvailableHeight", new Class[] {
                android/view/View, Integer.TYPE, Boolean.TYPE
            });
        }
        catch (NoSuchMethodException nosuchmethodexception1)
        {
            Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
        }
        try
        {
            h = android/widget/PopupWindow.getDeclaredMethod("setEpicenterBounds", new Class[] {
                android/graphics/Rect
            });
        }
        catch (NoSuchMethodException nosuchmethodexception2)
        {
            Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
        }
    }
}
