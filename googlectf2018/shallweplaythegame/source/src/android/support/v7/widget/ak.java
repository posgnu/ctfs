// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.c.a.a;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;

public class ak extends ListView
{
    private static class a extends android.support.v7.c.a.a
    {

        private boolean a;

        void a(boolean flag)
        {
            a = flag;
        }

        public void draw(Canvas canvas)
        {
            if (a)
            {
                super.draw(canvas);
            }
        }

        public void setHotspot(float f1, float f2)
        {
            if (a)
            {
                super.setHotspot(f1, f2);
            }
        }

        public void setHotspotBounds(int j, int k, int l, int i1)
        {
            if (a)
            {
                super.setHotspotBounds(j, k, l, i1);
            }
        }

        public boolean setState(int ai[])
        {
            if (a)
            {
                return super.setState(ai);
            } else
            {
                return false;
            }
        }

        public boolean setVisible(boolean flag, boolean flag1)
        {
            if (a)
            {
                return super.setVisible(flag, flag1);
            } else
            {
                return false;
            }
        }

        public a(Drawable drawable)
        {
            super(drawable);
            a = true;
        }
    }


    private static final int g[] = {
        0
    };
    final Rect a = new Rect();
    int b;
    int c;
    int d;
    int e;
    protected int f;
    private Field h;
    private a i;

    public ak(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        try
        {
            h = android/widget/AbsListView.getDeclaredField("mIsChildViewEnabled");
            h.setAccessible(true);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }

    public int a(int j, int k, int l, int i1, int j1)
    {
        Object obj;
        ListAdapter listadapter;
        int k1;
        k = getListPaddingTop();
        k1 = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        l = getDividerHeight();
        obj = getDivider();
        listadapter = getAdapter();
        if (listadapter != null) goto _L2; else goto _L1
_L1:
        j = k + k1;
_L4:
        return j;
_L2:
        k = k1 + k;
        int i2;
        int j2;
        int l2;
        if (l <= 0 || obj == null)
        {
            l = 0;
        }
        i2 = 0;
        obj = null;
        j2 = 0;
        l2 = listadapter.getCount();
        for (int l1 = 0; l1 < l2;)
        {
            int k2 = listadapter.getItemViewType(l1);
            if (k2 != j2)
            {
                obj = null;
                j2 = k2;
            }
            View view = listadapter.getView(l1, ((View) (obj)), this);
            android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
            obj = layoutparams;
            if (layoutparams == null)
            {
                obj = generateDefaultLayoutParams();
                view.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            }
            if (((android.view.ViewGroup.LayoutParams) (obj)).height > 0)
            {
                k2 = android.view.View.MeasureSpec.makeMeasureSpec(((android.view.ViewGroup.LayoutParams) (obj)).height, 0x40000000);
            } else
            {
                k2 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            }
            view.measure(j, k2);
            view.forceLayout();
            if (l1 > 0)
            {
                k += l;
            }
            k += view.getMeasuredHeight();
            if (k >= i1)
            {
                j = i1;
                if (j1 >= 0)
                {
                    j = i1;
                    if (l1 > j1)
                    {
                        j = i1;
                        if (i2 > 0)
                        {
                            j = i1;
                            if (k != i1)
                            {
                                return i2;
                            }
                        }
                    }
                }
                continue; /* Loop/switch isn't completed */
            }
            k2 = i2;
            if (j1 >= 0)
            {
                k2 = i2;
                if (l1 >= j1)
                {
                    k2 = k;
                }
            }
            l1++;
            i2 = k2;
            obj = view;
        }

        return k;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void a(int j, View view)
    {
        boolean flag1 = true;
        Drawable drawable = getSelector();
        boolean flag;
        if (drawable != null && j != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            drawable.setVisible(false, false);
        }
        b(j, view);
        if (flag)
        {
            view = a;
            float f1 = view.exactCenterX();
            float f2 = view.exactCenterY();
            if (getVisibility() != 0)
            {
                flag1 = false;
            }
            drawable.setVisible(flag1, false);
            android.support.v4.c.a.a.a(drawable, f1, f2);
        }
    }

    protected void a(int j, View view, float f1, float f2)
    {
        a(j, view);
        view = getSelector();
        if (view != null && j != -1)
        {
            android.support.v4.c.a.a.a(view, f1, f2);
        }
    }

    protected void a(Canvas canvas)
    {
        if (!a.isEmpty())
        {
            Drawable drawable = getSelector();
            if (drawable != null)
            {
                drawable.setBounds(a);
                drawable.draw(canvas);
            }
        }
    }

    protected boolean a()
    {
        return false;
    }

    protected void b()
    {
        Drawable drawable = getSelector();
        if (drawable != null && c())
        {
            drawable.setState(getDrawableState());
        }
    }

    protected void b(int j, View view)
    {
        Rect rect = a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left = rect.left - b;
        rect.top = rect.top - c;
        rect.right = rect.right + d;
        rect.bottom = rect.bottom + e;
        boolean flag;
        flag = h.getBoolean(this);
        if (view.isEnabled() == flag)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        view = h;
        if (!flag)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            view.set(this, Boolean.valueOf(flag));
        }
        // Misplaced declaration of an exception variable
        catch (View view)
        {
            view.printStackTrace();
            return;
        }
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        refreshDrawableState();
    }

    protected boolean c()
    {
        return a() && isPressed();
    }

    protected void dispatchDraw(Canvas canvas)
    {
        a(canvas);
        super.dispatchDraw(canvas);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        setSelectorEnabled(true);
        b();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 0: default 24
    //                   0 30;
           goto _L1 _L2
_L1:
        return super.onTouchEvent(motionevent);
_L2:
        f = pointToPosition((int)motionevent.getX(), (int)motionevent.getY());
        if (true) goto _L1; else goto _L3
_L3:
    }

    public void setSelector(Drawable drawable)
    {
        Object obj;
        if (drawable != null)
        {
            obj = new a(drawable);
        } else
        {
            obj = null;
        }
        i = ((a) (obj));
        super.setSelector(i);
        obj = new Rect();
        if (drawable != null)
        {
            drawable.getPadding(((Rect) (obj)));
        }
        b = ((Rect) (obj)).left;
        c = ((Rect) (obj)).top;
        d = ((Rect) (obj)).right;
        e = ((Rect) (obj)).bottom;
    }

    protected void setSelectorEnabled(boolean flag)
    {
        if (i != null)
        {
            i.a(flag);
        }
    }

}
