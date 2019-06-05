// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.support.v4.h.p;
import android.support.v4.widget.NestedScrollView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import java.lang.ref.WeakReference;

// Referenced classes of package android.support.v7.app:
//            l

class AlertController
{
    public static class RecycleListView extends ListView
    {

        private final int a;
        private final int b;

        public void a(boolean flag, boolean flag1)
        {
            if (!flag1 || !flag)
            {
                int k1 = getPaddingLeft();
                int i1;
                int j1;
                int l1;
                if (flag)
                {
                    i1 = getPaddingTop();
                } else
                {
                    i1 = a;
                }
                l1 = getPaddingRight();
                if (flag1)
                {
                    j1 = getPaddingBottom();
                } else
                {
                    j1 = b;
                }
                setPadding(k1, i1, l1, j1);
            }
        }

        public RecycleListView(Context context)
        {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            context = context.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.RecycleListView);
            b = context.getDimensionPixelOffset(android.support.v7.a.a.j.RecycleListView_paddingBottomNoButtons, -1);
            a = context.getDimensionPixelOffset(android.support.v7.a.a.j.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    public static class a
    {

        public int A;
        public boolean B;
        public boolean C[];
        public boolean D;
        public boolean E;
        public int F;
        public android.content.DialogInterface.OnMultiChoiceClickListener G;
        public Cursor H;
        public String I;
        public String J;
        public android.widget.AdapterView.OnItemSelectedListener K;
        public a L;
        public boolean M;
        public final Context a;
        public final LayoutInflater b;
        public int c;
        public Drawable d;
        public int e;
        public CharSequence f;
        public View g;
        public CharSequence h;
        public CharSequence i;
        public android.content.DialogInterface.OnClickListener j;
        public CharSequence k;
        public android.content.DialogInterface.OnClickListener l;
        public CharSequence m;
        public android.content.DialogInterface.OnClickListener n;
        public boolean o;
        public android.content.DialogInterface.OnCancelListener p;
        public android.content.DialogInterface.OnDismissListener q;
        public android.content.DialogInterface.OnKeyListener r;
        public CharSequence s[];
        public ListAdapter t;
        public android.content.DialogInterface.OnClickListener u;
        public int v;
        public View w;
        public int x;
        public int y;
        public int z;

        private void b(AlertController alertcontroller)
        {
            RecycleListView recyclelistview = (RecycleListView)b.inflate(alertcontroller.l, null);
            Object obj;
            if (D)
            {
                if (H == null)
                {
                    obj = new ArrayAdapter(this, a, alertcontroller.m, 0x1020014, s, recyclelistview) {

                        final RecycleListView a;
                        final a b;

                        public View getView(int i1, View view, ViewGroup viewgroup)
                        {
                            view = super.getView(i1, view, viewgroup);
                            if (b.C != null && b.C[i1])
                            {
                                a.setItemChecked(i1, true);
                            }
                            return view;
                        }

            
            {
                b = a1;
                a = recyclelistview;
                super(context, i1, j1, acharsequence);
            }
                    };
                } else
                {
                    obj = new CursorAdapter(this, a, H, false, recyclelistview, alertcontroller) {

                        final RecycleListView a;
                        final AlertController b;
                        final a c;
                        private final int d;
                        private final int e;

                        public void bindView(View view, Context context, Cursor cursor)
                        {
                            ((CheckedTextView)view.findViewById(0x1020014)).setText(cursor.getString(d));
                            view = a;
                            int i1 = cursor.getPosition();
                            boolean flag;
                            if (cursor.getInt(e) == 1)
                            {
                                flag = true;
                            } else
                            {
                                flag = false;
                            }
                            view.setItemChecked(i1, flag);
                        }

                        public View newView(Context context, Cursor cursor, ViewGroup viewgroup)
                        {
                            return c.b.inflate(b.m, viewgroup, false);
                        }

            
            {
                c = a1;
                a = recyclelistview;
                b = alertcontroller;
                super(context, cursor, flag);
                a1 = getCursor();
                d = a1.getColumnIndexOrThrow(c.I);
                e = a1.getColumnIndexOrThrow(c.J);
            }
                    };
                }
            } else
            {
                int i1;
                if (E)
                {
                    i1 = alertcontroller.n;
                } else
                {
                    i1 = alertcontroller.o;
                }
                if (H != null)
                {
                    obj = new SimpleCursorAdapter(a, i1, H, new String[] {
                        I
                    }, new int[] {
                        0x1020014
                    });
                } else
                if (t != null)
                {
                    obj = t;
                } else
                {
                    obj = new c(a, i1, 0x1020014, s);
                }
            }
            if (L != null)
            {
                L.a(recyclelistview);
            }
            alertcontroller.j = ((ListAdapter) (obj));
            alertcontroller.k = F;
            if (u != null)
            {
                recyclelistview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(this, alertcontroller) {

                    final AlertController a;
                    final a b;

                    public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
                    {
                        b.u.onClick(a.a, i1);
                        if (!b.E)
                        {
                            a.a.dismiss();
                        }
                    }

            
            {
                b = a1;
                a = alertcontroller;
                super();
            }
                });
            } else
            if (G != null)
            {
                recyclelistview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener(this, recyclelistview, alertcontroller) {

                    final RecycleListView a;
                    final AlertController b;
                    final a c;

                    public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
                    {
                        if (c.C != null)
                        {
                            c.C[i1] = a.isItemChecked(i1);
                        }
                        c.G.onClick(b.a, i1, a.isItemChecked(i1));
                    }

            
            {
                c = a1;
                a = recyclelistview;
                b = alertcontroller;
                super();
            }
                });
            }
            if (K != null)
            {
                recyclelistview.setOnItemSelectedListener(K);
            }
            if (E)
            {
                recyclelistview.setChoiceMode(1);
            } else
            if (D)
            {
                recyclelistview.setChoiceMode(2);
            }
            alertcontroller.b = recyclelistview;
        }

        public void a(AlertController alertcontroller)
        {
            if (g == null) goto _L2; else goto _L1
_L1:
            alertcontroller.b(g);
_L10:
            if (h != null)
            {
                alertcontroller.b(h);
            }
            if (i != null)
            {
                alertcontroller.a(-1, i, j, null);
            }
            if (k != null)
            {
                alertcontroller.a(-2, k, l, null);
            }
            if (m != null)
            {
                alertcontroller.a(-3, m, n, null);
            }
            if (s != null || H != null || t != null)
            {
                b(alertcontroller);
            }
            if (w == null) goto _L4; else goto _L3
_L3:
            if (!B) goto _L6; else goto _L5
_L5:
            alertcontroller.a(w, x, y, z, A);
_L8:
            return;
_L2:
            if (f != null)
            {
                alertcontroller.a(f);
            }
            if (d != null)
            {
                alertcontroller.a(d);
            }
            if (c != 0)
            {
                alertcontroller.b(c);
            }
            if (e != 0)
            {
                alertcontroller.b(alertcontroller.c(e));
            }
            continue; /* Loop/switch isn't completed */
_L6:
            alertcontroller.c(w);
            return;
_L4:
            if (v == 0) goto _L8; else goto _L7
_L7:
            alertcontroller.a(v);
            return;
            if (true) goto _L10; else goto _L9
_L9:
        }

        public a(Context context)
        {
            c = 0;
            e = 0;
            B = false;
            F = -1;
            M = true;
            a = context;
            o = true;
            b = (LayoutInflater)context.getSystemService("layout_inflater");
        }
    }

    public static interface a.a
    {

        public abstract void a(ListView listview);
    }

    private static final class b extends Handler
    {

        private WeakReference a;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            case 0: // '\0'
            default:
                return;

            case -3: 
            case -2: 
            case -1: 
                ((android.content.DialogInterface.OnClickListener)message.obj).onClick((DialogInterface)a.get(), message.what);
                return;

            case 1: // '\001'
                ((DialogInterface)message.obj).dismiss();
                break;
            }
        }

        public b(DialogInterface dialoginterface)
        {
            a = new WeakReference(dialoginterface);
        }
    }

    private static class c extends ArrayAdapter
    {

        public long getItemId(int i1)
        {
            return (long)i1;
        }

        public boolean hasStableIds()
        {
            return true;
        }

        public c(Context context, int i1, int j1, CharSequence acharsequence[])
        {
            super(context, i1, j1, acharsequence);
        }
    }


    private boolean A;
    private CharSequence B;
    private CharSequence C;
    private CharSequence D;
    private int E;
    private Drawable F;
    private ImageView G;
    private TextView H;
    private TextView I;
    private View J;
    private int K;
    private int L;
    private boolean M;
    private int N;
    private final android.view.View.OnClickListener O = new android.view.View.OnClickListener() {

        final AlertController a;

        public void onClick(View view)
        {
            if (view == a.c && a.d != null)
            {
                view = Message.obtain(a.d);
            } else
            if (view == a.e && a.f != null)
            {
                view = Message.obtain(a.f);
            } else
            if (view == a.g && a.h != null)
            {
                view = Message.obtain(a.h);
            } else
            {
                view = null;
            }
            if (view != null)
            {
                view.sendToTarget();
            }
            a.p.obtainMessage(1, a.a).sendToTarget();
        }

            
            {
                a = AlertController.this;
                super();
            }
    };
    final l a;
    ListView b;
    Button c;
    Message d;
    Button e;
    Message f;
    Button g;
    Message h;
    NestedScrollView i;
    ListAdapter j;
    int k;
    int l;
    int m;
    int n;
    int o;
    Handler p;
    private final Context q;
    private final Window r;
    private CharSequence s;
    private CharSequence t;
    private View u;
    private int v;
    private int w;
    private int x;
    private int y;
    private int z;

    public AlertController(Context context, l l1, Window window)
    {
        A = false;
        E = 0;
        k = -1;
        N = 0;
        q = context;
        a = l1;
        r = window;
        p = new b(l1);
        context = context.obtainStyledAttributes(null, android.support.v7.a.a.j.AlertDialog, android.support.v7.a.a.a.alertDialogStyle, 0);
        K = context.getResourceId(android.support.v7.a.a.j.AlertDialog_android_layout, 0);
        L = context.getResourceId(android.support.v7.a.a.j.AlertDialog_buttonPanelSideLayout, 0);
        l = context.getResourceId(android.support.v7.a.a.j.AlertDialog_listLayout, 0);
        m = context.getResourceId(android.support.v7.a.a.j.AlertDialog_multiChoiceItemLayout, 0);
        n = context.getResourceId(android.support.v7.a.a.j.AlertDialog_singleChoiceItemLayout, 0);
        o = context.getResourceId(android.support.v7.a.a.j.AlertDialog_listItemLayout, 0);
        M = context.getBoolean(android.support.v7.a.a.j.AlertDialog_showTitle, true);
        context.recycle();
        l1.a(1);
    }

    private ViewGroup a(View view, View view1)
    {
        if (view == null)
        {
            android.view.ViewParent viewparent;
            if (view1 instanceof ViewStub)
            {
                view = ((ViewStub)view1).inflate();
            } else
            {
                view = view1;
            }
            return (ViewGroup)view;
        }
        if (view1 != null)
        {
            viewparent = view1.getParent();
            if (viewparent instanceof ViewGroup)
            {
                ((ViewGroup)viewparent).removeView(view1);
            }
        }
        if (view instanceof ViewStub)
        {
            view = ((ViewStub)view).inflate();
        }
        return (ViewGroup)view;
    }

    static void a(View view, View view1, View view2)
    {
        boolean flag = false;
        int i1;
        if (view1 != null)
        {
            if (view.canScrollVertically(-1))
            {
                i1 = 0;
            } else
            {
                i1 = 4;
            }
            view1.setVisibility(i1);
        }
        if (view2 != null)
        {
            if (view.canScrollVertically(1))
            {
                i1 = ((flag) ? 1 : 0);
            } else
            {
                i1 = 4;
            }
            view2.setVisibility(i1);
        }
    }

    private void a(ViewGroup viewgroup)
    {
        boolean flag = false;
        View view;
        if (u != null)
        {
            view = u;
        } else
        if (v != 0)
        {
            view = LayoutInflater.from(q).inflate(v, viewgroup, false);
        } else
        {
            view = null;
        }
        if (view != null)
        {
            flag = true;
        }
        if (!flag || !a(view))
        {
            r.setFlags(0x20000, 0x20000);
        }
        if (flag)
        {
            FrameLayout framelayout = (FrameLayout)r.findViewById(android.support.v7.a.a.f.custom);
            framelayout.addView(view, new android.view.ViewGroup.LayoutParams(-1, -1));
            if (A)
            {
                framelayout.setPadding(w, x, y, z);
            }
            if (b != null)
            {
                ((android.support.v7.widget.ai.a)viewgroup.getLayoutParams()).g = 0.0F;
            }
            return;
        } else
        {
            viewgroup.setVisibility(8);
            return;
        }
    }

    private void a(ViewGroup viewgroup, View view, int i1, int j1)
    {
        View view1 = null;
        View view3 = r.findViewById(android.support.v7.a.a.f.scrollIndicatorUp);
        View view2 = r.findViewById(android.support.v7.a.a.f.scrollIndicatorDown);
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            android.support.v4.h.p.a(view, i1, j1);
            if (view3 != null)
            {
                viewgroup.removeView(view3);
            }
            if (view2 != null)
            {
                viewgroup.removeView(view2);
            }
        } else
        {
            view = view3;
            if (view3 != null)
            {
                view = view3;
                if ((i1 & 1) == 0)
                {
                    viewgroup.removeView(view3);
                    view = null;
                }
            }
            if (view2 != null && (i1 & 2) == 0)
            {
                viewgroup.removeView(view2);
            } else
            {
                view1 = view2;
            }
            if (view != null || view1 != null)
            {
                if (t != null)
                {
                    i.setOnScrollChangeListener(new android.support.v4.widget.NestedScrollView.b(view, view1) {

                        final View a;
                        final View b;
                        final AlertController c;

                        public void a(NestedScrollView nestedscrollview, int k1, int l1, int i2, int j2)
                        {
                            AlertController.a(nestedscrollview, a, b);
                        }

            
            {
                c = AlertController.this;
                a = view;
                b = view1;
                super();
            }
                    });
                    i.post(new Runnable(view, view1) {

                        final View a;
                        final View b;
                        final AlertController c;

                        public void run()
                        {
                            AlertController.a(c.i, a, b);
                        }

            
            {
                c = AlertController.this;
                a = view;
                b = view1;
                super();
            }
                    });
                    return;
                }
                if (b != null)
                {
                    b.setOnScrollListener(new android.widget.AbsListView.OnScrollListener(view, view1) {

                        final View a;
                        final View b;
                        final AlertController c;

                        public void onScroll(AbsListView abslistview, int k1, int l1, int i2)
                        {
                            AlertController.a(abslistview, a, b);
                        }

                        public void onScrollStateChanged(AbsListView abslistview, int k1)
                        {
                        }

            
            {
                c = AlertController.this;
                a = view;
                b = view1;
                super();
            }
                    });
                    b.post(new Runnable(view, view1) {

                        final View a;
                        final View b;
                        final AlertController c;

                        public void run()
                        {
                            AlertController.a(c.b, a, b);
                        }

            
            {
                c = AlertController.this;
                a = view;
                b = view1;
                super();
            }
                    });
                    return;
                }
                if (view != null)
                {
                    viewgroup.removeView(view);
                }
                if (view1 != null)
                {
                    viewgroup.removeView(view1);
                    return;
                }
            }
        }
    }

    private void a(Button button)
    {
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)button.getLayoutParams();
        layoutparams.gravity = 1;
        layoutparams.weight = 0.5F;
        button.setLayoutParams(layoutparams);
    }

    private static boolean a(Context context)
    {
        TypedValue typedvalue = new TypedValue();
        context.getTheme().resolveAttribute(android.support.v7.a.a.a.alertDialogCenterButtons, typedvalue, true);
        return typedvalue.data != 0;
    }

    static boolean a(View view)
    {
        if (view.onCheckIsTextEditor())
        {
            return true;
        }
        if (!(view instanceof ViewGroup))
        {
            return false;
        }
        view = (ViewGroup)view;
        for (int i1 = view.getChildCount(); i1 > 0;)
        {
            int j1 = i1 - 1;
            i1 = j1;
            if (a(view.getChildAt(j1)))
            {
                return true;
            }
        }

        return false;
    }

    private int b()
    {
        if (L == 0)
        {
            return K;
        }
        if (N == 1)
        {
            return L;
        } else
        {
            return K;
        }
    }

    private void b(ViewGroup viewgroup)
    {
        if (J != null)
        {
            android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-1, -2);
            viewgroup.addView(J, 0, layoutparams);
            r.findViewById(android.support.v7.a.a.f.title_template).setVisibility(8);
            return;
        }
        G = (ImageView)r.findViewById(0x1020006);
        boolean flag;
        if (!TextUtils.isEmpty(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag && M)
        {
            H = (TextView)r.findViewById(android.support.v7.a.a.f.alertTitle);
            H.setText(s);
            if (E != 0)
            {
                G.setImageResource(E);
                return;
            }
            if (F != null)
            {
                G.setImageDrawable(F);
                return;
            } else
            {
                H.setPadding(G.getPaddingLeft(), G.getPaddingTop(), G.getPaddingRight(), G.getPaddingBottom());
                G.setVisibility(8);
                return;
            }
        } else
        {
            r.findViewById(android.support.v7.a.a.f.title_template).setVisibility(8);
            G.setVisibility(8);
            viewgroup.setVisibility(8);
            return;
        }
    }

    private void c()
    {
        Object obj4 = r.findViewById(android.support.v7.a.a.f.parentPanel);
        Object obj3 = ((View) (obj4)).findViewById(android.support.v7.a.a.f.topPanel);
        Object obj2 = ((View) (obj4)).findViewById(android.support.v7.a.a.f.contentPanel);
        Object obj = ((View) (obj4)).findViewById(android.support.v7.a.a.f.buttonPanel);
        obj4 = (ViewGroup)((View) (obj4)).findViewById(android.support.v7.a.a.f.customPanel);
        a(((ViewGroup) (obj4)));
        View view4 = ((ViewGroup) (obj4)).findViewById(android.support.v7.a.a.f.topPanel);
        View view3 = ((ViewGroup) (obj4)).findViewById(android.support.v7.a.a.f.contentPanel);
        View view2 = ((ViewGroup) (obj4)).findViewById(android.support.v7.a.a.f.buttonPanel);
        obj3 = a(view4, ((View) (obj3)));
        obj2 = a(view3, ((View) (obj2)));
        obj = a(view2, ((View) (obj)));
        c(((ViewGroup) (obj2)));
        d(((ViewGroup) (obj)));
        b(((ViewGroup) (obj3)));
        int i1;
        boolean flag;
        boolean flag1;
        if (obj4 != null && ((ViewGroup) (obj4)).getVisibility() != 8)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (obj3 != null && ((ViewGroup) (obj3)).getVisibility() != 8)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (obj != null && ((ViewGroup) (obj)).getVisibility() != 8)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (!flag1 && obj2 != null)
        {
            View view = ((ViewGroup) (obj2)).findViewById(android.support.v7.a.a.f.textSpacerNoButtons);
            if (view != null)
            {
                view.setVisibility(0);
            }
        }
        if (flag)
        {
            if (i != null)
            {
                i.setClipToPadding(true);
            }
            View view1 = null;
            if (t != null || b != null)
            {
                view1 = ((ViewGroup) (obj3)).findViewById(android.support.v7.a.a.f.titleDividerNoCustom);
            }
            if (view1 != null)
            {
                view1.setVisibility(0);
            }
        } else
        if (obj2 != null)
        {
            obj1 = ((ViewGroup) (obj2)).findViewById(android.support.v7.a.a.f.textSpacerNoTitle);
            if (obj1 != null)
            {
                ((View) (obj1)).setVisibility(0);
            }
        }
        if (b instanceof RecycleListView)
        {
            ((RecycleListView)b).a(flag, flag1);
        }
        if (i1 == 0)
        {
            Object obj1;
            if (b != null)
            {
                obj1 = b;
            } else
            {
                obj1 = i;
            }
            if (obj1 != null)
            {
                byte byte0;
                if (flag)
                {
                    i1 = 1;
                } else
                {
                    i1 = 0;
                }
                if (flag1)
                {
                    byte0 = 2;
                } else
                {
                    byte0 = 0;
                }
                a(((ViewGroup) (obj2)), ((View) (obj1)), byte0 | i1, 3);
            }
        }
        obj1 = b;
        if (obj1 != null && j != null)
        {
            ((ListView) (obj1)).setAdapter(j);
            i1 = k;
            if (i1 > -1)
            {
                ((ListView) (obj1)).setItemChecked(i1, true);
                ((ListView) (obj1)).setSelection(i1);
            }
        }
    }

    private void c(ViewGroup viewgroup)
    {
        i = (NestedScrollView)r.findViewById(android.support.v7.a.a.f.scrollView);
        i.setFocusable(false);
        i.setNestedScrollingEnabled(false);
        I = (TextView)viewgroup.findViewById(0x102000b);
        if (I == null)
        {
            return;
        }
        if (t != null)
        {
            I.setText(t);
            return;
        }
        I.setVisibility(8);
        i.removeView(I);
        if (b != null)
        {
            viewgroup = (ViewGroup)i.getParent();
            int i1 = viewgroup.indexOfChild(i);
            viewgroup.removeViewAt(i1);
            viewgroup.addView(b, i1, new android.view.ViewGroup.LayoutParams(-1, -1));
            return;
        } else
        {
            viewgroup.setVisibility(8);
            return;
        }
    }

    private void d(ViewGroup viewgroup)
    {
        boolean flag = true;
        c = (Button)viewgroup.findViewById(0x1020019);
        c.setOnClickListener(O);
        int i1;
        if (TextUtils.isEmpty(B))
        {
            c.setVisibility(8);
            i1 = 0;
        } else
        {
            c.setText(B);
            c.setVisibility(0);
            i1 = 1;
        }
        e = (Button)viewgroup.findViewById(0x102001a);
        e.setOnClickListener(O);
        if (TextUtils.isEmpty(C))
        {
            e.setVisibility(8);
        } else
        {
            e.setText(C);
            e.setVisibility(0);
            i1 |= 2;
        }
        g = (Button)viewgroup.findViewById(0x102001b);
        g.setOnClickListener(O);
        if (TextUtils.isEmpty(D))
        {
            g.setVisibility(8);
        } else
        {
            g.setText(D);
            g.setVisibility(0);
            i1 |= 4;
        }
        if (a(q))
        {
            if (i1 == 1)
            {
                a(c);
            } else
            if (i1 == 2)
            {
                a(e);
            } else
            if (i1 == 4)
            {
                a(g);
            }
        }
        if (i1 != 0)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        if (i1 == 0)
        {
            viewgroup.setVisibility(8);
        }
    }

    public void a()
    {
        int i1 = b();
        a.setContentView(i1);
        c();
    }

    public void a(int i1)
    {
        u = null;
        v = i1;
        A = false;
    }

    public void a(int i1, CharSequence charsequence, android.content.DialogInterface.OnClickListener onclicklistener, Message message)
    {
        Message message1 = message;
        if (message == null)
        {
            message1 = message;
            if (onclicklistener != null)
            {
                message1 = p.obtainMessage(i1, onclicklistener);
            }
        }
        switch (i1)
        {
        default:
            throw new IllegalArgumentException("Button does not exist");

        case -1: 
            B = charsequence;
            d = message1;
            return;

        case -2: 
            C = charsequence;
            f = message1;
            return;

        case -3: 
            D = charsequence;
            h = message1;
            return;
        }
    }

    public void a(Drawable drawable)
    {
label0:
        {
            F = drawable;
            E = 0;
            if (G != null)
            {
                if (drawable == null)
                {
                    break label0;
                }
                G.setVisibility(0);
                G.setImageDrawable(drawable);
            }
            return;
        }
        G.setVisibility(8);
    }

    public void a(View view, int i1, int j1, int k1, int l1)
    {
        u = view;
        v = 0;
        A = true;
        w = i1;
        x = j1;
        y = k1;
        z = l1;
    }

    public void a(CharSequence charsequence)
    {
        s = charsequence;
        if (H != null)
        {
            H.setText(charsequence);
        }
    }

    public boolean a(int i1, KeyEvent keyevent)
    {
        return i != null && i.a(keyevent);
    }

    public void b(int i1)
    {
label0:
        {
            F = null;
            E = i1;
            if (G != null)
            {
                if (i1 == 0)
                {
                    break label0;
                }
                G.setVisibility(0);
                G.setImageResource(E);
            }
            return;
        }
        G.setVisibility(8);
    }

    public void b(View view)
    {
        J = view;
    }

    public void b(CharSequence charsequence)
    {
        t = charsequence;
        if (I != null)
        {
            I.setText(charsequence);
        }
    }

    public boolean b(int i1, KeyEvent keyevent)
    {
        return i != null && i.a(keyevent);
    }

    public int c(int i1)
    {
        TypedValue typedvalue = new TypedValue();
        q.getTheme().resolveAttribute(i1, typedvalue, true);
        return typedvalue.resourceId;
    }

    public void c(View view)
    {
        u = view;
        v = 0;
        A = false;
    }
}
