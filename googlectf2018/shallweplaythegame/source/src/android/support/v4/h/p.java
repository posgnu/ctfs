// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

// Referenced classes of package android.support.v4.h:
//            v, b, n, r, 
//            o, h

public class p
{
    static class a extends j
    {

        public boolean a(View view)
        {
            return view.hasOnClickListeners();
        }

        a()
        {
        }
    }

    static class b extends a
    {

        public void a(View view, Drawable drawable)
        {
            view.setBackground(drawable);
        }

        public void a(View view, Runnable runnable)
        {
            view.postOnAnimation(runnable);
        }

        public void a(View view, Runnable runnable, long l1)
        {
            view.postOnAnimationDelayed(runnable, l1);
        }

        public void b(View view)
        {
            view.postInvalidateOnAnimation();
        }

        public int c(View view)
        {
            return view.getMinimumHeight();
        }

        public void d(View view)
        {
            view.requestFitSystemWindows();
        }

        public boolean e(View view)
        {
            return view.hasOverlappingRendering();
        }

        b()
        {
        }
    }

    static class c extends b
    {

        public int f(View view)
        {
            return view.getLayoutDirection();
        }

        public int g(View view)
        {
            return view.getWindowSystemUiVisibility();
        }

        c()
        {
        }
    }

    static class d extends c
    {

        d()
        {
        }
    }

    static class e extends d
    {

        public boolean h(View view)
        {
            return view.isLaidOut();
        }

        public boolean i(View view)
        {
            return view.isAttachedToWindow();
        }

        e()
        {
        }
    }

    static class f extends e
    {

        public v a(View view, v v1)
        {
            v1 = (WindowInsets)v.a(v1);
            WindowInsets windowinsets = view.onApplyWindowInsets(v1);
            view = v1;
            if (windowinsets != v1)
            {
                view = new WindowInsets(windowinsets);
            }
            return v.a(view);
        }

        public void a(View view, float f1)
        {
            view.setElevation(f1);
        }

        public void a(View view, ColorStateList colorstatelist)
        {
            view.setBackgroundTintList(colorstatelist);
            if (android.os.Build.VERSION.SDK_INT == 21)
            {
                colorstatelist = view.getBackground();
                boolean flag;
                if (view.getBackgroundTintList() != null && view.getBackgroundTintMode() != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (colorstatelist != null && flag)
                {
                    if (colorstatelist.isStateful())
                    {
                        colorstatelist.setState(view.getDrawableState());
                    }
                    view.setBackground(colorstatelist);
                }
            }
        }

        public void a(View view, android.graphics.PorterDuff.Mode mode)
        {
            view.setBackgroundTintMode(mode);
            if (android.os.Build.VERSION.SDK_INT == 21)
            {
                mode = view.getBackground();
                boolean flag;
                if (view.getBackgroundTintList() != null && view.getBackgroundTintMode() != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (mode != null && flag)
                {
                    if (mode.isStateful())
                    {
                        mode.setState(view.getDrawableState());
                    }
                    view.setBackground(mode);
                }
            }
        }

        public void a(View view, n n1)
        {
            if (n1 == null)
            {
                view.setOnApplyWindowInsetsListener(null);
                return;
            } else
            {
                view.setOnApplyWindowInsetsListener(new android.view.View.OnApplyWindowInsetsListener(this, n1) {

                    final n a;
                    final f b;

                    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowinsets)
                    {
                        windowinsets = v.a(windowinsets);
                        return (WindowInsets)v.a(a.a(view, windowinsets));
                    }

            
            {
                b = f1;
                a = n1;
                super();
            }
                });
                return;
            }
        }

        public void d(View view)
        {
            view.requestApplyInsets();
        }

        public String j(View view)
        {
            return view.getTransitionName();
        }

        public void k(View view)
        {
            view.stopNestedScroll();
        }

        public ColorStateList l(View view)
        {
            return view.getBackgroundTintList();
        }

        public android.graphics.PorterDuff.Mode m(View view)
        {
            return view.getBackgroundTintMode();
        }

        f()
        {
        }
    }

    static class g extends f
    {

        public void a(View view, int i1, int j1)
        {
            view.setScrollIndicators(i1, j1);
        }

        g()
        {
        }
    }

    static class h extends g
    {

        h()
        {
        }
    }

    static class i extends h
    {

        i()
        {
        }
    }

    static class j
    {

        static boolean b = false;
        private static Field c;
        private static boolean d;
        private static WeakHashMap e;
        WeakHashMap a;

        long a()
        {
            return ValueAnimator.getFrameDelay();
        }

        public v a(View view, v v)
        {
            return v;
        }

        public void a(View view, float f1)
        {
        }

        public void a(View view, int i1, int j1)
        {
        }

        public void a(View view, ColorStateList colorstatelist)
        {
            if (view instanceof o)
            {
                ((o)view).setSupportBackgroundTintList(colorstatelist);
            }
        }

        public void a(View view, android.graphics.PorterDuff.Mode mode)
        {
            if (view instanceof o)
            {
                ((o)view).setSupportBackgroundTintMode(mode);
            }
        }

        public void a(View view, Drawable drawable)
        {
            view.setBackgroundDrawable(drawable);
        }

        public void a(View view, android.support.v4.h.b b1)
        {
            if (b1 == null)
            {
                b1 = null;
            } else
            {
                b1 = b1.a();
            }
            view.setAccessibilityDelegate(b1);
        }

        public void a(View view, n n1)
        {
        }

        public void a(View view, Runnable runnable)
        {
            view.postDelayed(runnable, a());
        }

        public void a(View view, Runnable runnable, long l1)
        {
            view.postDelayed(runnable, a() + l1);
        }

        public boolean a(View view)
        {
            return false;
        }

        public void b(View view)
        {
            view.postInvalidate();
        }

        public int c(View view)
        {
            if (!d)
            {
                int i1;
                try
                {
                    c = android/view/View.getDeclaredField("mMinHeight");
                    c.setAccessible(true);
                }
                catch (NoSuchFieldException nosuchfieldexception) { }
                d = true;
            }
            if (c == null)
            {
                break MISSING_BLOCK_LABEL_50;
            }
            i1 = ((Integer)c.get(view)).intValue();
            return i1;
            view;
            return 0;
        }

        public void d(View view)
        {
        }

        public boolean e(View view)
        {
            return true;
        }

        public int f(View view)
        {
            return 0;
        }

        public int g(View view)
        {
            return 0;
        }

        public boolean h(View view)
        {
            return view.getWidth() > 0 && view.getHeight() > 0;
        }

        public boolean i(View view)
        {
            return view.getWindowToken() != null;
        }

        public String j(View view)
        {
            if (e == null)
            {
                return null;
            } else
            {
                return (String)e.get(view);
            }
        }

        public void k(View view)
        {
            if (view instanceof android.support.v4.h.h)
            {
                ((android.support.v4.h.h)view).stopNestedScroll();
            }
        }

        public ColorStateList l(View view)
        {
            if (view instanceof o)
            {
                return ((o)view).getSupportBackgroundTintList();
            } else
            {
                return null;
            }
        }

        public android.graphics.PorterDuff.Mode m(View view)
        {
            if (view instanceof o)
            {
                return ((o)view).getSupportBackgroundTintMode();
            } else
            {
                return null;
            }
        }

        public r n(View view)
        {
            if (a == null)
            {
                a = new WeakHashMap();
            }
            r r2 = (r)a.get(view);
            r r1 = r2;
            if (r2 == null)
            {
                r1 = new r(view);
                a.put(view, r1);
            }
            return r1;
        }


        j()
        {
            a = null;
        }
    }


    static final j a;

    public static v a(View view, v v)
    {
        return a.a(view, v);
    }

    public static void a(View view)
    {
        a.b(view);
    }

    public static void a(View view, float f1)
    {
        a.a(view, f1);
    }

    public static void a(View view, int i1, int j1)
    {
        a.a(view, i1, j1);
    }

    public static void a(View view, ColorStateList colorstatelist)
    {
        a.a(view, colorstatelist);
    }

    public static void a(View view, android.graphics.PorterDuff.Mode mode)
    {
        a.a(view, mode);
    }

    public static void a(View view, Drawable drawable)
    {
        a.a(view, drawable);
    }

    public static void a(View view, android.support.v4.h.b b1)
    {
        a.a(view, b1);
    }

    public static void a(View view, n n1)
    {
        a.a(view, n1);
    }

    public static void a(View view, Runnable runnable)
    {
        a.a(view, runnable);
    }

    public static void a(View view, Runnable runnable, long l1)
    {
        a.a(view, runnable, l1);
    }

    public static int b(View view)
    {
        return a.f(view);
    }

    public static int c(View view)
    {
        return a.c(view);
    }

    public static r d(View view)
    {
        return a.n(view);
    }

    public static String e(View view)
    {
        return a.j(view);
    }

    public static int f(View view)
    {
        return a.g(view);
    }

    public static void g(View view)
    {
        a.d(view);
    }

    public static boolean h(View view)
    {
        return a.e(view);
    }

    public static ColorStateList i(View view)
    {
        return a.l(view);
    }

    public static android.graphics.PorterDuff.Mode j(View view)
    {
        return a.m(view);
    }

    public static void k(View view)
    {
        a.k(view);
    }

    public static boolean l(View view)
    {
        return a.h(view);
    }

    public static boolean m(View view)
    {
        return a.i(view);
    }

    public static boolean n(View view)
    {
        return a.a(view);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            a = new i();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 24)
        {
            a = new h();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            a = new g();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new f();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new e();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            a = new d();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            a = new c();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 15)
        {
            a = new a();
        } else
        {
            a = new j();
        }
    }
}
