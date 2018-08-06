// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Bundle;
import android.support.v4.a.w;
import android.support.v4.h.n;
import android.support.v4.h.p;
import android.support.v4.h.r;
import android.support.v4.h.t;
import android.support.v4.h.v;
import android.support.v4.widget.i;
import android.support.v7.view.b;
import android.support.v7.view.d;
import android.support.v7.view.e;
import android.support.v7.view.menu.f;
import android.support.v7.view.menu.h;
import android.support.v7.widget.ActionBarContextView;
import android.support.v7.widget.ContentFrameLayout;
import android.support.v7.widget.ViewStubCompat;
import android.support.v7.widget.ac;
import android.support.v7.widget.ag;
import android.support.v7.widget.bb;
import android.support.v7.widget.bc;
import android.support.v7.widget.l;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package android.support.v7.app:
//            f, o, d, a, 
//            m, r

class k extends android.support.v7.app.f
    implements android.support.v7.view.menu.h.a, android.view.LayoutInflater.Factory2
{
    private final class a
        implements android.support.v7.view.menu.o.a
    {

        final k a;

        public void a(h h1, boolean flag)
        {
            a.b(h1);
        }

        public boolean a(h h1)
        {
            android.view.Window.Callback callback = a.q();
            if (callback != null)
            {
                callback.onMenuOpened(108, h1);
            }
            return true;
        }

        a()
        {
            a = k.this;
            super();
        }
    }

    class b
        implements android.support.v7.view.b.a
    {

        final k a;
        private android.support.v7.view.b.a b;

        public void a(android.support.v7.view.b b1)
        {
            b.a(b1);
            if (a.o != null)
            {
                a.b.getDecorView().removeCallbacks(a.p);
            }
            if (a.n != null)
            {
                a.t();
                a.q = android.support.v4.h.p.d(a.n).a(0.0F);
                a.q.a(new t(this) {

                    final b a;

                    public void b(View view)
                    {
                        a.a.n.setVisibility(8);
                        if (a.a.o == null) goto _L2; else goto _L1
_L1:
                        a.a.o.dismiss();
_L4:
                        a.a.n.removeAllViews();
                        a.a.q.a(null);
                        a.a.q = null;
                        return;
_L2:
                        if (a.a.n.getParent() instanceof View)
                        {
                            android.support.v4.h.p.g((View)a.a.n.getParent());
                        }
                        if (true) goto _L4; else goto _L3
_L3:
                    }

            
            {
                a = b1;
                super();
            }
                });
            }
            if (a.e != null)
            {
                a.e.b(a.m);
            }
            a.m = null;
        }

        public boolean a(android.support.v7.view.b b1, Menu menu)
        {
            return b.a(b1, menu);
        }

        public boolean a(android.support.v7.view.b b1, MenuItem menuitem)
        {
            return b.a(b1, menuitem);
        }

        public boolean b(android.support.v7.view.b b1, Menu menu)
        {
            return b.b(b1, menu);
        }

        public b(android.support.v7.view.b.a a1)
        {
            a = k.this;
            super();
            b = a1;
        }
    }

    private class c extends ContentFrameLayout
    {

        final k a;

        private boolean a(int j, int i1)
        {
            return j < -5 || i1 < -5 || j > getWidth() + 5 || i1 > getHeight() + 5;
        }

        public boolean dispatchKeyEvent(KeyEvent keyevent)
        {
            return a.a(keyevent) || super.dispatchKeyEvent(keyevent);
        }

        public boolean onInterceptTouchEvent(MotionEvent motionevent)
        {
            if (motionevent.getAction() == 0 && a((int)motionevent.getX(), (int)motionevent.getY()))
            {
                a.e(0);
                return true;
            } else
            {
                return super.onInterceptTouchEvent(motionevent);
            }
        }

        public void setBackgroundResource(int j)
        {
            setBackgroundDrawable(android.support.v7.b.a.b.b(getContext(), j));
        }

        public c(Context context)
        {
            a = k.this;
            super(context);
        }
    }

    protected static final class d
    {

        int a;
        int b;
        int c;
        int d;
        int e;
        int f;
        ViewGroup g;
        View h;
        View i;
        h j;
        f k;
        Context l;
        boolean m;
        boolean n;
        boolean o;
        public boolean p;
        boolean q;
        boolean r;
        Bundle s;

        android.support.v7.view.menu.p a(android.support.v7.view.menu.o.a a1)
        {
            if (j == null)
            {
                return null;
            }
            if (k == null)
            {
                k = new f(l, android.support.v7.a.a.g.abc_list_menu_item_layout);
                k.a(a1);
                j.a(k);
            }
            return k.a(g);
        }

        void a(Context context)
        {
            TypedValue typedvalue = new TypedValue();
            android.content.res.Resources.Theme theme = context.getResources().newTheme();
            theme.setTo(context.getTheme());
            theme.resolveAttribute(android.support.v7.a.a.a.actionBarPopupTheme, typedvalue, true);
            if (typedvalue.resourceId != 0)
            {
                theme.applyStyle(typedvalue.resourceId, true);
            }
            theme.resolveAttribute(android.support.v7.a.a.a.panelMenuListTheme, typedvalue, true);
            if (typedvalue.resourceId != 0)
            {
                theme.applyStyle(typedvalue.resourceId, true);
            } else
            {
                theme.applyStyle(android.support.v7.a.a.i.Theme_AppCompat_CompactMenu, true);
            }
            context = new android.support.v7.view.d(context, 0);
            context.getTheme().setTo(theme);
            l = context;
            context = context.obtainStyledAttributes(android.support.v7.a.a.j.AppCompatTheme);
            b = context.getResourceId(android.support.v7.a.a.j.AppCompatTheme_panelBackground, 0);
            f = context.getResourceId(android.support.v7.a.a.j.AppCompatTheme_android_windowAnimationStyle, 0);
            context.recycle();
        }

        void a(h h1)
        {
            if (h1 != j)
            {
                if (j != null)
                {
                    j.b(k);
                }
                j = h1;
                if (h1 != null && k != null)
                {
                    h1.a(k);
                    return;
                }
            }
        }

        public boolean a()
        {
            boolean flag1 = true;
            boolean flag;
            if (h == null)
            {
                flag = false;
            } else
            {
                flag = flag1;
                if (i == null)
                {
                    flag = flag1;
                    if (k.a().getCount() <= 0)
                    {
                        return false;
                    }
                }
            }
            return flag;
        }

        d(int i1)
        {
            a = i1;
            q = false;
        }
    }

    private final class e
        implements android.support.v7.view.menu.o.a
    {

        final k a;

        public void a(h h1, boolean flag)
        {
label0:
            {
                h h2 = h1.p();
                k k1;
                boolean flag1;
                if (h2 != h1)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                k1 = a;
                if (flag1)
                {
                    h1 = h2;
                }
                h1 = k1.a(h1);
                if (h1 != null)
                {
                    if (!flag1)
                    {
                        break label0;
                    }
                    a.a(((d) (h1)).a, h1, h2);
                    a.a(h1, true);
                }
                return;
            }
            a.a(h1, flag);
        }

        public boolean a(h h1)
        {
            if (h1 == null && a.h)
            {
                android.view.Window.Callback callback = a.q();
                if (callback != null && !a.p())
                {
                    callback.onMenuOpened(108, h1);
                }
            }
            return true;
        }

        e()
        {
            a = k.this;
            super();
        }
    }


    private static final boolean t;
    private View A;
    private boolean B;
    private boolean C;
    private boolean D;
    private d E[];
    private d F;
    private boolean G;
    private final Runnable H = new Runnable() {

        final k a;

        public void run()
        {
            if ((a.s & 1) != 0)
            {
                a.f(0);
            }
            if ((a.s & 0x1000) != 0)
            {
                a.f(108);
            }
            a.r = false;
            a.s = 0;
        }

            
            {
                a = k.this;
                super();
            }
    };
    private boolean I;
    private Rect J;
    private Rect K;
    private m L;
    android.support.v7.view.b m;
    ActionBarContextView n;
    PopupWindow o;
    Runnable p;
    r q;
    boolean r;
    int s;
    private ac u;
    private a v;
    private e w;
    private boolean x;
    private ViewGroup y;
    private TextView z;

    k(Context context, Window window, android.support.v7.app.d d1)
    {
        super(context, window, d1);
        q = null;
    }

    private void a(d d1, KeyEvent keyevent)
    {
        byte byte0 = -1;
        if (!d1.o && !p()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (d1.a != 0)
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = a;
        boolean flag;
        boolean flag1;
        if ((((Context) (obj)).getResources().getConfiguration().screenLayout & 0xf) == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (((Context) (obj)).getApplicationInfo().targetSdkVersion >= 11)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag && flag1) goto _L1; else goto _L3
_L3:
        WindowManager windowmanager;
        obj = q();
        if (obj != null && !((android.view.Window.Callback) (obj)).onMenuOpened(d1.a, d1.j))
        {
            a(d1, true);
            return;
        }
        windowmanager = (WindowManager)a.getSystemService("window");
        if (windowmanager == null || !b(d1, keyevent)) goto _L1; else goto _L4
_L4:
        if (d1.g != null && !d1.q) goto _L6; else goto _L5
_L5:
        if (d1.g != null) goto _L8; else goto _L7
_L7:
        if (!a(d1) || d1.g == null) goto _L1; else goto _L9
_L9:
        if (!c(d1) || !d1.a()) goto _L1; else goto _L10
_L10:
        int j;
        keyevent = d1.h.getLayoutParams();
        if (keyevent == null)
        {
            keyevent = new android.view.ViewGroup.LayoutParams(-2, -2);
        }
        j = d1.b;
        d1.g.setBackgroundResource(j);
        ViewParent viewparent = d1.h.getParent();
        if (viewparent != null && (viewparent instanceof ViewGroup))
        {
            ((ViewGroup)viewparent).removeView(d1.h);
        }
        d1.g.addView(d1.h, keyevent);
        if (!d1.h.hasFocus())
        {
            d1.h.requestFocus();
        }
        j = -2;
_L14:
        d1.n = false;
        keyevent = new android.view.WindowManager.LayoutParams(j, -2, d1.d, d1.e, 1002, 0x820000, -3);
        keyevent.gravity = d1.c;
        keyevent.windowAnimations = d1.f;
        windowmanager.addView(d1.g, keyevent);
        d1.o = true;
        return;
_L8:
        if (d1.q && d1.g.getChildCount() > 0)
        {
            d1.g.removeAllViews();
        }
          goto _L9
_L6:
        if (d1.i == null) goto _L12; else goto _L11
_L11:
        keyevent = d1.i.getLayoutParams();
        if (keyevent == null) goto _L12; else goto _L13
_L13:
        j = byte0;
        if (((android.view.ViewGroup.LayoutParams) (keyevent)).width == -1) goto _L14; else goto _L12
_L12:
        j = -2;
          goto _L14
    }

    private void a(h h1, boolean flag)
    {
        if (u == null || !u.e() || ViewConfiguration.get(a).hasPermanentMenuKey() && !u.g())
        {
            break MISSING_BLOCK_LABEL_214;
        }
        h1 = q();
        if (u.f() && flag) goto _L2; else goto _L1
_L1:
        if (h1 != null && !p())
        {
            if (r && (s & 1) != 0)
            {
                b.getDecorView().removeCallbacks(H);
                H.run();
            }
            d d1 = a(0, true);
            if (d1.j != null && !d1.r && h1.onPreparePanel(0, d1.i, d1.j))
            {
                h1.onMenuOpened(108, d1.j);
                u.h();
            }
        }
_L4:
        return;
_L2:
        u.i();
        if (p()) goto _L4; else goto _L3
_L3:
        h1.onPanelClosed(108, a(0, true).j);
        return;
        h1 = a(0, true);
        h1.q = true;
        a(((d) (h1)), false);
        a(((d) (h1)), ((KeyEvent) (null)));
        return;
    }

    private boolean a(d d1)
    {
        d1.a(n());
        d1.g = new c(d1.l);
        d1.c = 81;
        return true;
    }

    private boolean a(d d1, int j, KeyEvent keyevent, int i1)
    {
        boolean flag;
        boolean flag2;
        flag2 = false;
        flag = false;
        if (!keyevent.isSystem()) goto _L2; else goto _L1
_L1:
        flag2 = flag;
_L4:
        return flag2;
_L2:
        boolean flag1;
label0:
        {
            if (!d1.m)
            {
                flag1 = flag2;
                if (!b(d1, keyevent))
                {
                    break label0;
                }
            }
            flag1 = flag2;
            if (d1.j != null)
            {
                flag1 = d1.j.performShortcut(j, keyevent, i1);
            }
        }
        flag2 = flag1;
        if (flag1)
        {
            flag2 = flag1;
            if ((i1 & 1) == 0)
            {
                flag2 = flag1;
                if (u == null)
                {
                    a(d1, true);
                    return flag1;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean a(ViewParent viewparent)
    {
        if (viewparent == null)
        {
            return false;
        }
        View view = b.getDecorView();
        do
        {
            if (viewparent == null)
            {
                return true;
            }
            if (viewparent == view || !(viewparent instanceof View) || android.support.v4.h.p.m((View)viewparent))
            {
                return false;
            }
            viewparent = viewparent.getParent();
        } while (true);
    }

    private boolean b(d d1)
    {
        Context context = a;
        if (d1.a != 0 && d1.a != 108 || u == null) goto _L2; else goto _L1
_L1:
        Object obj;
        TypedValue typedvalue = new TypedValue();
        android.content.res.Resources.Theme theme1 = context.getTheme();
        theme1.resolveAttribute(android.support.v7.a.a.a.actionBarTheme, typedvalue, true);
        obj = null;
        android.content.res.Resources.Theme theme;
        if (typedvalue.resourceId != 0)
        {
            obj = context.getResources().newTheme();
            ((android.content.res.Resources.Theme) (obj)).setTo(theme1);
            ((android.content.res.Resources.Theme) (obj)).applyStyle(typedvalue.resourceId, true);
            ((android.content.res.Resources.Theme) (obj)).resolveAttribute(android.support.v7.a.a.a.actionBarWidgetTheme, typedvalue, true);
        } else
        {
            theme1.resolveAttribute(android.support.v7.a.a.a.actionBarWidgetTheme, typedvalue, true);
        }
        theme = ((android.content.res.Resources.Theme) (obj));
        if (typedvalue.resourceId != 0)
        {
            theme = ((android.content.res.Resources.Theme) (obj));
            if (obj == null)
            {
                theme = context.getResources().newTheme();
                theme.setTo(theme1);
            }
            theme.applyStyle(typedvalue.resourceId, true);
        }
        if (theme == null) goto _L2; else goto _L3
_L3:
        obj = new android.support.v7.view.d(context, 0);
        ((Context) (obj)).getTheme().setTo(theme);
_L5:
        obj = new h(((Context) (obj)));
        ((h) (obj)).a(this);
        d1.a(((h) (obj)));
        return true;
_L2:
        obj = context;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean b(d d1, KeyEvent keyevent)
    {
        if (!p()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        android.view.Window.Callback callback;
        int j;
        if (d1.m)
        {
            return true;
        }
        if (F != null && F != d1)
        {
            a(F, false);
        }
        callback = q();
        if (callback != null)
        {
            d1.i = callback.onCreatePanelView(d1.a);
        }
        if (d1.a == 0 || d1.a == 108)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (j && u != null)
        {
            u.j();
        }
        if (d1.i != null || j && (m() instanceof o))
        {
            break MISSING_BLOCK_LABEL_411;
        }
        if (d1.j != null && !d1.r)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        if (d1.j == null && (!b(d1) || d1.j == null))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (j && u != null)
        {
            if (v == null)
            {
                v = new a();
            }
            u.a(d1.j, v);
        }
        d1.j.g();
        if (callback.onCreatePanelMenu(d1.a, d1.j))
        {
            break; /* Loop/switch isn't completed */
        }
        d1.a(null);
        if (j && u != null)
        {
            u.a(null, v);
            return false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        d1.r = false;
        d1.j.g();
        if (d1.s != null)
        {
            d1.j.b(d1.s);
            d1.s = null;
        }
        if (!callback.onPreparePanel(0, d1.i, d1.j))
        {
            if (j && u != null)
            {
                u.a(null, v);
            }
            d1.j.h();
            return false;
        }
        boolean flag;
        if (keyevent != null)
        {
            j = keyevent.getDeviceId();
        } else
        {
            j = -1;
        }
        if (KeyCharacterMap.load(j).getKeyboardType() != 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d1.p = flag;
        d1.j.setQwertyMode(d1.p);
        d1.j.h();
        d1.m = true;
        d1.n = false;
        F = d1;
        return true;
    }

    private boolean c(d d1)
    {
        if (d1.i != null)
        {
            d1.h = d1.i;
            return true;
        }
        if (d1.j == null)
        {
            return false;
        }
        if (w == null)
        {
            w = new e();
        }
        d1.h = (View)d1.a(w);
        boolean flag;
        if (d1.h != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    private void d(int j)
    {
        s = s | 1 << j;
        if (!r)
        {
            android.support.v4.h.p.a(b.getDecorView(), H);
            r = true;
        }
    }

    private boolean d(int j, KeyEvent keyevent)
    {
        if (keyevent.getRepeatCount() == 0)
        {
            d d1 = a(j, true);
            if (!d1.o)
            {
                return b(d1, keyevent);
            }
        }
        return false;
    }

    private boolean e(int j, KeyEvent keyevent)
    {
        d d1;
        boolean flag1;
        flag1 = true;
        if (m != null)
        {
            return false;
        }
        d1 = a(j, true);
        if (j != 0 || u == null || !u.e() || ViewConfiguration.get(a).hasPermanentMenuKey()) goto _L2; else goto _L1
_L1:
        if (u.f()) goto _L4; else goto _L3
_L3:
        if (p() || !b(d1, keyevent)) goto _L6; else goto _L5
_L5:
        boolean flag = u.h();
_L8:
        if (flag)
        {
            keyevent = (AudioManager)a.getSystemService("audio");
            if (keyevent != null)
            {
                keyevent.playSoundEffect(0);
            } else
            {
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
            }
        }
        return flag;
_L4:
        flag = u.i();
        continue; /* Loop/switch isn't completed */
_L2:
        if (d1.o || d1.n)
        {
            flag = d1.o;
            a(d1, true);
            continue; /* Loop/switch isn't completed */
        }
        if (d1.m)
        {
            if (d1.r)
            {
                d1.m = false;
                flag = b(d1, keyevent);
            } else
            {
                flag = true;
            }
            if (flag)
            {
                a(d1, keyevent);
                flag = flag1;
                continue; /* Loop/switch isn't completed */
            }
        }
_L6:
        flag = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private int h(int j)
    {
        int i1;
        if (j == 8)
        {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i1 = 108;
        } else
        {
            i1 = j;
            if (j == 9)
            {
                Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
                return 109;
            }
        }
        return i1;
    }

    private void w()
    {
        if (!x)
        {
            y = x();
            Object obj = r();
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                b(((CharSequence) (obj)));
            }
            y();
            a(y);
            x = true;
            obj = a(0, false);
            if (!p() && (obj == null || ((d) (obj)).j == null))
            {
                d(108);
            }
        }
    }

    private ViewGroup x()
    {
        Object obj = a.obtainStyledAttributes(android.support.v7.a.a.j.AppCompatTheme);
        if (!((TypedArray) (obj)).hasValue(android.support.v7.a.a.j.AppCompatTheme_windowActionBar))
        {
            ((TypedArray) (obj)).recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (((TypedArray) (obj)).getBoolean(android.support.v7.a.a.j.AppCompatTheme_windowNoTitle, false))
        {
            c(1);
        } else
        if (((TypedArray) (obj)).getBoolean(android.support.v7.a.a.j.AppCompatTheme_windowActionBar, false))
        {
            c(108);
        }
        if (((TypedArray) (obj)).getBoolean(android.support.v7.a.a.j.AppCompatTheme_windowActionBarOverlay, false))
        {
            c(109);
        }
        if (((TypedArray) (obj)).getBoolean(android.support.v7.a.a.j.AppCompatTheme_windowActionModeOverlay, false))
        {
            c(10);
        }
        k = ((TypedArray) (obj)).getBoolean(android.support.v7.a.a.j.AppCompatTheme_android_windowIsFloating, false);
        ((TypedArray) (obj)).recycle();
        b.getDecorView();
        obj = LayoutInflater.from(a);
        ContentFrameLayout contentframelayout;
        ViewGroup viewgroup;
        if (!l)
        {
            if (k)
            {
                obj = (ViewGroup)((LayoutInflater) (obj)).inflate(android.support.v7.a.a.g.abc_dialog_title_material, null);
                i = false;
                h = false;
            } else
            if (h)
            {
                obj = new TypedValue();
                a.getTheme().resolveAttribute(android.support.v7.a.a.a.actionBarTheme, ((TypedValue) (obj)), true);
                if (((TypedValue) (obj)).resourceId != 0)
                {
                    obj = new android.support.v7.view.d(a, ((TypedValue) (obj)).resourceId);
                } else
                {
                    obj = a;
                }
                obj = (ViewGroup)LayoutInflater.from(((Context) (obj))).inflate(android.support.v7.a.a.g.abc_screen_toolbar, null);
                u = (ac)((ViewGroup) (obj)).findViewById(android.support.v7.a.a.f.decor_content_parent);
                u.setWindowCallback(q());
                if (i)
                {
                    u.a(109);
                }
                if (B)
                {
                    u.a(2);
                }
                if (C)
                {
                    u.a(5);
                }
            } else
            {
                obj = null;
            }
        } else
        {
            if (j)
            {
                obj = (ViewGroup)((LayoutInflater) (obj)).inflate(android.support.v7.a.a.g.abc_screen_simple_overlay_action_mode, null);
            } else
            {
                obj = (ViewGroup)((LayoutInflater) (obj)).inflate(android.support.v7.a.a.g.abc_screen_simple, null);
            }
            if (android.os.Build.VERSION.SDK_INT >= 21)
            {
                android.support.v4.h.p.a(((View) (obj)), new n() {

                    final k a;

                    public v a(View view1, v v1)
                    {
                        int j = v1.b();
                        int i1 = a.g(j);
                        v v2 = v1;
                        if (j != i1)
                        {
                            v2 = v1.a(v1.a(), i1, v1.c(), v1.d());
                        }
                        return android.support.v4.h.p.a(view1, v2);
                    }

            
            {
                a = k.this;
                super();
            }
                });
            } else
            {
                ((ag)obj).setOnFitSystemWindowsListener(new android.support.v7.widget.ag.a() {

                    final k a;

                    public void a(Rect rect)
                    {
                        rect.top = a.g(rect.top);
                    }

            
            {
                a = k.this;
                super();
            }
                });
            }
        }
        if (obj == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("AppCompat does not support the current theme features: { windowActionBar: ").append(h).append(", windowActionBarOverlay: ").append(i).append(", android:windowIsFloating: ").append(k).append(", windowActionModeOverlay: ").append(j).append(", windowNoTitle: ").append(l).append(" }").toString());
        }
        if (u == null)
        {
            z = (TextView)((ViewGroup) (obj)).findViewById(android.support.v7.a.a.f.title);
        }
        bc.b(((View) (obj)));
        contentframelayout = (ContentFrameLayout)((ViewGroup) (obj)).findViewById(android.support.v7.a.a.f.action_bar_activity_content);
        viewgroup = (ViewGroup)b.findViewById(0x1020002);
        if (viewgroup != null)
        {
            View view;
            for (; viewgroup.getChildCount() > 0; contentframelayout.addView(view))
            {
                view = viewgroup.getChildAt(0);
                viewgroup.removeViewAt(0);
            }

            viewgroup.setId(-1);
            contentframelayout.setId(0x1020002);
            if (viewgroup instanceof FrameLayout)
            {
                ((FrameLayout)viewgroup).setForeground(null);
            }
        }
        b.setContentView(((View) (obj)));
        contentframelayout.setAttachListener(new android.support.v7.widget.ContentFrameLayout.a() {

            final k a;

            public void a()
            {
            }

            public void b()
            {
                a.v();
            }

            
            {
                a = k.this;
                super();
            }
        });
        return ((ViewGroup) (obj));
    }

    private void y()
    {
        ContentFrameLayout contentframelayout = (ContentFrameLayout)y.findViewById(0x1020002);
        Object obj = b.getDecorView();
        contentframelayout.a(((View) (obj)).getPaddingLeft(), ((View) (obj)).getPaddingTop(), ((View) (obj)).getPaddingRight(), ((View) (obj)).getPaddingBottom());
        obj = a.obtainStyledAttributes(android.support.v7.a.a.j.AppCompatTheme);
        ((TypedArray) (obj)).getValue(android.support.v7.a.a.j.AppCompatTheme_windowMinWidthMajor, contentframelayout.getMinWidthMajor());
        ((TypedArray) (obj)).getValue(android.support.v7.a.a.j.AppCompatTheme_windowMinWidthMinor, contentframelayout.getMinWidthMinor());
        if (((TypedArray) (obj)).hasValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedWidthMajor))
        {
            ((TypedArray) (obj)).getValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedWidthMajor, contentframelayout.getFixedWidthMajor());
        }
        if (((TypedArray) (obj)).hasValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedWidthMinor))
        {
            ((TypedArray) (obj)).getValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedWidthMinor, contentframelayout.getFixedWidthMinor());
        }
        if (((TypedArray) (obj)).hasValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedHeightMajor))
        {
            ((TypedArray) (obj)).getValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedHeightMajor, contentframelayout.getFixedHeightMajor());
        }
        if (((TypedArray) (obj)).hasValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedHeightMinor))
        {
            ((TypedArray) (obj)).getValue(android.support.v7.a.a.j.AppCompatTheme_windowFixedHeightMinor, contentframelayout.getFixedHeightMinor());
        }
        ((TypedArray) (obj)).recycle();
        contentframelayout.requestLayout();
    }

    private void z()
    {
        if (x)
        {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        } else
        {
            return;
        }
    }

    protected d a(int j, boolean flag)
    {
        d ad[];
label0:
        {
            d ad1[] = E;
            if (ad1 != null)
            {
                ad = ad1;
                if (ad1.length > j)
                {
                    break label0;
                }
            }
            ad = new d[j + 1];
            if (ad1 != null)
            {
                System.arraycopy(ad1, 0, ad, 0, ad1.length);
            }
            E = ad;
        }
        d d1 = ad[j];
        if (d1 == null)
        {
            d1 = new d(j);
            ad[j] = d1;
            return d1;
        } else
        {
            return d1;
        }
    }

    d a(Menu menu)
    {
        d ad[] = E;
        int j;
        int i1;
        if (ad != null)
        {
            j = ad.length;
        } else
        {
            j = 0;
        }
        for (i1 = 0; i1 < j; i1++)
        {
            d d1 = ad[i1];
            if (d1 != null && d1.j == menu)
            {
                return d1;
            }
        }

        return null;
    }

    android.support.v7.view.b a(android.support.v7.view.b.a a1)
    {
        t();
        if (m != null)
        {
            m.c();
        }
        Object obj = a1;
        if (!(a1 instanceof b))
        {
            obj = new b(a1);
        }
        Object obj1;
        android.content.res.Resources.Theme theme;
        int j;
        boolean flag;
        if (e != null && !p())
        {
            try
            {
                a1 = e.a(((android.support.v7.view.b.a) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (android.support.v7.view.b.a a1)
            {
                a1 = null;
            }
        } else
        {
            a1 = null;
        }
        if (a1 == null) goto _L2; else goto _L1
_L1:
        m = a1;
_L4:
        if (m != null && e != null)
        {
            e.a(m);
        }
        return m;
_L2:
        if (n == null)
        {
            if (k)
            {
                obj1 = new TypedValue();
                a1 = a.getTheme();
                a1.resolveAttribute(android.support.v7.a.a.a.actionBarTheme, ((TypedValue) (obj1)), true);
                if (((TypedValue) (obj1)).resourceId != 0)
                {
                    theme = a.getResources().newTheme();
                    theme.setTo(a1);
                    theme.applyStyle(((TypedValue) (obj1)).resourceId, true);
                    a1 = new android.support.v7.view.d(a, 0);
                    a1.getTheme().setTo(theme);
                } else
                {
                    a1 = a;
                }
                n = new ActionBarContextView(a1);
                o = new PopupWindow(a1, null, android.support.v7.a.a.a.actionModePopupWindowStyle);
                i.a(o, 2);
                o.setContentView(n);
                o.setWidth(-1);
                a1.getTheme().resolveAttribute(android.support.v7.a.a.a.actionBarSize, ((TypedValue) (obj1)), true);
                j = TypedValue.complexToDimensionPixelSize(((TypedValue) (obj1)).data, a1.getResources().getDisplayMetrics());
                n.setContentHeight(j);
                o.setHeight(-2);
                p = new Runnable() {

                    final k a;

                    public void run()
                    {
                        a.o.showAtLocation(a.n, 55, 0, 0);
                        a.t();
                        if (a.s())
                        {
                            a.n.setAlpha(0.0F);
                            a.q = android.support.v4.h.p.d(a.n).a(1.0F);
                            a.q.a(new t(this) {

                                final _cls5 a;

                                public void a(View view)
                                {
                                    a.a.n.setVisibility(0);
                                }

                                public void b(View view)
                                {
                                    a.a.n.setAlpha(1.0F);
                                    a.a.q.a(null);
                                    a.a.q = null;
                                }

            
            {
                a = _pcls5;
                super();
            }
                            });
                            return;
                        } else
                        {
                            a.n.setAlpha(1.0F);
                            a.n.setVisibility(0);
                            return;
                        }
                    }

            
            {
                a = k.this;
                super();
            }
                };
            } else
            {
                a1 = (ViewStubCompat)y.findViewById(android.support.v7.a.a.f.action_mode_bar_stub);
                if (a1 != null)
                {
                    a1.setLayoutInflater(LayoutInflater.from(n()));
                    n = (ActionBarContextView)a1.a();
                }
            }
        }
        if (n == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        t();
        n.c();
        a1 = n.getContext();
        obj1 = n;
        if (o == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1 = new android.support.v7.view.e(a1, ((ActionBarContextView) (obj1)), ((android.support.v7.view.b.a) (obj)), flag);
        if (((android.support.v7.view.b.a) (obj)).a(a1, a1.b()))
        {
            a1.d();
            n.a(a1);
            m = a1;
            if (s())
            {
                n.setAlpha(0.0F);
                q = android.support.v4.h.p.d(n).a(1.0F);
                q.a(new t() {

                    final k a;

                    public void a(View view)
                    {
                        a.n.setVisibility(0);
                        a.n.sendAccessibilityEvent(32);
                        if (a.n.getParent() instanceof View)
                        {
                            android.support.v4.h.p.g((View)a.n.getParent());
                        }
                    }

                    public void b(View view)
                    {
                        a.n.setAlpha(1.0F);
                        a.q.a(null);
                        a.q = null;
                    }

            
            {
                a = k.this;
                super();
            }
                });
            } else
            {
                n.setAlpha(1.0F);
                n.setVisibility(0);
                n.sendAccessibilityEvent(32);
                if (n.getParent() instanceof View)
                {
                    android.support.v4.h.p.g((View)n.getParent());
                }
            }
            if (o != null)
            {
                b.getDecorView().post(p);
            }
            continue; /* Loop/switch isn't completed */
        }
        m = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public View a(int j)
    {
        w();
        return b.findViewById(j);
    }

    View a(View view, String s1, Context context, AttributeSet attributeset)
    {
        if (c instanceof android.view.LayoutInflater.Factory)
        {
            view = ((android.view.LayoutInflater.Factory)c).onCreateView(s1, context, attributeset);
            if (view != null)
            {
                return view;
            }
        }
        return null;
    }

    void a(int j, d d1, Menu menu)
    {
        d d3 = d1;
        Object obj = menu;
        if (menu == null)
        {
            d d2 = d1;
            if (d1 == null)
            {
                d2 = d1;
                if (j >= 0)
                {
                    d2 = d1;
                    if (j < E.length)
                    {
                        d2 = E[j];
                    }
                }
            }
            d3 = d2;
            obj = menu;
            if (d2 != null)
            {
                obj = d2.j;
                d3 = d2;
            }
        }
        while (d3 != null && !d3.o || p()) 
        {
            return;
        }
        c.onPanelClosed(j, ((Menu) (obj)));
    }

    void a(int j, Menu menu)
    {
        if (j == 108)
        {
            menu = a();
            if (menu != null)
            {
                menu.e(false);
            }
        } else
        if (j == 0)
        {
            menu = a(j, true);
            if (((d) (menu)).o)
            {
                a(((d) (menu)), false);
                return;
            }
        }
    }

    public void a(Configuration configuration)
    {
        if (h && x)
        {
            android.support.v7.app.a a1 = a();
            if (a1 != null)
            {
                a1.a(configuration);
            }
        }
        android.support.v7.widget.l.a().a(a);
        i();
    }

    public void a(Bundle bundle)
    {
label0:
        {
            if ((c instanceof Activity) && android.support.v4.a.w.b((Activity)c) != null)
            {
                bundle = m();
                if (bundle != null)
                {
                    break label0;
                }
                I = true;
            }
            return;
        }
        bundle.c(true);
    }

    void a(d d1, boolean flag)
    {
        if (flag && d1.a == 0 && u != null && u.f())
        {
            b(d1.j);
        } else
        {
            WindowManager windowmanager = (WindowManager)a.getSystemService("window");
            if (windowmanager != null && d1.o && d1.g != null)
            {
                windowmanager.removeView(d1.g);
                if (flag)
                {
                    a(d1.a, d1, null);
                }
            }
            d1.m = false;
            d1.n = false;
            d1.o = false;
            d1.h = null;
            d1.q = true;
            if (F == d1)
            {
                F = null;
                return;
            }
        }
    }

    public void a(h h1)
    {
        a(h1, true);
    }

    public void a(View view)
    {
        w();
        ViewGroup viewgroup = (ViewGroup)y.findViewById(0x1020002);
        viewgroup.removeAllViews();
        viewgroup.addView(view);
        c.onContentChanged();
    }

    public void a(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        w();
        ViewGroup viewgroup = (ViewGroup)y.findViewById(0x1020002);
        viewgroup.removeAllViews();
        viewgroup.addView(view, layoutparams);
        c.onContentChanged();
    }

    void a(ViewGroup viewgroup)
    {
    }

    boolean a(int j, KeyEvent keyevent)
    {
        android.support.v7.app.a a1 = a();
        if (a1 == null || !a1.a(j, keyevent)) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (F == null || !a(F, keyevent.getKeyCode(), keyevent, 1))
        {
            break; /* Loop/switch isn't completed */
        }
        if (F != null)
        {
            F.n = true;
            return true;
        }
        if (true) goto _L1; else goto _L3
_L3:
        boolean flag;
        if (F != null)
        {
            break; /* Loop/switch isn't completed */
        }
        d d1 = a(0, true);
        b(d1, keyevent);
        flag = a(d1, keyevent.getKeyCode(), keyevent, 1);
        d1.m = false;
        if (flag) goto _L1; else goto _L4
_L4:
        return false;
    }

    public boolean a(h h1, MenuItem menuitem)
    {
        android.view.Window.Callback callback = q();
        if (callback != null && !p())
        {
            h1 = a(((Menu) (h1.p())));
            if (h1 != null)
            {
                return callback.onMenuItemSelected(((d) (h1)).a, menuitem);
            }
        }
        return false;
    }

    boolean a(KeyEvent keyevent)
    {
        boolean flag = true;
        if (keyevent.getKeyCode() == 82 && c.dispatchKeyEvent(keyevent))
        {
            return true;
        }
        int j = keyevent.getKeyCode();
        if (keyevent.getAction() != 0)
        {
            flag = false;
        }
        if (flag)
        {
            return c(j, keyevent);
        } else
        {
            return b(j, keyevent);
        }
    }

    public android.support.v7.view.b b(android.support.v7.view.b.a a1)
    {
        if (a1 == null)
        {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        if (m != null)
        {
            m.c();
        }
        a1 = new b(a1);
        android.support.v7.app.a a2 = a();
        if (a2 != null)
        {
            m = a2.a(a1);
            if (m != null && e != null)
            {
                e.a(m);
            }
        }
        if (m == null)
        {
            m = a(a1);
        }
        return m;
    }

    public View b(View view, String s1, Context context, AttributeSet attributeset)
    {
        if (L == null)
        {
            L = new m();
        }
        boolean flag;
        if (t)
        {
            if (attributeset instanceof XmlPullParser)
            {
                if (((XmlPullParser)attributeset).getDepth() > 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            {
                flag = a((ViewParent)view);
            }
        } else
        {
            flag = false;
        }
        return L.a(view, s1, context, attributeset, flag, t, true, bb.a());
    }

    public void b(int j)
    {
        w();
        ViewGroup viewgroup = (ViewGroup)y.findViewById(0x1020002);
        viewgroup.removeAllViews();
        LayoutInflater.from(a).inflate(j, viewgroup);
        c.onContentChanged();
    }

    public void b(Bundle bundle)
    {
        w();
    }

    void b(h h1)
    {
        if (D)
        {
            return;
        }
        D = true;
        u.k();
        android.view.Window.Callback callback = q();
        if (callback != null && !p())
        {
            callback.onPanelClosed(108, h1);
        }
        D = false;
    }

    public void b(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        w();
        ((ViewGroup)y.findViewById(0x1020002)).addView(view, layoutparams);
        c.onContentChanged();
    }

    void b(CharSequence charsequence)
    {
        if (u != null)
        {
            u.setWindowTitle(charsequence);
        } else
        {
            if (m() != null)
            {
                m().a(charsequence);
                return;
            }
            if (z != null)
            {
                z.setText(charsequence);
                return;
            }
        }
    }

    boolean b(int j, KeyEvent keyevent)
    {
        boolean flag = true;
        j;
        JVM INSTR lookupswitch 2: default 28
    //                   4: 41
    //                   82: 32;
           goto _L1 _L2 _L3
_L1:
        flag = false;
_L5:
        return flag;
_L3:
        e(0, keyevent);
        return true;
_L2:
        boolean flag1;
        flag1 = G;
        G = false;
        keyevent = a(0, false);
        if (keyevent == null || !((d) (keyevent)).o)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (flag1) goto _L5; else goto _L4
_L4:
        a(keyevent, true);
        return true;
        if (!u()) goto _L1; else goto _L6
_L6:
        return true;
    }

    boolean b(int j, Menu menu)
    {
        if (j == 108)
        {
            menu = a();
            if (menu != null)
            {
                menu.e(true);
            }
            return true;
        } else
        {
            return false;
        }
    }

    public boolean c(int j)
    {
        j = h(j);
        if (l && j == 108)
        {
            return false;
        }
        if (h && j == 1)
        {
            h = false;
        }
        switch (j)
        {
        default:
            return b.requestFeature(j);

        case 108: // 'l'
            z();
            h = true;
            return true;

        case 109: // 'm'
            z();
            i = true;
            return true;

        case 10: // '\n'
            z();
            this.j = true;
            return true;

        case 2: // '\002'
            z();
            B = true;
            return true;

        case 5: // '\005'
            z();
            C = true;
            return true;

        case 1: // '\001'
            z();
            l = true;
            return true;
        }
    }

    boolean c(int j, KeyEvent keyevent)
    {
        boolean flag = true;
        j;
        JVM INSTR lookupswitch 2: default 28
    //                   4: 54
    //                   82: 45;
           goto _L1 _L2 _L3
_L1:
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            a(j, keyevent);
        }
        return false;
_L3:
        d(0, keyevent);
        return true;
_L2:
        if ((keyevent.getFlags() & 0x80) == 0)
        {
            flag = false;
        }
        G = flag;
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void d()
    {
        android.support.v7.app.a a1 = a();
        if (a1 != null)
        {
            a1.d(false);
        }
    }

    public void e()
    {
        android.support.v7.app.a a1 = a();
        if (a1 != null)
        {
            a1.d(true);
        }
    }

    void e(int j)
    {
        a(a(j, true), true);
    }

    public void f()
    {
        android.support.v7.app.a a1 = a();
        if (a1 != null && a1.e())
        {
            return;
        } else
        {
            d(0);
            return;
        }
    }

    void f(int j)
    {
        d d1 = a(j, true);
        if (d1.j != null)
        {
            Bundle bundle = new Bundle();
            d1.j.a(bundle);
            if (bundle.size() > 0)
            {
                d1.s = bundle;
            }
            d1.j.g();
            d1.j.clear();
        }
        d1.r = true;
        d1.q = true;
        if ((j == 108 || j == 0) && u != null)
        {
            d d2 = a(0, false);
            if (d2 != null)
            {
                d2.m = false;
                b(d2, ((KeyEvent) (null)));
            }
        }
    }

    int g(int j)
    {
        int j1 = 1;
        boolean flag = true;
        boolean flag1 = false;
        int i1;
        if (n != null && (n.getLayoutParams() instanceof android.view.ViewGroup.MarginLayoutParams))
        {
            Object obj = (android.view.ViewGroup.MarginLayoutParams)n.getLayoutParams();
            if (n.isShown())
            {
                if (J == null)
                {
                    J = new Rect();
                    K = new Rect();
                }
                Rect rect = J;
                Rect rect1 = K;
                rect.set(0, j, 0, 0);
                bc.a(y, rect, rect1);
                if (rect1.top == 0)
                {
                    i1 = j;
                } else
                {
                    i1 = 0;
                }
                if (((android.view.ViewGroup.MarginLayoutParams) (obj)).topMargin != i1)
                {
                    obj.topMargin = j;
                    if (A == null)
                    {
                        A = new View(a);
                        A.setBackgroundColor(a.getResources().getColor(android.support.v7.a.a.c.abc_input_method_navigation_guard));
                        y.addView(A, -1, new android.view.ViewGroup.LayoutParams(-1, j));
                        i1 = 1;
                    } else
                    {
                        android.view.ViewGroup.LayoutParams layoutparams = A.getLayoutParams();
                        if (layoutparams.height != j)
                        {
                            layoutparams.height = j;
                            A.setLayoutParams(layoutparams);
                        }
                        i1 = 1;
                    }
                } else
                {
                    i1 = 0;
                }
                if (A == null)
                {
                    flag = false;
                }
                j1 = j;
                if (!this.j)
                {
                    j1 = j;
                    if (flag)
                    {
                        j1 = 0;
                    }
                }
                j = j1;
                j1 = i1;
                i1 = ((flag) ? 1 : 0);
            } else
            if (((android.view.ViewGroup.MarginLayoutParams) (obj)).topMargin != 0)
            {
                obj.topMargin = 0;
                i1 = 0;
            } else
            {
                j1 = 0;
                i1 = 0;
            }
            if (j1 != 0)
            {
                n.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
            }
        } else
        {
            i1 = 0;
        }
        if (A != null)
        {
            obj = A;
            if (i1 != 0)
            {
                i1 = ((flag1) ? 1 : 0);
            } else
            {
                i1 = 8;
            }
            ((View) (obj)).setVisibility(i1);
        }
        return j;
    }

    public void g()
    {
        if (r)
        {
            b.getDecorView().removeCallbacks(H);
        }
        super.g();
        if (f != null)
        {
            f.g();
        }
    }

    public void h()
    {
        LayoutInflater layoutinflater = LayoutInflater.from(a);
        if (layoutinflater.getFactory() == null)
        {
            android.support.v4.h.e.b(layoutinflater, this);
        } else
        if (!(layoutinflater.getFactory2() instanceof k))
        {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
            return;
        }
    }

    public void l()
    {
        w();
        if (h && f == null)
        {
            if (c instanceof Activity)
            {
                f = new android.support.v7.app.r((Activity)c, i);
            } else
            if (c instanceof Dialog)
            {
                f = new android.support.v7.app.r((Dialog)c);
            }
            if (f != null)
            {
                f.c(I);
                return;
            }
        }
    }

    public final View onCreateView(View view, String s1, Context context, AttributeSet attributeset)
    {
        View view1 = a(view, s1, context, attributeset);
        if (view1 != null)
        {
            return view1;
        } else
        {
            return b(view, s1, context, attributeset);
        }
    }

    public View onCreateView(String s1, Context context, AttributeSet attributeset)
    {
        return onCreateView(null, s1, context, attributeset);
    }

    final boolean s()
    {
        return x && y != null && android.support.v4.h.p.l(y);
    }

    void t()
    {
        if (q != null)
        {
            q.b();
        }
    }

    boolean u()
    {
        if (m != null)
        {
            m.c();
        } else
        {
            android.support.v7.app.a a1 = a();
            if (a1 == null || !a1.f())
            {
                return false;
            }
        }
        return true;
    }

    void v()
    {
        if (u != null)
        {
            u.k();
        }
        if (o != null)
        {
            b.getDecorView().removeCallbacks(p);
            d d1;
            if (o.isShowing())
            {
                try
                {
                    o.dismiss();
                }
                catch (IllegalArgumentException illegalargumentexception) { }
            }
            o = null;
        }
        t();
        d1 = a(0, false);
        if (d1 != null && d1.j != null)
        {
            d1.j.close();
        }
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        t = flag;
    }
}
