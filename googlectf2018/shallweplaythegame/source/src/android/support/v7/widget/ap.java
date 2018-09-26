// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v7.view.a;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;

// Referenced classes of package android.support.v7.widget:
//            x, ai, aw, p, 
//            aa, ay

public class ap extends HorizontalScrollView
    implements android.widget.AdapterView.OnItemSelectedListener
{
    private class a extends BaseAdapter
    {

        final ap a;

        public int getCount()
        {
            return a.b.getChildCount();
        }

        public Object getItem(int k)
        {
            return ((c)a.b.getChildAt(k)).b();
        }

        public long getItemId(int k)
        {
            return (long)k;
        }

        public View getView(int k, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                return a.a((android.support.v7.app.a.c)getItem(k), true);
            } else
            {
                ((c)view).a((android.support.v7.app.a.c)getItem(k));
                return view;
            }
        }

        a()
        {
            a = ap.this;
            super();
        }
    }

    private class b
        implements android.view.View.OnClickListener
    {

        final ap a;

        public void onClick(View view)
        {
            ((c)view).b().d();
            int l = a.b.getChildCount();
            int k = 0;
            while (k < l) 
            {
                View view1 = a.b.getChildAt(k);
                boolean flag;
                if (view1 == view)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                view1.setSelected(flag);
                k++;
            }
        }

        b()
        {
            a = ap.this;
            super();
        }
    }

    private class c extends ai
    {

        final ap a;
        private final int b[] = {
            0x10100d4
        };
        private android.support.v7.app.a.c c;
        private TextView d;
        private ImageView e;
        private View f;

        public void a()
        {
            Object obj = c;
            Object obj1 = ((android.support.v7.app.a.c) (obj)).c();
            if (obj1 != null)
            {
                obj = ((View) (obj1)).getParent();
                if (obj != this)
                {
                    if (obj != null)
                    {
                        ((ViewGroup)obj).removeView(((View) (obj1)));
                    }
                    addView(((View) (obj1)));
                }
                f = ((View) (obj1));
                if (d != null)
                {
                    d.setVisibility(8);
                }
                if (e != null)
                {
                    e.setVisibility(8);
                    e.setImageDrawable(null);
                }
                return;
            }
            if (f != null)
            {
                removeView(f);
                f = null;
            }
            android.graphics.drawable.Drawable drawable = ((android.support.v7.app.a.c) (obj)).a();
            obj1 = ((android.support.v7.app.a.c) (obj)).b();
            boolean flag;
            if (drawable != null)
            {
                if (e == null)
                {
                    p p1 = new p(getContext());
                    ai.a a2 = new ai.a(-2, -2);
                    a2.h = 16;
                    p1.setLayoutParams(a2);
                    addView(p1, 0);
                    e = p1;
                }
                e.setImageDrawable(drawable);
                e.setVisibility(0);
            } else
            if (e != null)
            {
                e.setVisibility(8);
                e.setImageDrawable(null);
            }
            if (!TextUtils.isEmpty(((CharSequence) (obj1))))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                if (d == null)
                {
                    aa aa1 = new aa(getContext(), null, android.support.v7.a.a.a.actionBarTabTextStyle);
                    aa1.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    ai.a a1 = new ai.a(-2, -2);
                    a1.h = 16;
                    aa1.setLayoutParams(a1);
                    addView(aa1);
                    d = aa1;
                }
                d.setText(((CharSequence) (obj1)));
                d.setVisibility(0);
            } else
            if (d != null)
            {
                d.setVisibility(8);
                d.setText(null);
            }
            if (e != null)
            {
                e.setContentDescription(((android.support.v7.app.a.c) (obj)).e());
            }
            if (flag)
            {
                obj = null;
            } else
            {
                obj = ((android.support.v7.app.a.c) (obj)).e();
            }
            android.support.v7.widget.ay.a(this, ((CharSequence) (obj)));
        }

        public void a(android.support.v7.app.a.c c1)
        {
            c = c1;
            a();
        }

        public android.support.v7.app.a.c b()
        {
            return c;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
        {
            super.onInitializeAccessibilityEvent(accessibilityevent);
            accessibilityevent.setClassName(android/support/v7/app/a$c.getName());
        }

        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
        {
            super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
            accessibilitynodeinfo.setClassName(android/support/v7/app/a$c.getName());
        }

        public void onMeasure(int k, int l)
        {
            super.onMeasure(k, l);
            if (a.c > 0 && getMeasuredWidth() > a.c)
            {
                super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(a.c, 0x40000000), l);
            }
        }

        public void setSelected(boolean flag)
        {
            boolean flag1;
            if (isSelected() != flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            super.setSelected(flag);
            if (flag1 && flag)
            {
                sendAccessibilityEvent(4);
            }
        }

        public c(Context context, android.support.v7.app.a.c c1, boolean flag)
        {
            a = ap.this;
            super(context, null, android.support.v7.a.a.a.actionBarTabStyle);
            c = c1;
            ap1 = android.support.v7.widget.aw.a(context, null, b, android.support.v7.a.a.a.actionBarTabStyle, 0);
            if (g(0))
            {
                setBackgroundDrawable(aw.this.a(0));
            }
            aw.this.a();
            if (flag)
            {
                setGravity(0x800013);
            }
            a();
        }
    }


    private static final Interpolator j = new DecelerateInterpolator();
    Runnable a;
    ai b;
    int c;
    int d;
    private b e;
    private Spinner f;
    private boolean g;
    private int h;
    private int i;

    private boolean a()
    {
        return f != null && f.getParent() == this;
    }

    private void b()
    {
        if (a())
        {
            return;
        }
        if (f == null)
        {
            f = d();
        }
        removeView(b);
        addView(f, new android.view.ViewGroup.LayoutParams(-2, -1));
        if (f.getAdapter() == null)
        {
            f.setAdapter(new a());
        }
        if (a != null)
        {
            removeCallbacks(a);
            a = null;
        }
        f.setSelection(i);
    }

    private boolean c()
    {
        if (!a())
        {
            return false;
        } else
        {
            removeView(f);
            addView(b, new android.view.ViewGroup.LayoutParams(-2, -1));
            setTabSelected(f.getSelectedItemPosition());
            return false;
        }
    }

    private Spinner d()
    {
        x x1 = new x(getContext(), null, android.support.v7.a.a.a.actionDropDownStyle);
        x1.setLayoutParams(new ai.a(-2, -1));
        x1.setOnItemSelectedListener(this);
        return x1;
    }

    c a(android.support.v7.app.a.c c1, boolean flag)
    {
        c1 = new c(getContext(), c1, flag);
        if (flag)
        {
            c1.setBackgroundDrawable(null);
            c1.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, h));
            return c1;
        }
        c1.setFocusable(true);
        if (e == null)
        {
            e = new b();
        }
        c1.setOnClickListener(e);
        return c1;
    }

    public void a(int k)
    {
        View view = b.getChildAt(k);
        if (a != null)
        {
            removeCallbacks(a);
        }
        a = new Runnable(view) {

            final View a;
            final ap b;

            public void run()
            {
                int l = a.getLeft();
                int i1 = (b.getWidth() - a.getWidth()) / 2;
                b.smoothScrollTo(l - i1, 0);
                b.a = null;
            }

            
            {
                b = ap.this;
                a = view;
                super();
            }
        };
        post(a);
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (a != null)
        {
            post(a);
        }
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        configuration = android.support.v7.view.a.a(getContext());
        setContentHeight(configuration.e());
        d = configuration.g();
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (a != null)
        {
            removeCallbacks(a);
        }
    }

    public void onItemSelected(AdapterView adapterview, View view, int k, long l)
    {
        ((c)view).b().d();
    }

    public void onMeasure(int k, int l)
    {
        l = 1;
        int i1 = android.view.View.MeasureSpec.getMode(k);
        int k1;
        boolean flag;
        if (i1 == 0x40000000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setFillViewport(flag);
        k1 = b.getChildCount();
        if (k1 > 1 && (i1 == 0x40000000 || i1 == 0x80000000))
        {
            int j1;
            if (k1 > 2)
            {
                c = (int)((float)android.view.View.MeasureSpec.getSize(k) * 0.4F);
            } else
            {
                c = android.view.View.MeasureSpec.getSize(k) / 2;
            }
            c = Math.min(c, d);
        } else
        {
            c = -1;
        }
        j1 = android.view.View.MeasureSpec.makeMeasureSpec(h, 0x40000000);
        if (flag || !g)
        {
            l = 0;
        }
        if (l != 0)
        {
            b.measure(0, j1);
            if (b.getMeasuredWidth() > android.view.View.MeasureSpec.getSize(k))
            {
                b();
            } else
            {
                c();
            }
        } else
        {
            c();
        }
        l = getMeasuredWidth();
        super.onMeasure(k, j1);
        k = getMeasuredWidth();
        if (flag && l != k)
        {
            setTabSelected(i);
        }
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }

    public void setAllowCollapse(boolean flag)
    {
        g = flag;
    }

    public void setContentHeight(int k)
    {
        h = k;
        requestLayout();
    }

    public void setTabSelected(int k)
    {
        i = k;
        int i1 = b.getChildCount();
        int l = 0;
        while (l < i1) 
        {
            View view = b.getChildAt(l);
            boolean flag;
            if (l == k)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            view.setSelected(flag);
            if (flag)
            {
                a(k);
            }
            l++;
        }
        if (f != null && k >= 0)
        {
            f.setSelection(k);
        }
    }

}
