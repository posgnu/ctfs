// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.h.c;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

// Referenced classes of package android.support.v7.widget:
//            aj, e, ai, aw

public class ActivityChooserView extends ViewGroup
{
    public static class InnerLayout extends ai
    {

        private static final int a[] = {
            0x10100d4
        };


        public InnerLayout(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            context = aw.a(context, attributeset, a);
            setBackgroundDrawable(context.a(0));
            context.a();
        }
    }

    private class a extends BaseAdapter
    {

        final ActivityChooserView a;
        private e b;
        private int c;
        private boolean d;
        private boolean e;
        private boolean f;

        public int a()
        {
            int i1 = 0;
            int k1 = c;
            c = 0x7fffffff;
            int l1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            int i2 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            int j2 = getCount();
            View view = null;
            int j1 = 0;
            for (; i1 < j2; i1++)
            {
                view = getView(i1, view, null);
                view.measure(l1, i2);
                j1 = Math.max(j1, view.getMeasuredWidth());
            }

            c = k1;
            return j1;
        }

        public void a(int i1)
        {
            if (c != i1)
            {
                c = i1;
                notifyDataSetChanged();
            }
        }

        public void a(e e1)
        {
            e e2 = a.a.d();
            if (e2 != null && a.isShown())
            {
                e2.unregisterObserver(a.e);
            }
            b = e1;
            if (e1 != null && a.isShown())
            {
                e1.registerObserver(a.e);
            }
            notifyDataSetChanged();
        }

        public void a(boolean flag)
        {
            if (f != flag)
            {
                f = flag;
                notifyDataSetChanged();
            }
        }

        public void a(boolean flag, boolean flag1)
        {
            if (d != flag || e != flag1)
            {
                d = flag;
                e = flag1;
                notifyDataSetChanged();
            }
        }

        public ResolveInfo b()
        {
            return b.b();
        }

        public int c()
        {
            return b.a();
        }

        public e d()
        {
            return b;
        }

        public boolean e()
        {
            return d;
        }

        public int getCount()
        {
            int j1 = b.a();
            int i1 = j1;
            if (!d)
            {
                i1 = j1;
                if (b.b() != null)
                {
                    i1 = j1 - 1;
                }
            }
            j1 = Math.min(i1, c);
            i1 = j1;
            if (f)
            {
                i1 = j1 + 1;
            }
            return i1;
        }

        public Object getItem(int i1)
        {
            int j1;
            switch (getItemViewType(i1))
            {
            default:
                throw new IllegalArgumentException();

            case 1: // '\001'
                return null;

            case 0: // '\0'
                j1 = i1;
                break;
            }
            if (!d)
            {
                j1 = i1;
                if (b.b() != null)
                {
                    j1 = i1 + 1;
                }
            }
            return b.a(j1);
        }

        public long getItemId(int i1)
        {
            return (long)i1;
        }

        public int getItemViewType(int i1)
        {
            return !f || i1 != getCount() - 1 ? 0 : 1;
        }

        public View getView(int i1, View view, ViewGroup viewgroup)
        {
            getItemViewType(i1);
            JVM INSTR tableswitch 0 1: default 28
        //                       0 107
        //                       1 36;
               goto _L1 _L2 _L3
_L1:
            throw new IllegalArgumentException();
_L3:
            if (view == null) goto _L5; else goto _L4
_L4:
            View view1 = view;
            if (view.getId() == 1) goto _L6; else goto _L5
_L5:
            view1 = LayoutInflater.from(a.getContext()).inflate(android.support.v7.a.a.g.abc_activity_chooser_view_list_item, viewgroup, false);
            view1.setId(1);
            ((TextView)view1.findViewById(android.support.v7.a.a.f.title)).setText(a.getContext().getString(android.support.v7.a.a.h.abc_activity_chooser_view_see_all));
_L6:
            return view1;
_L2:
            if (view == null) goto _L8; else goto _L7
_L7:
            view1 = view;
            if (view.getId() == android.support.v7.a.a.f.list_item) goto _L9; else goto _L8
_L8:
            view1 = LayoutInflater.from(a.getContext()).inflate(android.support.v7.a.a.g.abc_activity_chooser_view_list_item, viewgroup, false);
_L9:
            view = a.getContext().getPackageManager();
            viewgroup = (ImageView)view1.findViewById(android.support.v7.a.a.f.icon);
            ResolveInfo resolveinfo = (ResolveInfo)getItem(i1);
            viewgroup.setImageDrawable(resolveinfo.loadIcon(view));
            ((TextView)view1.findViewById(android.support.v7.a.a.f.title)).setText(resolveinfo.loadLabel(view));
            if (d && i1 == 0 && e)
            {
                view1.setActivated(true);
                return view1;
            } else
            {
                view1.setActivated(false);
                return view1;
            }
        }

        public int getViewTypeCount()
        {
            return 3;
        }
    }

    private class b
        implements android.view.View.OnClickListener, android.view.View.OnLongClickListener, android.widget.AdapterView.OnItemClickListener, android.widget.PopupWindow.OnDismissListener
    {

        final ActivityChooserView a;

        private void a()
        {
            if (a.f != null)
            {
                a.f.onDismiss();
            }
        }

        public void onClick(View view)
        {
            if (view == a.c)
            {
                a.b();
                view = a.a.b();
                int i1 = a.a.d().a(view);
                view = a.a.d().b(i1);
                if (view != null)
                {
                    view.addFlags(0x80000);
                    a.getContext().startActivity(view);
                }
                return;
            }
            if (view == a.b)
            {
                a.g = false;
                a.a(a.h);
                return;
            } else
            {
                throw new IllegalArgumentException();
            }
        }

        public void onDismiss()
        {
            a();
            if (a.d != null)
            {
                a.d.a(false);
            }
        }

        public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            ((a)adapterview.getAdapter()).getItemViewType(i1);
            JVM INSTR tableswitch 0 1: default 32
        //                       0 50
        //                       1 40;
               goto _L1 _L2 _L3
_L1:
            throw new IllegalArgumentException();
_L3:
            a.a(0x7fffffff);
_L5:
            return;
_L2:
            a.b();
            if (!a.g)
            {
                break; /* Loop/switch isn't completed */
            }
            if (i1 > 0)
            {
                a.a.d().c(i1);
                return;
            }
            if (true) goto _L5; else goto _L4
_L4:
            if (!a.a.e())
            {
                i1++;
            }
            adapterview = a.a.d().b(i1);
            if (adapterview != null)
            {
                adapterview.addFlags(0x80000);
                a.getContext().startActivity(adapterview);
                return;
            }
            if (true) goto _L5; else goto _L6
_L6:
        }

        public boolean onLongClick(View view)
        {
            if (view == a.c)
            {
                if (a.a.getCount() > 0)
                {
                    a.g = true;
                    a.a(a.h);
                }
                return true;
            } else
            {
                throw new IllegalArgumentException();
            }
        }
    }


    final a a;
    final FrameLayout b;
    final FrameLayout c;
    c d;
    final DataSetObserver e;
    android.widget.PopupWindow.OnDismissListener f;
    boolean g;
    int h;
    private final b i;
    private final ai j;
    private final ImageView k;
    private final int l;
    private final android.view.ViewTreeObserver.OnGlobalLayoutListener m;
    private aj n;
    private boolean o;
    private int p;

    void a(int i1)
    {
        if (a.d() == null)
        {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(m);
        aj aj1;
        int j1;
        int k1;
        boolean flag;
        if (c.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k1 = a.c();
        if (flag)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        if (i1 != 0x7fffffff && k1 > j1 + i1)
        {
            a.a(true);
            a.a(i1 - 1);
        } else
        {
            a.a(false);
            a.a(i1);
        }
        aj1 = getListPopupWindow();
        if (!aj1.d())
        {
            if (g || !flag)
            {
                a.a(true, flag);
            } else
            {
                a.a(false, false);
            }
            aj1.g(Math.min(a.a(), l));
            aj1.a();
            if (d != null)
            {
                d.a(true);
            }
            aj1.e().setContentDescription(getContext().getString(android.support.v7.a.a.h.abc_activitychooserview_choose_application));
            aj1.e().setSelector(new ColorDrawable(0));
        }
    }

    public boolean a()
    {
        if (c() || !o)
        {
            return false;
        } else
        {
            g = false;
            a(h);
            return true;
        }
    }

    public boolean b()
    {
        if (c())
        {
            getListPopupWindow().c();
            ViewTreeObserver viewtreeobserver = getViewTreeObserver();
            if (viewtreeobserver.isAlive())
            {
                viewtreeobserver.removeGlobalOnLayoutListener(m);
            }
        }
        return true;
    }

    public boolean c()
    {
        return getListPopupWindow().d();
    }

    public e getDataModel()
    {
        return a.d();
    }

    aj getListPopupWindow()
    {
        if (n == null)
        {
            n = new aj(getContext());
            n.a(a);
            n.b(this);
            n.a(true);
            n.a(i);
            n.a(i);
        }
        return n;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        e e1 = a.d();
        if (e1 != null)
        {
            e1.registerObserver(e);
        }
        o = true;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        Object obj = a.d();
        if (obj != null)
        {
            ((e) (obj)).unregisterObserver(e);
        }
        obj = getViewTreeObserver();
        if (((ViewTreeObserver) (obj)).isAlive())
        {
            ((ViewTreeObserver) (obj)).removeGlobalOnLayoutListener(m);
        }
        if (c())
        {
            b();
        }
        o = false;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        j.layout(0, 0, k1 - i1, l1 - j1);
        if (!c())
        {
            b();
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        ai ai1 = j;
        int k1 = j1;
        if (c.getVisibility() != 0)
        {
            k1 = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(j1), 0x40000000);
        }
        measureChild(ai1, i1, k1);
        setMeasuredDimension(ai1.getMeasuredWidth(), ai1.getMeasuredHeight());
    }

    public void setActivityChooserModel(e e1)
    {
        a.a(e1);
        if (c())
        {
            b();
            a();
        }
    }

    public void setDefaultActionButtonContentDescription(int i1)
    {
        p = i1;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i1)
    {
        String s = getContext().getString(i1);
        k.setContentDescription(s);
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable)
    {
        k.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i1)
    {
        h = i1;
    }

    public void setOnDismissListener(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        f = ondismisslistener;
    }

    public void setProvider(c c1)
    {
        d = c1;
    }
}
