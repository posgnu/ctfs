// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v4.h.p;
import android.support.v4.h.r;
import android.support.v7.view.b;
import android.support.v7.view.menu.h;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package android.support.v7.widget:
//            a, aw, d, ActionMenuView, 
//            bc

public class ActionBarContextView extends a
{

    private CharSequence g;
    private CharSequence h;
    private View i;
    private View j;
    private LinearLayout k;
    private TextView l;
    private TextView m;
    private int n;
    private int o;
    private boolean p;
    private int q;

    public ActionBarContextView(Context context)
    {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        context = aw.a(context, attributeset, android.support.v7.a.a.j.ActionMode, i1, 0);
        android.support.v4.h.p.a(this, context.a(android.support.v7.a.a.j.ActionMode_background));
        n = context.g(android.support.v7.a.a.j.ActionMode_titleTextStyle, 0);
        o = context.g(android.support.v7.a.a.j.ActionMode_subtitleTextStyle, 0);
        e = context.f(android.support.v7.a.a.j.ActionMode_height, 0);
        q = context.g(android.support.v7.a.a.j.ActionMode_closeItemLayout, android.support.v7.a.a.g.abc_action_mode_close_item_material);
        context.a();
    }

    private void e()
    {
label0:
        {
            byte byte1 = 8;
            boolean flag = true;
            if (k == null)
            {
                LayoutInflater.from(getContext()).inflate(android.support.v7.a.a.g.abc_action_bar_title_item, this);
                k = (LinearLayout)getChildAt(getChildCount() - 1);
                l = (TextView)k.findViewById(android.support.v7.a.a.f.action_bar_title);
                m = (TextView)k.findViewById(android.support.v7.a.a.f.action_bar_subtitle);
                if (n != 0)
                {
                    l.setTextAppearance(getContext(), n);
                }
                if (o != 0)
                {
                    m.setTextAppearance(getContext(), o);
                }
            }
            l.setText(g);
            m.setText(h);
            Object obj;
            byte byte0;
            int i1;
            if (!TextUtils.isEmpty(g))
            {
                byte0 = 1;
            } else
            {
                byte0 = 0;
            }
            if (TextUtils.isEmpty(h))
            {
                flag = false;
            }
            obj = m;
            if (flag)
            {
                i1 = 0;
            } else
            {
                i1 = 8;
            }
            ((TextView) (obj)).setVisibility(i1);
            obj = k;
            if (byte0 == 0)
            {
                byte0 = byte1;
                if (!flag)
                {
                    break label0;
                }
            }
            byte0 = 0;
        }
        ((LinearLayout) (obj)).setVisibility(byte0);
        if (k.getParent() == null)
        {
            addView(k);
        }
    }

    public volatile r a(int i1, long l1)
    {
        return super.a(i1, l1);
    }

    public void a(b b1)
    {
        if (i != null) goto _L2; else goto _L1
_L1:
        i = LayoutInflater.from(getContext()).inflate(q, this, false);
        addView(i);
_L4:
        i.findViewById(android.support.v7.a.a.f.action_mode_close_button).setOnClickListener(new android.view.View.OnClickListener(b1) {

            final b a;
            final ActionBarContextView b;

            public void onClick(View view)
            {
                a.c();
            }

            
            {
                b = ActionBarContextView.this;
                a = b1;
                super();
            }
        });
        b1 = (h)b1.b();
        if (d != null)
        {
            d.f();
        }
        d = new d(getContext());
        d.c(true);
        android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-2, -1);
        b1.a(d, b);
        c = (ActionMenuView)d.a(this);
        android.support.v4.h.p.a(c, null);
        addView(c, layoutparams);
        return;
_L2:
        if (i.getParent() == null)
        {
            addView(i);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean a()
    {
        if (d != null)
        {
            return d.d();
        } else
        {
            return false;
        }
    }

    public void b()
    {
        if (i == null)
        {
            c();
        }
    }

    public void c()
    {
        removeAllViews();
        j = null;
        c = null;
    }

    public boolean d()
    {
        return p;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new android.view.ViewGroup.MarginLayoutParams(-1, -2);
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new android.view.ViewGroup.MarginLayoutParams(getContext(), attributeset);
    }

    public volatile int getAnimatedVisibility()
    {
        return super.getAnimatedVisibility();
    }

    public volatile int getContentHeight()
    {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle()
    {
        return h;
    }

    public CharSequence getTitle()
    {
        return g;
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (d != null)
        {
            d.e();
            d.g();
        }
    }

    public volatile boolean onHoverEvent(MotionEvent motionevent)
    {
        return super.onHoverEvent(motionevent);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        if (accessibilityevent.getEventType() == 32)
        {
            accessibilityevent.setSource(this);
            accessibilityevent.setClassName(getClass().getName());
            accessibilityevent.setPackageName(getContext().getPackageName());
            accessibilityevent.setContentDescription(g);
            return;
        } else
        {
            super.onInitializeAccessibilityEvent(accessibilityevent);
            return;
        }
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        flag = bc.a(this);
        int i2;
        int j2;
        int k2;
        if (flag)
        {
            i2 = k1 - i1 - getPaddingRight();
        } else
        {
            i2 = getPaddingLeft();
        }
        j2 = getPaddingTop();
        k2 = l1 - j1 - getPaddingTop() - getPaddingBottom();
        if (i != null && i.getVisibility() != 8)
        {
            Object obj = (android.view.ViewGroup.MarginLayoutParams)i.getLayoutParams();
            if (flag)
            {
                j1 = ((android.view.ViewGroup.MarginLayoutParams) (obj)).rightMargin;
            } else
            {
                j1 = ((android.view.ViewGroup.MarginLayoutParams) (obj)).leftMargin;
            }
            if (flag)
            {
                l1 = ((android.view.ViewGroup.MarginLayoutParams) (obj)).leftMargin;
            } else
            {
                l1 = ((android.view.ViewGroup.MarginLayoutParams) (obj)).rightMargin;
            }
            j1 = a(i2, j1, flag);
            j1 = a(a(i, j1, j2, k2, flag) + j1, l1, flag);
        } else
        {
            j1 = i2;
        }
        l1 = j1;
        if (k != null)
        {
            l1 = j1;
            if (j == null)
            {
                l1 = j1;
                if (k.getVisibility() != 8)
                {
                    l1 = j1 + a(k, j1, j2, k2, flag);
                }
            }
        }
        if (j != null)
        {
            a(j, l1, j2, k2, flag);
        }
        if (flag)
        {
            i1 = getPaddingLeft();
        } else
        {
            i1 = k1 - i1 - getPaddingRight();
        }
        if (c != null)
        {
            obj = c;
            if (!flag)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a(((View) (obj)), i1, j2, k2, flag);
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        int i2 = 0x40000000;
        boolean flag = false;
        if (android.view.View.MeasureSpec.getMode(i1) != 0x40000000)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getSimpleName()).append(" can only be used ").append("with android:layout_width=\"match_parent\" (or fill_parent)").toString());
        }
        if (android.view.View.MeasureSpec.getMode(j1) == 0)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getSimpleName()).append(" can only be used ").append("with android:layout_height=\"wrap_content\"").toString());
        }
        int k2 = android.view.View.MeasureSpec.getSize(i1);
        int k1;
        int l1;
        int j2;
        int l2;
        if (e > 0)
        {
            k1 = e;
        } else
        {
            k1 = android.view.View.MeasureSpec.getSize(j1);
        }
        l2 = getPaddingTop() + getPaddingBottom();
        i1 = k2 - getPaddingLeft() - getPaddingRight();
        j2 = k1 - l2;
        l1 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x80000000);
        j1 = i1;
        if (i != null)
        {
            i1 = a(i, i1, l1, 0);
            android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)i.getLayoutParams();
            j1 = marginlayoutparams.leftMargin;
            j1 = i1 - (marginlayoutparams.rightMargin + j1);
        }
        i1 = j1;
        if (c != null)
        {
            i1 = j1;
            if (c.getParent() == this)
            {
                i1 = a(c, j1, l1, 0);
            }
        }
        j1 = i1;
        if (k != null)
        {
            j1 = i1;
            if (j == null)
            {
                if (p)
                {
                    j1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                    k.measure(j1, l1);
                    int i3 = k.getMeasuredWidth();
                    Object obj;
                    if (i3 <= i1)
                    {
                        l1 = 1;
                    } else
                    {
                        l1 = 0;
                    }
                    j1 = i1;
                    if (l1 != 0)
                    {
                        j1 = i1 - i3;
                    }
                    obj = k;
                    if (l1 != 0)
                    {
                        i1 = 0;
                    } else
                    {
                        i1 = 8;
                    }
                    ((LinearLayout) (obj)).setVisibility(i1);
                } else
                {
                    j1 = a(k, i1, l1, 0);
                }
            }
        }
        if (j != null)
        {
            obj = j.getLayoutParams();
            if (((android.view.ViewGroup.LayoutParams) (obj)).width != -2)
            {
                i1 = 0x40000000;
            } else
            {
                i1 = 0x80000000;
            }
            l1 = j1;
            if (((android.view.ViewGroup.LayoutParams) (obj)).width >= 0)
            {
                l1 = Math.min(((android.view.ViewGroup.LayoutParams) (obj)).width, j1);
            }
            if (((android.view.ViewGroup.LayoutParams) (obj)).height != -2)
            {
                j1 = i2;
            } else
            {
                j1 = 0x80000000;
            }
            if (((android.view.ViewGroup.LayoutParams) (obj)).height >= 0)
            {
                i2 = Math.min(((android.view.ViewGroup.LayoutParams) (obj)).height, j2);
            } else
            {
                i2 = j2;
            }
            j.measure(android.view.View.MeasureSpec.makeMeasureSpec(l1, i1), android.view.View.MeasureSpec.makeMeasureSpec(i2, j1));
        }
        if (e <= 0)
        {
            l1 = getChildCount();
            i1 = 0;
            for (j1 = ((flag) ? 1 : 0); j1 < l1; j1++)
            {
                k1 = getChildAt(j1).getMeasuredHeight() + l2;
                if (k1 > i1)
                {
                    i1 = k1;
                }
            }

            setMeasuredDimension(k2, i1);
            return;
        } else
        {
            setMeasuredDimension(k2, k1);
            return;
        }
    }

    public volatile boolean onTouchEvent(MotionEvent motionevent)
    {
        return super.onTouchEvent(motionevent);
    }

    public void setContentHeight(int i1)
    {
        e = i1;
    }

    public void setCustomView(View view)
    {
        if (j != null)
        {
            removeView(j);
        }
        j = view;
        if (view != null && k != null)
        {
            removeView(k);
            k = null;
        }
        if (view != null)
        {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charsequence)
    {
        h = charsequence;
        e();
    }

    public void setTitle(CharSequence charsequence)
    {
        g = charsequence;
        e();
    }

    public void setTitleOptional(boolean flag)
    {
        if (flag != p)
        {
            requestLayout();
        }
        p = flag;
    }

    public volatile void setVisibility(int i1)
    {
        super.setVisibility(i1);
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
    }
}
