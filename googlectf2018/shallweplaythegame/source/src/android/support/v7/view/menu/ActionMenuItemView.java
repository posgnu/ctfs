// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v7.widget.aa;
import android.support.v7.widget.ah;
import android.support.v7.widget.ay;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package android.support.v7.view.menu:
//            j, s

public class ActionMenuItemView extends aa
    implements p.a, android.support.v7.widget.ActionMenuView.a, android.view.View.OnClickListener
{
    private class a extends ah
    {

        final ActionMenuItemView a;

        public s a()
        {
            if (a.c != null)
            {
                return a.c.a();
            } else
            {
                return null;
            }
        }

        protected boolean b()
        {
            boolean flag1 = false;
            boolean flag = flag1;
            if (a.b != null)
            {
                flag = flag1;
                if (a.b.a(a.a))
                {
                    s s1 = a();
                    flag = flag1;
                    if (s1 != null)
                    {
                        flag = flag1;
                        if (s1.d())
                        {
                            flag = true;
                        }
                    }
                }
            }
            return flag;
        }

        public a()
        {
            a = ActionMenuItemView.this;
            super(ActionMenuItemView.this);
        }
    }

    public static abstract class b
    {

        public abstract s a();

        public b()
        {
        }
    }


    j a;
    h.b b;
    b c;
    private CharSequence d;
    private Drawable e;
    private ah f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private int k;

    public ActionMenuItemView(Context context)
    {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeset, int l)
    {
        super(context, attributeset, l);
        Resources resources = context.getResources();
        g = e();
        context = context.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.ActionMenuItemView, l, 0);
        i = context.getDimensionPixelSize(android.support.v7.a.a.j.ActionMenuItemView_android_minWidth, 0);
        context.recycle();
        k = (int)(resources.getDisplayMetrics().density * 32F + 0.5F);
        setOnClickListener(this);
        j = -1;
        setSaveEnabled(false);
    }

    private boolean e()
    {
        Configuration configuration = getContext().getResources().getConfiguration();
        int l = configuration.screenWidthDp;
        int i1 = configuration.screenHeightDp;
        return l >= 480 || l >= 640 && i1 >= 480 || configuration.orientation == 2;
    }

    private void f()
    {
        CharSequence charsequence;
label0:
        {
            boolean flag2 = false;
            Object obj = null;
            boolean flag;
            boolean flag1;
            if (!TextUtils.isEmpty(d))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (e != null)
            {
                flag1 = flag2;
                if (!a.m())
                {
                    break label0;
                }
                if (!g)
                {
                    flag1 = flag2;
                    if (!h)
                    {
                        break label0;
                    }
                }
            }
            flag1 = true;
        }
        flag &= flag1;
        if (flag)
        {
            charsequence = d;
        } else
        {
            charsequence = null;
        }
        setText(charsequence);
        charsequence = a.getContentDescription();
        if (TextUtils.isEmpty(charsequence))
        {
            if (flag)
            {
                charsequence = null;
            } else
            {
                charsequence = a.getTitle();
            }
            setContentDescription(charsequence);
        } else
        {
            setContentDescription(charsequence);
        }
        charsequence = a.getTooltipText();
        if (TextUtils.isEmpty(charsequence))
        {
            if (flag)
            {
                charsequence = obj;
            } else
            {
                charsequence = a.getTitle();
            }
            ay.a(this, charsequence);
            return;
        } else
        {
            ay.a(this, charsequence);
            return;
        }
    }

    public void a(j j1, int l)
    {
        a = j1;
        setIcon(j1.getIcon());
        setTitle(j1.a(this));
        setId(j1.getItemId());
        if (j1.isVisible())
        {
            l = 0;
        } else
        {
            l = 8;
        }
        setVisibility(l);
        setEnabled(j1.isEnabled());
        if (j1.hasSubMenu() && f == null)
        {
            f = new a();
        }
    }

    public boolean a()
    {
        return true;
    }

    public boolean b()
    {
        return !TextUtils.isEmpty(getText());
    }

    public boolean c()
    {
        return b() && a.getIcon() == null;
    }

    public boolean d()
    {
        return b();
    }

    public j getItemData()
    {
        return a;
    }

    public void onClick(View view)
    {
        if (b != null)
        {
            b.a(a);
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        g = e();
        f();
    }

    protected void onMeasure(int l, int i1)
    {
        boolean flag = b();
        if (flag && j >= 0)
        {
            super.setPadding(j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(l, i1);
        int j1 = android.view.View.MeasureSpec.getMode(l);
        l = android.view.View.MeasureSpec.getSize(l);
        int k1 = getMeasuredWidth();
        if (j1 == 0x80000000)
        {
            l = Math.min(l, i);
        } else
        {
            l = i;
        }
        if (j1 != 0x40000000 && i > 0 && k1 < l)
        {
            super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(l, 0x40000000), i1);
        }
        if (!flag && e != null)
        {
            super.setPadding((getMeasuredWidth() - e.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        super.onRestoreInstanceState(null);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (a.hasSubMenu() && f != null && f.onTouch(this, motionevent))
        {
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public void setCheckable(boolean flag)
    {
    }

    public void setChecked(boolean flag)
    {
    }

    public void setExpandedFormat(boolean flag)
    {
        if (h != flag)
        {
            h = flag;
            if (a != null)
            {
                a.h();
            }
        }
    }

    public void setIcon(Drawable drawable)
    {
        e = drawable;
        if (drawable != null)
        {
            int k1 = drawable.getIntrinsicWidth();
            int j1 = drawable.getIntrinsicHeight();
            int i1 = j1;
            int l = k1;
            if (k1 > k)
            {
                float f1 = (float)k / (float)k1;
                l = k;
                i1 = (int)((float)j1 * f1);
            }
            k1 = i1;
            j1 = l;
            if (i1 > k)
            {
                float f2 = (float)k / (float)i1;
                k1 = k;
                j1 = (int)((float)l * f2);
            }
            drawable.setBounds(0, 0, j1, k1);
        }
        setCompoundDrawables(drawable, null, null, null);
        f();
    }

    public void setItemInvoker(h.b b1)
    {
        b = b1;
    }

    public void setPadding(int l, int i1, int j1, int k1)
    {
        j = l;
        super.setPadding(l, i1, j1, k1);
    }

    public void setPopupCallback(b b1)
    {
        c = b1;
    }

    public void setTitle(CharSequence charsequence)
    {
        d = charsequence;
        f();
    }
}
