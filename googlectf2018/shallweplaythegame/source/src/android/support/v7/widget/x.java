// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.h.o;
import android.support.v4.h.p;
import android.support.v7.b.a.b;
import android.support.v7.view.d;
import android.support.v7.view.menu.s;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

// Referenced classes of package android.support.v7.widget:
//            aw, g, ah, as, 
//            aj, bc

public class x extends Spinner
    implements o
{
    private static class a
        implements ListAdapter, SpinnerAdapter
    {

        private SpinnerAdapter a;
        private ListAdapter b;

        public boolean areAllItemsEnabled()
        {
            ListAdapter listadapter = b;
            if (listadapter != null)
            {
                return listadapter.areAllItemsEnabled();
            } else
            {
                return true;
            }
        }

        public int getCount()
        {
            if (a == null)
            {
                return 0;
            } else
            {
                return a.getCount();
            }
        }

        public View getDropDownView(int j, View view, ViewGroup viewgroup)
        {
            if (a == null)
            {
                return null;
            } else
            {
                return a.getDropDownView(j, view, viewgroup);
            }
        }

        public Object getItem(int j)
        {
            if (a == null)
            {
                return null;
            } else
            {
                return a.getItem(j);
            }
        }

        public long getItemId(int j)
        {
            if (a == null)
            {
                return -1L;
            } else
            {
                return a.getItemId(j);
            }
        }

        public int getItemViewType(int j)
        {
            return 0;
        }

        public View getView(int j, View view, ViewGroup viewgroup)
        {
            return getDropDownView(j, view, viewgroup);
        }

        public int getViewTypeCount()
        {
            return 1;
        }

        public boolean hasStableIds()
        {
            return a != null && a.hasStableIds();
        }

        public boolean isEmpty()
        {
            return getCount() == 0;
        }

        public boolean isEnabled(int j)
        {
            ListAdapter listadapter = b;
            if (listadapter != null)
            {
                return listadapter.isEnabled(j);
            } else
            {
                return true;
            }
        }

        public void registerDataSetObserver(DataSetObserver datasetobserver)
        {
            if (a != null)
            {
                a.registerDataSetObserver(datasetobserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver datasetobserver)
        {
            if (a != null)
            {
                a.unregisterDataSetObserver(datasetobserver);
            }
        }

        public a(SpinnerAdapter spinneradapter, android.content.res.Resources.Theme theme)
        {
            a = spinneradapter;
            if (spinneradapter instanceof ListAdapter)
            {
                b = (ListAdapter)spinneradapter;
            }
            if (theme != null)
            {
                if (android.os.Build.VERSION.SDK_INT >= 23 && (spinneradapter instanceof ThemedSpinnerAdapter))
                {
                    spinneradapter = (ThemedSpinnerAdapter)spinneradapter;
                    if (spinneradapter.getDropDownViewTheme() != theme)
                    {
                        spinneradapter.setDropDownViewTheme(theme);
                    }
                } else
                if (spinneradapter instanceof as)
                {
                    spinneradapter = (as)spinneradapter;
                    if (spinneradapter.a() == null)
                    {
                        spinneradapter.a(theme);
                        return;
                    }
                }
            }
        }
    }

    private class b extends aj
    {

        ListAdapter a;
        final x b;
        private CharSequence h;
        private final Rect i = new Rect();

        static void a(b b1)
        {
            b1.super.a();
        }

        public void a()
        {
            boolean flag = d();
            f();
            h(2);
            super.a();
            e().setChoiceMode(1);
            i(b.getSelectedItemPosition());
            ViewTreeObserver viewtreeobserver;
            if (!flag)
            {
                if ((viewtreeobserver = b.getViewTreeObserver()) != null)
                {
                    android.view.ViewTreeObserver.OnGlobalLayoutListener ongloballayoutlistener = new android.view.ViewTreeObserver.OnGlobalLayoutListener(this) {

                        final b a;

                        public void onGlobalLayout()
                        {
                            if (!a.a(a.b))
                            {
                                a.c();
                                return;
                            } else
                            {
                                a.f();
                                b.a(a);
                                return;
                            }
                        }

            
            {
                a = b1;
                super();
            }
                    };
                    viewtreeobserver.addOnGlobalLayoutListener(ongloballayoutlistener);
                    a(new android.widget.PopupWindow.OnDismissListener(this, ongloballayoutlistener) {

                        final android.view.ViewTreeObserver.OnGlobalLayoutListener a;
                        final b b;

                        public void onDismiss()
                        {
                            ViewTreeObserver viewtreeobserver = b.b.getViewTreeObserver();
                            if (viewtreeobserver != null)
                            {
                                viewtreeobserver.removeGlobalOnLayoutListener(a);
                            }
                        }

            
            {
                b = b1;
                a = ongloballayoutlistener;
                super();
            }
                    });
                    return;
                }
            }
        }

        public void a(ListAdapter listadapter)
        {
            super.a(listadapter);
            a = listadapter;
        }

        public void a(CharSequence charsequence)
        {
            h = charsequence;
        }

        boolean a(View view)
        {
            return p.m(view) && view.getGlobalVisibleRect(i);
        }

        public CharSequence b()
        {
            return h;
        }

        void f()
        {
            Drawable drawable = h();
            int j;
            int i1;
            int j1;
            int k1;
            if (drawable != null)
            {
                drawable.getPadding(android.support.v7.widget.x.b(b));
                int k;
                int l;
                if (bc.a(b))
                {
                    j = android.support.v7.widget.x.b(b).right;
                } else
                {
                    j = -android.support.v7.widget.x.b(b).left;
                }
            } else
            {
                Rect rect = android.support.v7.widget.x.b(b);
                android.support.v7.widget.x.b(b).right = 0;
                rect.left = 0;
                j = 0;
            }
            i1 = b.getPaddingLeft();
            j1 = b.getPaddingRight();
            k1 = b.getWidth();
            if (x.c(b) == -2)
            {
                k = b.a((SpinnerAdapter)a, h());
                l = b.getContext().getResources().getDisplayMetrics().widthPixels - android.support.v7.widget.x.b(b).left - android.support.v7.widget.x.b(b).right;
                if (k > l)
                {
                    k = l;
                }
                g(Math.max(k, k1 - i1 - j1));
            } else
            if (x.c(b) == -1)
            {
                g(k1 - i1 - j1);
            } else
            {
                g(x.c(b));
            }
            if (bc.a(b))
            {
                j = (k1 - j1 - l()) + j;
            } else
            {
                j += i1;
            }
            c(j);
        }

        public b(Context context, AttributeSet attributeset, int j)
        {
            b = x.this;
            super(context, attributeset, j);
            b(x.this);
            a(true);
            a(0);
            a(new _cls1(this, x.this));
        }
    }


    private static final int a[] = {
        0x10102f1
    };
    private final g b;
    private final Context c;
    private ah d;
    private SpinnerAdapter e;
    private final boolean f;
    private b g;
    private int h;
    private final Rect i;

    public x(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.spinnerStyle);
    }

    public x(Context context, AttributeSet attributeset, int j)
    {
        this(context, attributeset, j, -1);
    }

    public x(Context context, AttributeSet attributeset, int j, int k)
    {
        this(context, attributeset, j, k, null);
    }

    public x(Context context, AttributeSet attributeset, int j, int k, android.content.res.Resources.Theme theme)
    {
        Object obj;
        int j1;
        super(context, attributeset, j);
        i = new Rect();
        aw aw1 = aw.a(context, attributeset, android.support.v7.a.a.j.Spinner, j, 0);
        b = new g(this);
        int l;
        if (theme != null)
        {
            c = new d(context, theme);
        } else
        {
            int i1 = aw1.g(android.support.v7.a.a.j.Spinner_popupTheme, 0);
            if (i1 != 0)
            {
                c = new d(context, i1);
            } else
            {
                if (android.os.Build.VERSION.SDK_INT < 23)
                {
                    theme = context;
                } else
                {
                    theme = null;
                }
                c = theme;
            }
        }
        if (c == null) goto _L2; else goto _L1
_L1:
        j1 = k;
        if (k != -1) goto _L4; else goto _L3
_L3:
        if (android.os.Build.VERSION.SDK_INT < 11) goto _L6; else goto _L5
_L5:
        obj = context.obtainStyledAttributes(attributeset, a, j, 0);
        l = k;
        theme = ((android.content.res.Resources.Theme) (obj));
        if (!((TypedArray) (obj)).hasValue(0))
        {
            break MISSING_BLOCK_LABEL_128;
        }
        theme = ((android.content.res.Resources.Theme) (obj));
        l = ((TypedArray) (obj)).getInt(0, 0);
        j1 = l;
        if (obj != null)
        {
            ((TypedArray) (obj)).recycle();
            j1 = l;
        }
_L4:
        if (j1 == 1)
        {
            theme = new b(c, attributeset, j);
            obj = aw.a(c, attributeset, android.support.v7.a.a.j.Spinner, j, 0);
            h = ((aw) (obj)).f(android.support.v7.a.a.j.Spinner_android_dropDownWidth, -2);
            theme.a(((aw) (obj)).a(android.support.v7.a.a.j.Spinner_android_popupBackground));
            theme.a(aw1.d(android.support.v7.a.a.j.Spinner_android_prompt));
            ((aw) (obj)).a();
            g = theme;
            d = new ah(this, theme) {

                final b a;
                final x b;

                public s a()
                {
                    return a;
                }

                public boolean b()
                {
                    if (!x.a(b).d())
                    {
                        x.a(b).a();
                    }
                    return true;
                }

            
            {
                b = x.this;
                a = b1;
                super(view);
            }
            };
        }
_L2:
        theme = aw1.f(android.support.v7.a.a.j.Spinner_android_entries);
        if (theme != null)
        {
            context = new ArrayAdapter(context, 0x1090008, theme);
            context.setDropDownViewResource(android.support.v7.a.a.g.support_simple_spinner_dropdown_item);
            setAdapter(context);
        }
        aw1.a();
        f = true;
        if (e != null)
        {
            setAdapter(e);
            e = null;
        }
        b.a(attributeset, j);
        return;
        Exception exception;
        exception;
        obj = null;
_L8:
        theme = ((android.content.res.Resources.Theme) (obj));
        Log.i("AppCompatSpinner", "Could not read android:spinnerMode", exception);
        j1 = k;
        if (obj != null)
        {
            ((TypedArray) (obj)).recycle();
            j1 = k;
        }
          goto _L4
        context;
        theme = null;
_L7:
        if (theme != null)
        {
            theme.recycle();
        }
        throw context;
_L6:
        j1 = 1;
          goto _L4
        context;
          goto _L7
        exception;
          goto _L8
    }

    static b a(x x1)
    {
        return x1.g;
    }

    static Rect b(x x1)
    {
        return x1.i;
    }

    static int c(x x1)
    {
        return x1.h;
    }

    int a(SpinnerAdapter spinneradapter, Drawable drawable)
    {
        if (spinneradapter == null)
        {
            return 0;
        }
        int j1 = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int k1 = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int j = Math.max(0, getSelectedItemPosition());
        int l1 = Math.min(spinneradapter.getCount(), j + 15);
        int k = Math.max(0, j - (15 - (l1 - j)));
        View view = null;
        int l = 0;
        j = 0;
        for (; k < l1; k++)
        {
            int i1 = spinneradapter.getItemViewType(k);
            if (i1 != j)
            {
                view = null;
                j = i1;
            }
            view = spinneradapter.getView(k, view, this);
            if (view.getLayoutParams() == null)
            {
                view.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(j1, k1);
            l = Math.max(l, view.getMeasuredWidth());
        }

        if (drawable != null)
        {
            drawable.getPadding(i);
            return i.left + i.right + l;
        } else
        {
            return l;
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (b != null)
        {
            b.c();
        }
    }

    public int getDropDownHorizontalOffset()
    {
        if (g != null)
        {
            return g.j();
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return super.getDropDownHorizontalOffset();
        } else
        {
            return 0;
        }
    }

    public int getDropDownVerticalOffset()
    {
        if (g != null)
        {
            return g.k();
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return super.getDropDownVerticalOffset();
        } else
        {
            return 0;
        }
    }

    public int getDropDownWidth()
    {
        if (g != null)
        {
            return h;
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return super.getDropDownWidth();
        } else
        {
            return 0;
        }
    }

    public Drawable getPopupBackground()
    {
        if (g != null)
        {
            return g.h();
        }
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return super.getPopupBackground();
        } else
        {
            return null;
        }
    }

    public Context getPopupContext()
    {
        if (g != null)
        {
            return c;
        }
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            return super.getPopupContext();
        } else
        {
            return null;
        }
    }

    public CharSequence getPrompt()
    {
        if (g != null)
        {
            return g.b();
        } else
        {
            return super.getPrompt();
        }
    }

    public ColorStateList getSupportBackgroundTintList()
    {
        if (b != null)
        {
            return b.a();
        } else
        {
            return null;
        }
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode()
    {
        if (b != null)
        {
            return b.b();
        } else
        {
            return null;
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (g != null && g.d())
        {
            g.c();
        }
    }

    protected void onMeasure(int j, int k)
    {
        super.onMeasure(j, k);
        if (g != null && android.view.View.MeasureSpec.getMode(j) == 0x80000000)
        {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), android.view.View.MeasureSpec.getSize(j)), getMeasuredHeight());
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (d != null && d.onTouch(this, motionevent))
        {
            return true;
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }

    public boolean performClick()
    {
        if (g != null)
        {
            if (!g.d())
            {
                g.a();
            }
            return true;
        } else
        {
            return super.performClick();
        }
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((SpinnerAdapter)adapter);
    }

    public void setAdapter(SpinnerAdapter spinneradapter)
    {
        if (!f)
        {
            e = spinneradapter;
        } else
        {
            super.setAdapter(spinneradapter);
            if (g != null)
            {
                Context context;
                if (c == null)
                {
                    context = getContext();
                } else
                {
                    context = c;
                }
                g.a(new a(spinneradapter, context.getTheme()));
                return;
            }
        }
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        super.setBackgroundDrawable(drawable);
        if (b != null)
        {
            b.a(drawable);
        }
    }

    public void setBackgroundResource(int j)
    {
        super.setBackgroundResource(j);
        if (b != null)
        {
            b.a(j);
        }
    }

    public void setDropDownHorizontalOffset(int j)
    {
        if (g != null)
        {
            g.c(j);
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            super.setDropDownHorizontalOffset(j);
            return;
        }
    }

    public void setDropDownVerticalOffset(int j)
    {
        if (g != null)
        {
            g.d(j);
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            super.setDropDownVerticalOffset(j);
            return;
        }
    }

    public void setDropDownWidth(int j)
    {
        if (g != null)
        {
            h = j;
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            super.setDropDownWidth(j);
            return;
        }
    }

    public void setPopupBackgroundDrawable(Drawable drawable)
    {
        if (g != null)
        {
            g.a(drawable);
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            super.setPopupBackgroundDrawable(drawable);
            return;
        }
    }

    public void setPopupBackgroundResource(int j)
    {
        setPopupBackgroundDrawable(android.support.v7.b.a.b.b(getPopupContext(), j));
    }

    public void setPrompt(CharSequence charsequence)
    {
        if (g != null)
        {
            g.a(charsequence);
            return;
        } else
        {
            super.setPrompt(charsequence);
            return;
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorstatelist)
    {
        if (b != null)
        {
            b.a(colorstatelist);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (b != null)
        {
            b.a(mode);
        }
    }


    // Unreferenced inner class android/support/v7/widget/x$b$1

/* anonymous class */
    class b._cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        final x a;
        final b b;

        public void onItemClick(AdapterView adapterview, View view, int j, long l)
        {
            b.b.setSelection(j);
            if (b.b.getOnItemClickListener() != null)
            {
                b.b.performItemClick(view, j, b.a.getItemId(j));
            }
            b.c();
        }

            
            {
                b = b1;
                a = x1;
                super();
            }
    }

}
