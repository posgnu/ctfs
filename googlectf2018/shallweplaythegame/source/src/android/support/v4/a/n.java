// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.g.b;
import android.support.v4.g.d;
import android.support.v4.g.e;
import android.support.v4.g.i;
import android.support.v4.h.p;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package android.support.v4.a:
//            m, h, c, s, 
//            o, l, v, p, 
//            q, d, z, j

final class n extends m
    implements android.view.LayoutInflater.Factory2
{
    private static class a extends b
    {

        View a;

        public void onAnimationEnd(Animation animation)
        {
            if (android.support.v4.h.p.m(a) || android.os.Build.VERSION.SDK_INT >= 24)
            {
                a.post(new Runnable(this) {

                    final a a;

                    public void run()
                    {
                        a.a.setLayerType(0, null);
                    }

            
            {
                a = a1;
                super();
            }
                });
            } else
            {
                a.setLayerType(0, null);
            }
            super.onAnimationEnd(animation);
        }

        a(View view, android.view.animation.Animation.AnimationListener animationlistener)
        {
            super(animationlistener);
            a = view;
        }
    }

    private static class b
        implements android.view.animation.Animation.AnimationListener
    {

        private final android.view.animation.Animation.AnimationListener a;

        public void onAnimationEnd(Animation animation)
        {
            if (a != null)
            {
                a.onAnimationEnd(animation);
            }
        }

        public void onAnimationRepeat(Animation animation)
        {
            if (a != null)
            {
                a.onAnimationRepeat(animation);
            }
        }

        public void onAnimationStart(Animation animation)
        {
            if (a != null)
            {
                a.onAnimationStart(animation);
            }
        }

        private b(android.view.animation.Animation.AnimationListener animationlistener)
        {
            a = animationlistener;
        }

    }

    private static class c
    {

        public final Animation a;
        public final Animator b;

        private c(Animator animator)
        {
            a = null;
            b = animator;
            if (animator == null)
            {
                throw new IllegalStateException("Animator cannot be null");
            } else
            {
                return;
            }
        }


        private c(Animation animation)
        {
            a = animation;
            b = null;
            if (animation == null)
            {
                throw new IllegalStateException("Animation cannot be null");
            } else
            {
                return;
            }
        }

    }

    private static class d extends AnimatorListenerAdapter
    {

        View a;

        public void onAnimationEnd(Animator animator)
        {
            a.setLayerType(0, null);
            animator.removeListener(this);
        }

        public void onAnimationStart(Animator animator)
        {
            a.setLayerType(2, null);
        }

        d(View view)
        {
            a = view;
        }
    }

    static class e
    {

        public static final int a[] = {
            0x1010003, 0x10100d0, 0x10100d1
        };

    }

    static interface f
    {

        public abstract boolean a(ArrayList arraylist, ArrayList arraylist1);
    }

    static class g
        implements h.c
    {

        private final boolean a;
        private final android.support.v4.a.c b;
        private int c;

        static boolean a(g g1)
        {
            return g1.a;
        }

        static android.support.v4.a.c b(g g1)
        {
            return g1.b;
        }

        public void a()
        {
            c = c - 1;
            if (c != 0)
            {
                return;
            } else
            {
                n.a(b.b);
                return;
            }
        }

        public void b()
        {
            c = c + 1;
        }

        public boolean c()
        {
            return c == 0;
        }

        public void d()
        {
            boolean flag1 = false;
            n n1;
            boolean flag;
            int j1;
            if (c > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            n1 = b.b;
            j1 = n1.e.size();
            for (int i1 = 0; i1 < j1; i1++)
            {
                h h1 = (h)n1.e.get(i1);
                h1.a(null);
                if (flag && h1.U())
                {
                    h1.A();
                }
            }

            n1 = b.b;
            android.support.v4.a.c c1 = b;
            boolean flag2 = a;
            if (!flag)
            {
                flag1 = true;
            }
            n.a(n1, c1, flag2, flag1, true);
        }

        public void e()
        {
            n.a(b.b, b, a, false, false);
        }

        g(android.support.v4.a.c c1, boolean flag)
        {
            a = flag;
            b = c1;
        }
    }


    static final Interpolator E = new DecelerateInterpolator(2.5F);
    static final Interpolator F = new DecelerateInterpolator(1.5F);
    static final Interpolator G = new AccelerateInterpolator(2.5F);
    static final Interpolator H = new AccelerateInterpolator(1.5F);
    static boolean a = false;
    static Field q = null;
    SparseArray A;
    ArrayList B;
    o C;
    Runnable D;
    private final CopyOnWriteArrayList I = new CopyOnWriteArrayList();
    ArrayList b;
    boolean c;
    int d;
    final ArrayList e = new ArrayList();
    SparseArray f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;
    int l;
    l m;
    j n;
    h o;
    h p;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    ArrayList w;
    ArrayList x;
    ArrayList y;
    Bundle z;

    n()
    {
        d = 0;
        l = 0;
        z = null;
        A = null;
        D = new Runnable() {

            final n a;

            public void run()
            {
                a.e();
            }

            
            {
                a = n.this;
                super();
            }
        };
    }

    private void A()
    {
        if (B != null)
        {
            for (; !B.isEmpty(); ((g)B.remove(0)).d()) { }
        }
    }

    private void B()
    {
        int i1;
        int j1;
        if (f == null)
        {
            i1 = 0;
        } else
        {
            i1 = f.size();
        }
        j1 = 0;
        while (j1 < i1) 
        {
            h h1 = (h)f.valueAt(j1);
            if (h1 != null)
            {
                if (h1.R() != null)
                {
                    int k1 = h1.T();
                    View view = h1.R();
                    h1.a(null);
                    Animation animation = view.getAnimation();
                    if (animation != null)
                    {
                        animation.cancel();
                        view.clearAnimation();
                    }
                    a(h1, k1, 0, 0, false);
                } else
                if (h1.S() != null)
                {
                    h1.S().end();
                }
            }
            j1++;
        }
    }

    private void C()
    {
        if (f != null)
        {
            for (int i1 = f.size() - 1; i1 >= 0; i1--)
            {
                if (f.valueAt(i1) == null)
                {
                    f.delete(f.keyAt(i1));
                }
            }

        }
    }

    private int a(ArrayList arraylist, ArrayList arraylist1, int i1, int j1, android.support.v4.g.b b1)
    {
        int l1 = j1 - 1;
        int k1 = j1;
        while (l1 >= i1) 
        {
            android.support.v4.a.c c1 = (android.support.v4.a.c)arraylist.get(l1);
            boolean flag1 = ((Boolean)arraylist1.get(l1)).booleanValue();
            g g1;
            boolean flag;
            if (c1.c() && !c1.a(arraylist, l1 + 1, j1))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                continue;
            }
            if (B == null)
            {
                B = new ArrayList();
            }
            g1 = new g(c1, flag1);
            B.add(g1);
            c1.a(g1);
            if (flag1)
            {
                c1.b();
            } else
            {
                c1.a(false);
            }
            k1--;
            if (l1 != k1)
            {
                arraylist.remove(l1);
                arraylist.add(k1, c1);
            }
            b(b1);
            l1--;
        }
        return k1;
    }

    static c a(Context context, float f1, float f2)
    {
        context = new AlphaAnimation(f1, f2);
        context.setInterpolator(F);
        context.setDuration(220L);
        return new c(context);
    }

    static c a(Context context, float f1, float f2, float f3, float f4)
    {
        context = new AnimationSet(false);
        Object obj = new ScaleAnimation(f1, f2, f1, f2, 1, 0.5F, 1, 0.5F);
        ((ScaleAnimation) (obj)).setInterpolator(E);
        ((ScaleAnimation) (obj)).setDuration(220L);
        context.addAnimation(((Animation) (obj)));
        obj = new AlphaAnimation(f3, f4);
        ((AlphaAnimation) (obj)).setInterpolator(F);
        ((AlphaAnimation) (obj)).setDuration(220L);
        context.addAnimation(((Animation) (obj)));
        return new c(context);
    }

    private static android.view.animation.Animation.AnimationListener a(Animation animation)
    {
        try
        {
            if (q == null)
            {
                q = android/view/animation/Animation.getDeclaredField("mListener");
                q.setAccessible(true);
            }
            animation = (android.view.animation.Animation.AnimationListener)q.get(animation);
        }
        // Misplaced declaration of an exception variable
        catch (Animation animation)
        {
            Log.e("FragmentManager", "No field with the name mListener is found in Animation class", animation);
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Animation animation)
        {
            Log.e("FragmentManager", "Cannot access Animation's mListener field", animation);
            return null;
        }
        return animation;
    }

    private void a(android.support.v4.a.c c1, boolean flag, boolean flag1, boolean flag2)
    {
        ArrayList arraylist;
        ArrayList arraylist1;
        if (flag)
        {
            c1.a(flag2);
        } else
        {
            c1.b();
        }
        arraylist = new ArrayList(1);
        arraylist1 = new ArrayList(1);
        arraylist.add(c1);
        arraylist1.add(Boolean.valueOf(flag));
        if (flag1)
        {
            android.support.v4.a.s.a(this, arraylist, arraylist1, 0, 1, true);
        }
        if (flag2)
        {
            a(l, true);
        }
        if (f != null)
        {
            int j1 = f.size();
            int i1 = 0;
            while (i1 < j1) 
            {
                h h1 = (h)f.valueAt(i1);
                if (h1 != null && h1.H != null && h1.P && c1.b(h1.x))
                {
                    if (h1.R > 0.0F)
                    {
                        h1.H.setAlpha(h1.R);
                    }
                    if (flag2)
                    {
                        h1.R = 0.0F;
                    } else
                    {
                        h1.R = -1F;
                        h1.P = false;
                    }
                }
                i1++;
            }
        }
    }

    private void a(h h1, c c1, int i1)
    {
        View view = h1.H;
        h1.b(i1);
        if (c1.a != null)
        {
            Animation animation = c1.a;
            h1.a(h1.H);
            animation.setAnimationListener(new b(a(animation), h1) {

                final h a;
                final n b;

                public void onAnimationEnd(Animation animation1)
                {
                    super.onAnimationEnd(animation1);
                    if (a.R() != null)
                    {
                        a.a(null);
                        b.a(a, a.T(), 0, 0, false);
                    }
                }

            
            {
                b = n.this;
                a = h1;
                super(animationlistener);
            }
            });
            b(view, c1);
            h1.H.startAnimation(animation);
            return;
        }
        Animator animator = c1.b;
        h1.a(c1.b);
        ViewGroup viewgroup = h1.G;
        if (viewgroup != null)
        {
            viewgroup.startViewTransition(view);
        }
        animator.addListener(new AnimatorListenerAdapter(viewgroup, view, h1) {

            final ViewGroup a;
            final View b;
            final h c;
            final n d;

            public void onAnimationEnd(Animator animator1)
            {
                if (a != null)
                {
                    a.endViewTransition(b);
                }
                if (c.S() != null)
                {
                    c.a(null);
                    d.a(c, c.T(), 0, 0, false);
                }
            }

            
            {
                d = n.this;
                a = viewgroup;
                b = view;
                c = h1;
                super();
            }
        });
        animator.setTarget(h1.H);
        b(h1.H, c1);
        animator.start();
    }

    static void a(n n1)
    {
        n1.y();
    }

    static void a(n n1, android.support.v4.a.c c1, boolean flag, boolean flag1, boolean flag2)
    {
        n1.a(c1, flag, flag1, flag2);
    }

    private static void a(o o1)
    {
        if (o1 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Object obj = o1.a();
        if (obj != null)
        {
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext();)
            {
                ((h)((Iterator) (obj)).next()).C = true;
            }

        }
        o1 = o1.b();
        if (o1 != null)
        {
            o1 = o1.iterator();
            while (o1.hasNext()) 
            {
                a((o)o1.next());
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void a(android.support.v4.g.b b1)
    {
        int j1 = b1.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            h h1 = (h)b1.b(i1);
            if (!h1.k)
            {
                View view = h1.i();
                h1.R = view.getAlpha();
                view.setAlpha(0.0F);
            }
        }

    }

    private void a(RuntimeException runtimeexception)
    {
        Log.e("FragmentManager", runtimeexception.getMessage());
        Log.e("FragmentManager", "Activity state:");
        Object obj = new PrintWriter(new android.support.v4.g.e("FragmentManager"));
        if (m != null)
        {
            try
            {
                m.a("  ", null, ((PrintWriter) (obj)), new String[0]);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                Log.e("FragmentManager", "Failed dumping state", ((Throwable) (obj)));
            }
        } else
        {
            try
            {
                a("  ", ((FileDescriptor) (null)), ((PrintWriter) (obj)), new String[0]);
            }
            catch (Exception exception)
            {
                Log.e("FragmentManager", "Failed dumping state", exception);
            }
        }
        throw runtimeexception;
    }

    private void a(ArrayList arraylist, ArrayList arraylist1)
    {
        g g1;
        int i1;
        int j1;
        int k1;
        if (B == null)
        {
            i1 = 0;
        } else
        {
            i1 = B.size();
        }
        j1 = 0;
        if (j1 >= i1)
        {
            break MISSING_BLOCK_LABEL_237;
        }
        g1 = (g)B.get(j1);
        if (arraylist == null || g.a(g1))
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = arraylist.indexOf(android.support.v4.a.g.b(g1));
        if (k1 == -1 || !((Boolean)arraylist1.get(k1)).booleanValue())
        {
            break; /* Loop/switch isn't completed */
        }
        g1.e();
_L4:
        j1++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_13;
_L1:
        int l1;
        int i2;
label0:
        {
            if (!g1.c())
            {
                i2 = j1;
                l1 = i1;
                if (arraylist == null)
                {
                    break MISSING_BLOCK_LABEL_226;
                }
                i2 = j1;
                l1 = i1;
                if (!android.support.v4.a.g.b(g1).a(arraylist, 0, arraylist.size()))
                {
                    break MISSING_BLOCK_LABEL_226;
                }
            }
            B.remove(j1);
            i2 = j1 - 1;
            l1 = i1 - 1;
            if (arraylist == null || g.a(g1))
            {
                break label0;
            }
            i1 = arraylist.indexOf(android.support.v4.a.g.b(g1));
            if (i1 == -1 || !((Boolean)arraylist1.get(i1)).booleanValue())
            {
                break label0;
            }
            g1.e();
            j1 = i2;
            i1 = l1;
        }
        continue; /* Loop/switch isn't completed */
        g1.d();
        j1 = i2;
        i1 = l1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(ArrayList arraylist, ArrayList arraylist1, int i1, int j1)
    {
        boolean flag1 = ((android.support.v4.a.c)arraylist.get(i1)).u;
        h h1;
        boolean flag;
        int k1;
        if (y == null)
        {
            y = new ArrayList();
        } else
        {
            y.clear();
        }
        y.addAll(e);
        h1 = v();
        k1 = i1;
        flag = false;
        while (k1 < j1) 
        {
            android.support.v4.a.c c2 = (android.support.v4.a.c)arraylist.get(k1);
            if (!((Boolean)arraylist1.get(k1)).booleanValue())
            {
                h1 = c2.a(y, h1);
            } else
            {
                h1 = c2.b(y, h1);
            }
            if (flag || c2.j)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            k1++;
        }
        y.clear();
        if (!flag1)
        {
            android.support.v4.a.s.a(this, arraylist, arraylist1, i1, j1, false);
        }
        b(arraylist, arraylist1, i1, j1);
        int l1;
        if (flag1)
        {
            android.support.v4.g.b b1 = new android.support.v4.g.b();
            b(b1);
            k1 = a(arraylist, arraylist1, i1, j1, b1);
            a(b1);
        } else
        {
            k1 = j1;
        }
        l1 = i1;
        if (k1 != i1)
        {
            l1 = i1;
            if (flag1)
            {
                android.support.v4.a.s.a(this, arraylist, arraylist1, i1, k1, true);
                a(l, true);
                l1 = i1;
            }
        }
        for (; l1 < j1; l1++)
        {
            android.support.v4.a.c c1 = (android.support.v4.a.c)arraylist.get(l1);
            if (((Boolean)arraylist1.get(l1)).booleanValue() && c1.n >= 0)
            {
                c(c1.n);
                c1.n = -1;
            }
            c1.a();
        }

        if (flag)
        {
            g();
        }
    }

    static boolean a(Animator animator)
    {
        if (animator != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        if (!(animator instanceof ValueAnimator))
        {
            break; /* Loop/switch isn't completed */
        }
        animator = ((ValueAnimator)animator).getValues();
        int i1 = 0;
        while (i1 < animator.length) 
        {
            if ("alpha".equals(animator[i1].getPropertyName()))
            {
                return true;
            }
            i1++;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (animator instanceof AnimatorSet)
        {
            animator = ((AnimatorSet)animator).getChildAnimations();
            int j1 = 0;
            while (j1 < animator.size()) 
            {
                if (a((Animator)animator.get(j1)))
                {
                    return true;
                }
                j1++;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    static boolean a(c c1)
    {
        boolean flag1 = false;
        if (!(c1.a instanceof AlphaAnimation)) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
label0:
        {
            if (!(c1.a instanceof AnimationSet))
            {
                break label0;
            }
            c1 = ((AnimationSet)c1.a).getAnimations();
            int i1 = 0;
            do
            {
                flag = flag1;
                if (i1 >= c1.size())
                {
                    break;
                }
                if (c1.get(i1) instanceof AlphaAnimation)
                {
                    return true;
                }
                i1++;
            } while (true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        return a(c1.b);
    }

    static boolean a(View view, c c1)
    {
        while (view == null || c1 == null || android.os.Build.VERSION.SDK_INT < 19 || view.getLayerType() != 0 || !android.support.v4.h.p.h(view) || !a(c1)) 
        {
            return false;
        }
        return true;
    }

    private boolean a(String s1, int i1, int j1)
    {
        boolean flag;
        e();
        c(true);
        if (p != null && i1 < 0 && s1 == null)
        {
            m m1 = p.h();
            if (m1 != null && m1.a())
            {
                return true;
            }
        }
        flag = a(w, x, s1, i1, j1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        c = true;
        b(w, x);
        z();
        f();
        C();
        return flag;
        s1;
        z();
        throw s1;
    }

    public static int b(int i1, boolean flag)
    {
        switch (i1)
        {
        default:
            return -1;

        case 4097: 
            return !flag ? 2 : 1;

        case 8194: 
            return !flag ? 4 : 3;

        case 4099: 
            break;
        }
        return !flag ? 6 : 5;
    }

    private void b(android.support.v4.g.b b1)
    {
        if (l >= 1)
        {
            int j1 = Math.min(l, 4);
            int k1 = e.size();
            int i1 = 0;
            while (i1 < k1) 
            {
                h h1 = (h)e.get(i1);
                if (h1.b < j1)
                {
                    a(h1, j1, h1.M(), h1.N(), false);
                    if (h1.H != null && !h1.z && h1.P)
                    {
                        b1.add(h1);
                    }
                }
                i1++;
            }
        }
    }

    private static void b(View view, c c1)
    {
        while (view == null || c1 == null || !a(view, c1)) 
        {
            return;
        }
        if (c1.b != null)
        {
            c1.b.addListener(new d(view));
            return;
        } else
        {
            android.view.animation.Animation.AnimationListener animationlistener = a(c1.a);
            view.setLayerType(2, null);
            c1.a.setAnimationListener(new a(view, animationlistener));
            return;
        }
    }

    private void b(ArrayList arraylist, ArrayList arraylist1)
    {
        int i1 = 0;
        if (arraylist != null && !arraylist.isEmpty())
        {
            if (arraylist1 == null || arraylist.size() != arraylist1.size())
            {
                throw new IllegalStateException("Internal error with the back stack records");
            }
            a(arraylist, arraylist1);
            int l1 = arraylist.size();
            int j1 = 0;
            for (; i1 < l1; i1++)
            {
                if (((android.support.v4.a.c)arraylist.get(i1)).u)
                {
                    continue;
                }
                if (j1 != i1)
                {
                    a(arraylist, arraylist1, j1, i1);
                }
                int k1 = i1 + 1;
                j1 = k1;
                if (((Boolean)arraylist1.get(i1)).booleanValue())
                {
                    do
                    {
                        j1 = k1;
                        if (k1 >= l1)
                        {
                            break;
                        }
                        j1 = k1;
                        if (!((Boolean)arraylist1.get(k1)).booleanValue())
                        {
                            break;
                        }
                        j1 = k1;
                        if (((android.support.v4.a.c)arraylist.get(k1)).u)
                        {
                            break;
                        }
                        k1++;
                    } while (true);
                }
                a(arraylist, arraylist1, i1, j1);
                i1 = j1;
                k1 = j1 - 1;
                j1 = i1;
                i1 = k1;
            }

            if (j1 != l1)
            {
                a(arraylist, arraylist1, j1, l1);
                return;
            }
        }
    }

    private static void b(ArrayList arraylist, ArrayList arraylist1, int i1, int j1)
    {
        while (i1 < j1) 
        {
            android.support.v4.a.c c1 = (android.support.v4.a.c)arraylist.get(i1);
            if (((Boolean)arraylist1.get(i1)).booleanValue())
            {
                c1.a(-1);
                boolean flag;
                if (i1 == j1 - 1)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                c1.a(flag);
            } else
            {
                c1.a(1);
                c1.b();
            }
            i1++;
        }
    }

    private void c(boolean flag)
    {
        if (c)
        {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (Looper.myLooper() != m.h().getLooper())
        {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!flag)
        {
            x();
        }
        if (w == null)
        {
            w = new ArrayList();
            x = new ArrayList();
        }
        c = true;
        a(((ArrayList) (null)), ((ArrayList) (null)));
        c = false;
        return;
        Exception exception;
        exception;
        c = false;
        throw exception;
    }

    private boolean c(ArrayList arraylist, ArrayList arraylist1)
    {
        this;
        JVM INSTR monitorenter ;
        if (b != null && b.size() != 0)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        this;
        JVM INSTR monitorexit ;
        return false;
        int j1 = b.size();
        int i1;
        boolean flag;
        i1 = 0;
        flag = false;
_L2:
        if (i1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        flag |= ((f)b.get(i1)).a(arraylist, arraylist1);
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        b.clear();
        m.h().removeCallbacks(D);
        this;
        JVM INSTR monitorexit ;
        return flag;
        arraylist;
        this;
        JVM INSTR monitorexit ;
        throw arraylist;
    }

    public static int d(int i1)
    {
        switch (i1)
        {
        default:
            return 0;

        case 4097: 
            return 8194;

        case 8194: 
            return 4097;

        case 4099: 
            return 4099;
        }
    }

    private void e(int i1)
    {
        c = true;
        a(i1, false);
        c = false;
        e();
        return;
        Exception exception;
        exception;
        c = false;
        throw exception;
    }

    private h p(h h1)
    {
        Object obj;
        ViewGroup viewgroup;
        viewgroup = h1.G;
        obj = h1.H;
        if (viewgroup != null && obj != null) goto _L2; else goto _L1
_L1:
        h1 = null;
_L6:
        return h1;
_L2:
        int i1 = e.indexOf(h1) - 1;
_L7:
        if (i1 < 0) goto _L4; else goto _L3
_L3:
        obj = (h)e.get(i1);
        if (((h) (obj)).G != viewgroup)
        {
            continue; /* Loop/switch isn't completed */
        }
        h1 = ((h) (obj));
        if (((h) (obj)).H != null) goto _L6; else goto _L5
_L5:
        i1--;
          goto _L7
_L4:
        return null;
    }

    private void x()
    {
        if (s)
        {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (u != null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Can not perform this action inside of ").append(u).toString());
        } else
        {
            return;
        }
    }

    private void y()
    {
        boolean flag1 = true;
        this;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (B != null && !B.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (b == null || b.size() != 1)
        {
            flag1 = false;
        }
          goto _L1
_L2:
        m.h().removeCallbacks(D);
        m.h().post(D);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L1:
        if (!flag && !flag1) goto _L3; else goto _L2
    }

    private void z()
    {
        c = false;
        x.clear();
        w.clear();
    }

    public h a(Bundle bundle, String s1)
    {
        int i1 = bundle.getInt(s1, -1);
        if (i1 == -1)
        {
            bundle = null;
        } else
        {
            h h1 = (h)f.get(i1);
            bundle = h1;
            if (h1 == null)
            {
                a(((RuntimeException) (new IllegalStateException((new StringBuilder()).append("Fragment no longer exists for key ").append(s1).append(": index ").append(i1).toString()))));
                return h1;
            }
        }
        return bundle;
    }

    public h a(String s1)
    {
        if (s1 == null) goto _L2; else goto _L1
_L1:
        int i1 = e.size() - 1;
_L11:
        if (i1 < 0) goto _L2; else goto _L3
_L3:
        h h1 = (h)e.get(i1);
        if (h1 == null || !s1.equals(h1.y)) goto _L5; else goto _L4
_L4:
        return h1;
_L5:
        i1--;
        continue; /* Loop/switch isn't completed */
_L2:
        if (f == null || s1 == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        i1 = f.size() - 1;
_L9:
        if (i1 < 0) goto _L7; else goto _L6
_L6:
        h h2;
        h2 = (h)f.valueAt(i1);
        if (h2 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        h1 = h2;
        if (s1.equals(h2.y)) goto _L4; else goto _L8
_L8:
        i1--;
          goto _L9
_L7:
        return null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    c a(h h1, int i1, boolean flag, int j1)
    {
        int k1;
        k1 = h1.M();
        Animation animation = h1.a(i1, flag, k1);
        if (animation != null)
        {
            return new c(animation);
        }
        h1 = h1.b(i1, flag, k1);
        if (h1 != null)
        {
            return new c(h1);
        }
        if (k1 == 0) goto _L2; else goto _L1
_L1:
        boolean flag2 = "anim".equals(m.g().getResources().getResourceTypeName(k1));
        if (!flag2) goto _L4; else goto _L3
_L3:
        boolean flag1;
        try
        {
            h1 = AnimationUtils.loadAnimation(m.g(), k1);
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            throw h1;
        }
        // Misplaced declaration of an exception variable
        catch (h h1)
        {
            flag1 = false;
            continue; /* Loop/switch isn't completed */
        }
        if (h1 == null)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        h1 = new c(h1);
        return h1;
        flag1 = true;
_L8:
        if (flag1) goto _L2; else goto _L5
_L5:
        h1 = AnimatorInflater.loadAnimator(m.g(), k1);
        if (h1 == null) goto _L2; else goto _L6
_L6:
        h1 = new c(h1);
        return h1;
        h1;
        if (flag2)
        {
            throw h1;
        }
        h1 = AnimationUtils.loadAnimation(m.g(), k1);
        if (h1 != null)
        {
            return new c(h1);
        }
_L2:
        if (i1 == 0)
        {
            return null;
        }
        i1 = b(i1, flag);
        if (i1 < 0)
        {
            return null;
        }
        switch (i1)
        {
        default:
            i1 = j1;
            if (j1 == 0)
            {
                i1 = j1;
                if (m.d())
                {
                    i1 = m.e();
                }
            }
            if (i1 == 0)
            {
                return null;
            } else
            {
                return null;
            }

        case 1: // '\001'
            return a(m.g(), 1.125F, 1.0F, 0.0F, 1.0F);

        case 2: // '\002'
            return a(m.g(), 1.0F, 0.975F, 1.0F, 0.0F);

        case 3: // '\003'
            return a(m.g(), 0.975F, 1.0F, 0.0F, 1.0F);

        case 4: // '\004'
            return a(m.g(), 1.0F, 1.075F, 1.0F, 0.0F);

        case 5: // '\005'
            return a(m.g(), 0.0F, 1.0F);

        case 6: // '\006'
            return a(m.g(), 1.0F, 0.0F);
        }
_L4:
        flag1 = false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void a(int i1, android.support.v4.a.c c1)
    {
        this;
        JVM INSTR monitorenter ;
        int k1;
        if (i == null)
        {
            i = new ArrayList();
        }
        k1 = i.size();
        int j1 = k1;
        if (i1 >= k1) goto _L2; else goto _L1
_L1:
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Setting back stack index ").append(i1).append(" to ").append(c1).toString());
        }
        i.set(i1, c1);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (j1 >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        i.add(null);
        if (j == null)
        {
            j = new ArrayList();
        }
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Adding available back stack index ").append(j1).toString());
        }
        j.add(Integer.valueOf(j1));
        j1++;
        if (true) goto _L2; else goto _L3
_L3:
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Adding back stack index ").append(i1).append(" with ").append(c1).toString());
        }
        i.add(c1);
          goto _L4
        c1;
        this;
        JVM INSTR monitorexit ;
        throw c1;
    }

    void a(int i1, boolean flag)
    {
        if (m == null && i1 != 0)
        {
            throw new IllegalStateException("No activity");
        }
        if (flag || i1 != l)
        {
            l = i1;
            if (f != null)
            {
                int l1 = e.size();
                int j1 = 0;
                i1 = 0;
                for (; j1 < l1; j1++)
                {
                    h h1 = (h)e.get(j1);
                    e(h1);
                    if (h1.L != null)
                    {
                        i1 = h1.L.a() | i1;
                    }
                }

                l1 = f.size();
                for (int k1 = 0; k1 < l1; k1++)
                {
                    h h2 = (h)f.valueAt(k1);
                    if (h2 == null || !h2.l && !h2.A || h2.P)
                    {
                        continue;
                    }
                    e(h2);
                    if (h2.L != null)
                    {
                        i1 = h2.L.a() | i1;
                    }
                }

                if (i1 == 0)
                {
                    d();
                }
                if (r && m != null && l == 5)
                {
                    m.c();
                    r = false;
                    return;
                }
            }
        }
    }

    public void a(Configuration configuration)
    {
        for (int i1 = 0; i1 < e.size(); i1++)
        {
            h h1 = (h)e.get(i1);
            if (h1 != null)
            {
                h1.a(configuration);
            }
        }

    }

    public void a(Bundle bundle, String s1, h h1)
    {
        if (h1.e < 0)
        {
            a(((RuntimeException) (new IllegalStateException((new StringBuilder()).append("Fragment ").append(h1).append(" is not currently in the FragmentManager").toString()))));
        }
        bundle.putInt(s1, h1.e);
    }

    void a(Parcelable parcelable, o o1)
    {
        android.support.v4.a.p p1;
        while (parcelable == null || (p1 = (android.support.v4.a.p)parcelable).a == null) 
        {
            return;
        }
        int j1;
        if (o1 != null)
        {
            List list = o1.a();
            parcelable = o1.b();
            int i1;
            int k1;
            if (list != null)
            {
                i1 = list.size();
            } else
            {
                i1 = 0;
            }
            for (k1 = 0; k1 < i1; k1++)
            {
                h h1 = (h)list.get(k1);
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("restoreAllState: re-attaching retained ").append(h1).toString());
                }
                int i2;
                for (i2 = 0; i2 < p1.a.length && p1.a[i2].b != h1.e; i2++) { }
                if (i2 == p1.a.length)
                {
                    a(((RuntimeException) (new IllegalStateException((new StringBuilder()).append("Could not find active fragment with index ").append(h1.e).toString()))));
                }
                q q2 = p1.a[i2];
                q2.l = h1;
                h1.d = null;
                h1.q = 0;
                h1.n = false;
                h1.k = false;
                h1.h = null;
                if (q2.k != null)
                {
                    q2.k.setClassLoader(m.g().getClassLoader());
                    h1.d = q2.k.getSparseParcelableArray("android:view_state");
                    h1.c = q2.k;
                }
            }

        } else
        {
            parcelable = null;
        }
        f = new SparseArray(p1.a.length);
        j1 = 0;
        while (j1 < p1.a.length) 
        {
            q q1 = p1.a[j1];
            if (q1 == null)
            {
                continue;
            }
            Object obj;
            int l1;
            if (parcelable != null && j1 < parcelable.size())
            {
                obj = (o)parcelable.get(j1);
            } else
            {
                obj = null;
            }
            obj = q1.a(m, n, o, ((o) (obj)));
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("restoreAllState: active #").append(j1).append(": ").append(obj).toString());
            }
            f.put(((h) (obj)).e, obj);
            q1.l = null;
            j1++;
        }
        if (o1 != null)
        {
            parcelable = o1.a();
            if (parcelable != null)
            {
                j1 = parcelable.size();
            } else
            {
                j1 = 0;
            }
            for (l1 = 0; l1 < j1; l1++)
            {
                o1 = (h)parcelable.get(l1);
                if (((h) (o1)).i < 0)
                {
                    continue;
                }
                o1.h = (h)f.get(((h) (o1)).i);
                if (((h) (o1)).h == null)
                {
                    Log.w("FragmentManager", (new StringBuilder()).append("Re-attaching retained fragment ").append(o1).append(" target no longer exists: ").append(((h) (o1)).i).toString());
                }
            }

        }
        e.clear();
        if (p1.b != null)
        {
            for (j1 = 0; j1 < p1.b.length; j1++)
            {
                o1 = (h)f.get(p1.b[j1]);
                if (o1 == null)
                {
                    a(((RuntimeException) (new IllegalStateException((new StringBuilder()).append("No instantiated fragment for index #").append(p1.b[j1]).toString()))));
                }
                o1.k = true;
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("restoreAllState: added #").append(j1).append(": ").append(o1).toString());
                }
                if (e.contains(o1))
                {
                    throw new IllegalStateException("Already added!");
                }
                synchronized (e)
                {
                    e.add(o1);
                }
            }

        }
        break MISSING_BLOCK_LABEL_790;
        o1;
        parcelable;
        JVM INSTR monitorexit ;
        throw o1;
        if (p1.c != null)
        {
            g = new ArrayList(p1.c.length);
            for (j1 = 0; j1 < p1.c.length; j1++)
            {
                parcelable = p1.c[j1].a(this);
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("restoreAllState: back stack #").append(j1).append(" (index ").append(((android.support.v4.a.c) (parcelable)).n).append("): ").append(parcelable).toString());
                    o1 = new PrintWriter(new android.support.v4.g.e("FragmentManager"));
                    parcelable.a("  ", o1, false);
                    o1.close();
                }
                g.add(parcelable);
                if (((android.support.v4.a.c) (parcelable)).n >= 0)
                {
                    a(((android.support.v4.a.c) (parcelable)).n, ((android.support.v4.a.c) (parcelable)));
                }
            }

        } else
        {
            g = null;
        }
        if (p1.d >= 0)
        {
            p = (h)f.get(p1.d);
        }
        d = p1.e;
        return;
    }

    void a(android.support.v4.a.c c1)
    {
        if (g == null)
        {
            g = new ArrayList();
        }
        g.add(c1);
    }

    public void a(h h1)
    {
label0:
        {
            if (h1.J)
            {
                if (!c)
                {
                    break label0;
                }
                v = true;
            }
            return;
        }
        h1.J = false;
        a(h1, l, 0, 0, false);
    }

    void a(h h1, int i1, int j1, int k1, boolean flag)
    {
        boolean flag1;
        int j2;
label0:
        {
            flag1 = true;
            if (h1.k)
            {
                j2 = i1;
                if (!h1.A)
                {
                    break label0;
                }
            }
            j2 = i1;
            if (i1 > 1)
            {
                j2 = 1;
            }
        }
        int l1 = j2;
        if (h1.l)
        {
            l1 = j2;
            if (j2 > h1.b)
            {
                if (h1.b == 0 && h1.b())
                {
                    l1 = 1;
                } else
                {
                    l1 = h1.b;
                }
            }
        }
        i1 = l1;
        if (h1.J)
        {
            i1 = l1;
            if (h1.b < 4)
            {
                i1 = l1;
                if (l1 > 3)
                {
                    i1 = 3;
                }
            }
        }
        if (h1.b > i1) goto _L2; else goto _L1
_L1:
        if (!h1.m || h1.n) goto _L4; else goto _L3
_L3:
        return;
_L4:
        int i2;
        int k2;
        if (h1.R() != null || h1.S() != null)
        {
            h1.a(null);
            h1.a(null);
            a(h1, h1.T(), 0, 0, true);
        }
        k1 = i1;
        i2 = i1;
        k2 = i1;
        j1 = i1;
        h1.b;
        JVM INSTR tableswitch 0 4: default 220
    //                   0 296
    //                   1 741
    //                   2 1135
    //                   3 1154
    //                   4 1209;
           goto _L5 _L6 _L7 _L8 _L9 _L10
_L6:
        break; /* Loop/switch isn't completed */
_L5:
        i2 = i1;
_L12:
        if (h1.b != i2)
        {
            Log.w("FragmentManager", (new StringBuilder()).append("moveToState: Fragment state for ").append(h1).append(" not updated inline; ").append("expected state ").append(i2).append(" found ").append(h1.b).toString());
            h1.b = i2;
            return;
        }
        if (true) goto _L3; else goto _L11
_L11:
        k1 = i1;
        if (i1 > 0)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("moveto CREATED: ").append(h1).toString());
            }
            k1 = i1;
            if (h1.c != null)
            {
                h1.c.setClassLoader(m.g().getClassLoader());
                h1.d = h1.c.getSparseParcelableArray("android:view_state");
                h1.h = a(h1.c, "android:target_state");
                if (h1.h != null)
                {
                    h1.j = h1.c.getInt("android:target_req_state", 0);
                }
                h1.K = h1.c.getBoolean("android:user_visible_hint", true);
                k1 = i1;
                if (!h1.K)
                {
                    h1.J = true;
                    k1 = i1;
                    if (i1 > 3)
                    {
                        k1 = 3;
                    }
                }
            }
            h1.s = m;
            h1.v = o;
            n n1;
            if (o != null)
            {
                n1 = o.t;
            } else
            {
                n1 = m.i();
            }
            h1.r = n1;
            if (h1.h != null)
            {
                if (f.get(h1.h.e) != h1.h)
                {
                    throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(h1).append(" declared target fragment ").append(h1.h).append(" that does not belong to this FragmentManager!").toString());
                }
                if (h1.h.b < 1)
                {
                    a(h1.h, 1, 0, 0, true);
                }
            }
            a(h1, m.g(), false);
            h1.F = false;
            h1.a(m.g());
            if (!h1.F)
            {
                throw new z((new StringBuilder()).append("Fragment ").append(h1).append(" did not call through to super.onAttach()").toString());
            }
            ViewGroup viewgroup;
            if (h1.v == null)
            {
                m.b(h1);
            } else
            {
                h1.v.a(h1);
            }
            b(h1, m.g(), false);
            if (!h1.T)
            {
                a(h1, h1.c, false);
                h1.k(h1.c);
                b(h1, h1.c, false);
            } else
            {
                h1.g(h1.c);
                h1.b = 1;
            }
            h1.C = false;
        }
_L7:
        c(h1);
        i2 = k1;
        if (k1 > 1)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("moveto ACTIVITY_CREATED: ").append(h1).toString());
            }
            if (!h1.m)
            {
                Object obj;
                if (h1.x != 0)
                {
                    if (h1.x == -1)
                    {
                        a(((RuntimeException) (new IllegalArgumentException((new StringBuilder()).append("Cannot create fragment ").append(h1).append(" for a container view with no id").toString()))));
                    }
                    viewgroup = (ViewGroup)n.a(h1.x);
                    obj = viewgroup;
                    if (viewgroup == null)
                    {
                        obj = viewgroup;
                        if (!h1.o)
                        {
                            try
                            {
                                obj = h1.e().getResourceName(h1.x);
                            }
                            // Misplaced declaration of an exception variable
                            catch (Object obj)
                            {
                                obj = "unknown";
                            }
                            a(((RuntimeException) (new IllegalArgumentException((new StringBuilder()).append("No view found for id 0x").append(Integer.toHexString(h1.x)).append(" (").append(((String) (obj))).append(") for fragment ").append(h1).toString()))));
                            obj = viewgroup;
                        }
                    }
                } else
                {
                    obj = null;
                }
                h1.G = ((ViewGroup) (obj));
                h1.H = h1.b(h1.d(h1.c), ((ViewGroup) (obj)), h1.c);
                if (h1.H != null)
                {
                    h1.I = h1.H;
                    h1.H.setSaveFromParentEnabled(false);
                    if (obj != null)
                    {
                        ((ViewGroup) (obj)).addView(h1.H);
                    }
                    if (h1.z)
                    {
                        h1.H.setVisibility(8);
                    }
                    h1.a(h1.H, h1.c);
                    a(h1, h1.H, h1.c, false);
                    if (h1.H.getVisibility() == 0 && h1.G != null)
                    {
                        flag = flag1;
                    } else
                    {
                        flag = false;
                    }
                    h1.P = flag;
                } else
                {
                    h1.I = null;
                }
            }
            h1.l(h1.c);
            c(h1, h1.c, false);
            if (h1.H != null)
            {
                h1.a(h1.c);
            }
            h1.c = null;
            i2 = k1;
        }
_L8:
        k2 = i2;
        if (i2 > 2)
        {
            h1.b = 3;
            k2 = i2;
        }
_L9:
        j1 = k2;
        if (k2 > 3)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("moveto STARTED: ").append(h1).toString());
            }
            h1.C();
            b(h1, false);
            j1 = k2;
        }
_L10:
        i2 = j1;
        if (j1 > 4)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("moveto RESUMED: ").append(h1).toString());
            }
            h1.D();
            c(h1, false);
            h1.c = null;
            h1.d = null;
            i2 = j1;
        }
          goto _L12
_L2:
        i2 = i1;
        if (h1.b <= i1) goto _L12; else goto _L13
_L13:
        h1.b;
        JVM INSTR tableswitch 1 5: default 1376
    //                   1 1382
    //                   2 1583
    //                   3 1541
    //                   4 1493
    //                   5 1445;
           goto _L14 _L15 _L16 _L17 _L18 _L19
_L15:
        break MISSING_BLOCK_LABEL_1382;
_L14:
        i2 = i1;
          goto _L20
_L21:
        i2 = i1;
        if (i1 < 1)
        {
            if (t)
            {
                if (h1.R() != null)
                {
                    obj = h1.R();
                    h1.a(null);
                    ((View) (obj)).clearAnimation();
                } else
                if (h1.S() != null)
                {
                    obj = h1.S();
                    h1.a(null);
                    ((Animator) (obj)).cancel();
                }
            }
            if (h1.R() != null || h1.S() != null)
            {
                h1.b(i1);
                i2 = 1;
            } else
            {
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("movefrom CREATED: ").append(h1).toString());
                }
                if (!h1.C)
                {
                    h1.K();
                    g(h1, false);
                } else
                {
                    h1.b = 0;
                }
                h1.L();
                h(h1, false);
                i2 = i1;
                if (!flag)
                {
                    if (!h1.C)
                    {
                        g(h1);
                        i2 = i1;
                    } else
                    {
                        h1.s = null;
                        h1.v = null;
                        h1.r = null;
                        i2 = i1;
                    }
                }
            }
        }
          goto _L20
_L19:
        if (i1 < 5)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("movefrom RESUMED: ").append(h1).toString());
            }
            h1.G();
            d(h1, false);
        }
_L18:
        if (i1 < 4)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("movefrom STARTED: ").append(h1).toString());
            }
            h1.H();
            e(h1, false);
        }
_L17:
        if (i1 < 3)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("movefrom STOPPED: ").append(h1).toString());
            }
            h1.I();
        }
_L16:
        if (i1 < 2)
        {
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("movefrom ACTIVITY_CREATED: ").append(h1).toString());
            }
            if (h1.H != null && m.a(h1) && h1.d == null)
            {
                m(h1);
            }
            h1.J();
            f(h1, false);
            if (h1.H != null && h1.G != null)
            {
                h1.H.clearAnimation();
                h1.G.endViewTransition(h1.H);
                if (l > 0 && !t && h1.H.getVisibility() == 0 && h1.R >= 0.0F)
                {
                    obj = a(h1, j1, false, k1);
                } else
                {
                    obj = null;
                }
                h1.R = 0.0F;
                if (obj != null)
                {
                    a(h1, ((c) (obj)), i1);
                }
                h1.G.removeView(h1.H);
            }
            h1.G = null;
            h1.H = null;
            h1.I = null;
            h1.n = false;
        }
        if (true) goto _L21; else goto _L20
_L20:
        if (true) goto _L12; else goto _L22
_L22:
    }

    void a(h h1, Context context, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).a(h1, context, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).a(this, h1, context);
            }
        } while (true);
    }

    void a(h h1, Bundle bundle, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).a(h1, bundle, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).a(this, h1, bundle);
            }
        } while (true);
    }

    void a(h h1, View view, Bundle bundle, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).a(h1, view, bundle, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).a(this, h1, view, bundle);
            }
        } while (true);
    }

    public void a(h h1, boolean flag)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("add: ").append(h1).toString());
        }
        f(h1);
        if (!h1.A)
        {
            if (e.contains(h1))
            {
                throw new IllegalStateException((new StringBuilder()).append("Fragment already added: ").append(h1).toString());
            }
            synchronized (e)
            {
                e.add(h1);
            }
            h1.k = true;
            h1.l = false;
            if (h1.H == null)
            {
                h1.Q = false;
            }
            if (h1.D && h1.E)
            {
                r = true;
            }
            if (flag)
            {
                b(h1);
            }
        }
        return;
        h1;
        arraylist;
        JVM INSTR monitorexit ;
        throw h1;
    }

    public void a(l l1, j j1, h h1)
    {
        if (m != null)
        {
            throw new IllegalStateException("Already attached");
        } else
        {
            m = l1;
            n = j1;
            o = h1;
            return;
        }
    }

    public void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        boolean flag;
        flag = false;
        String s2 = (new StringBuilder()).append(s1).append("    ").toString();
        if (f != null)
        {
            int k2 = f.size();
            if (k2 > 0)
            {
                printwriter.print(s1);
                printwriter.print("Active Fragments in ");
                printwriter.print(Integer.toHexString(System.identityHashCode(this)));
                printwriter.println(":");
                for (int i1 = 0; i1 < k2; i1++)
                {
                    h h1 = (h)f.valueAt(i1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(i1);
                    printwriter.print(": ");
                    printwriter.println(h1);
                    if (h1 != null)
                    {
                        h1.a(s2, filedescriptor, printwriter, as);
                    }
                }

            }
        }
        int l2 = e.size();
        if (l2 > 0)
        {
            printwriter.print(s1);
            printwriter.println("Added Fragments:");
            for (int j1 = 0; j1 < l2; j1++)
            {
                h h2 = (h)e.get(j1);
                printwriter.print(s1);
                printwriter.print("  #");
                printwriter.print(j1);
                printwriter.print(": ");
                printwriter.println(h2.toString());
            }

        }
        if (h != null)
        {
            int i3 = h.size();
            if (i3 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Fragments Created Menus:");
                for (int k1 = 0; k1 < i3; k1++)
                {
                    h h3 = (h)h.get(k1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(k1);
                    printwriter.print(": ");
                    printwriter.println(h3.toString());
                }

            }
        }
        if (g != null)
        {
            int j3 = g.size();
            if (j3 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Back Stack:");
                for (int l1 = 0; l1 < j3; l1++)
                {
                    android.support.v4.a.c c1 = (android.support.v4.a.c)g.get(l1);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(l1);
                    printwriter.print(": ");
                    printwriter.println(c1.toString());
                    c1.a(s2, filedescriptor, printwriter, as);
                }

            }
        }
        this;
        JVM INSTR monitorenter ;
        if (i == null) goto _L2; else goto _L1
_L1:
        int k3 = i.size();
        if (k3 <= 0) goto _L2; else goto _L3
_L3:
        printwriter.print(s1);
        printwriter.println("Back Stack Indices:");
        int i2 = 0;
_L4:
        if (i2 >= k3)
        {
            break; /* Loop/switch isn't completed */
        }
        filedescriptor = (android.support.v4.a.c)i.get(i2);
        printwriter.print(s1);
        printwriter.print("  #");
        printwriter.print(i2);
        printwriter.print(": ");
        printwriter.println(filedescriptor);
        i2++;
        if (true) goto _L4; else goto _L2
_L2:
        if (j != null && j.size() > 0)
        {
            printwriter.print(s1);
            printwriter.print("mAvailBackStackIndices: ");
            printwriter.println(Arrays.toString(j.toArray()));
        }
        this;
        JVM INSTR monitorexit ;
        if (b != null)
        {
            int l3 = b.size();
            if (l3 > 0)
            {
                printwriter.print(s1);
                printwriter.println("Pending Actions:");
                for (int j2 = ((flag) ? 1 : 0); j2 < l3; j2++)
                {
                    filedescriptor = (f)b.get(j2);
                    printwriter.print(s1);
                    printwriter.print("  #");
                    printwriter.print(j2);
                    printwriter.print(": ");
                    printwriter.println(filedescriptor);
                }

            }
        }
        break MISSING_BLOCK_LABEL_703;
        s1;
        this;
        JVM INSTR monitorexit ;
        throw s1;
        printwriter.print(s1);
        printwriter.println("FragmentManager misc state:");
        printwriter.print(s1);
        printwriter.print("  mHost=");
        printwriter.println(m);
        printwriter.print(s1);
        printwriter.print("  mContainer=");
        printwriter.println(n);
        if (o != null)
        {
            printwriter.print(s1);
            printwriter.print("  mParent=");
            printwriter.println(o);
        }
        printwriter.print(s1);
        printwriter.print("  mCurState=");
        printwriter.print(l);
        printwriter.print(" mStateSaved=");
        printwriter.print(s);
        printwriter.print(" mDestroyed=");
        printwriter.println(t);
        if (r)
        {
            printwriter.print(s1);
            printwriter.print("  mNeedMenuInvalidate=");
            printwriter.println(r);
        }
        if (u != null)
        {
            printwriter.print(s1);
            printwriter.print("  mNoTransactionsBecause=");
            printwriter.println(u);
        }
        return;
    }

    public void a(boolean flag)
    {
        for (int i1 = e.size() - 1; i1 >= 0; i1--)
        {
            h h1 = (h)e.get(i1);
            if (h1 != null)
            {
                h1.d(flag);
            }
        }

    }

    public boolean a()
    {
        x();
        return a(((String) (null)), -1, 0);
    }

    boolean a(int i1)
    {
        return l >= i1;
    }

    public boolean a(Menu menu)
    {
        int i1 = 0;
        boolean flag;
        boolean flag1;
        for (flag = false; i1 < e.size(); flag = flag1)
        {
            h h1 = (h)e.get(i1);
            flag1 = flag;
            if (h1 != null)
            {
                flag1 = flag;
                if (h1.c(menu))
                {
                    flag1 = true;
                }
            }
            i1++;
        }

        return flag;
    }

    public boolean a(Menu menu, MenuInflater menuinflater)
    {
        boolean flag = false;
        ArrayList arraylist = null;
        int i1 = 0;
        boolean flag1 = false;
        while (i1 < e.size()) 
        {
            h h1 = (h)e.get(i1);
            ArrayList arraylist1 = arraylist;
            boolean flag2 = flag1;
            if (h1 != null)
            {
                arraylist1 = arraylist;
                flag2 = flag1;
                if (h1.b(menu, menuinflater))
                {
                    flag2 = true;
                    arraylist1 = arraylist;
                    if (arraylist == null)
                    {
                        arraylist1 = new ArrayList();
                    }
                    arraylist1.add(h1);
                }
            }
            i1++;
            flag1 = flag2;
            arraylist = arraylist1;
        }
        if (h != null)
        {
            for (int j1 = ((flag) ? 1 : 0); j1 < h.size(); j1++)
            {
                menu = (h)h.get(j1);
                if (arraylist == null || !arraylist.contains(menu))
                {
                    menu.r();
                }
            }

        }
        h = arraylist;
        return flag1;
    }

    public boolean a(MenuItem menuitem)
    {
        boolean flag1 = false;
        int i1 = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i1 < e.size())
                {
                    h h1 = (h)e.get(i1);
                    if (h1 == null || !h1.c(menuitem))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i1++;
        } while (true);
    }

    boolean a(ArrayList arraylist, ArrayList arraylist1, String s1, int i1, int j1)
    {
        if (g == null)
        {
            return false;
        }
        if (s1 != null || i1 >= 0 || (j1 & 1) != 0) goto _L2; else goto _L1
_L1:
        i1 = g.size() - 1;
        if (i1 < 0)
        {
            return false;
        }
        arraylist.add(g.remove(i1));
        arraylist1.add(Boolean.valueOf(true));
_L4:
        return true;
_L2:
        int k1;
label0:
        {
            k1 = -1;
            if (s1 == null && i1 < 0)
            {
                break label0;
            }
            int l1 = g.size() - 1;
label1:
            do
            {
                android.support.v4.a.c c1;
                if (l1 >= 0)
                {
                    c1 = (android.support.v4.a.c)g.get(l1);
                    break MISSING_BLOCK_LABEL_110;
                }
                do
                {
                    if (l1 < 0)
                    {
                        return false;
                    }
                    break label1;
                } while (s1 != null && s1.equals(c1.d()) || i1 >= 0 && i1 == c1.n);
                l1--;
            } while (true);
            k1 = l1;
            if ((j1 & 1) != 0)
            {
                j1 = l1 - 1;
                do
                {
                    k1 = j1;
                    if (j1 < 0)
                    {
                        break;
                    }
                    android.support.v4.a.c c2 = (android.support.v4.a.c)g.get(j1);
                    if (s1 == null || !s1.equals(c2.d()))
                    {
                        k1 = j1;
                        if (i1 < 0)
                        {
                            break;
                        }
                        k1 = j1;
                        if (i1 != c2.n)
                        {
                            break;
                        }
                    }
                    j1--;
                } while (true);
            }
        }
        if (k1 == g.size() - 1)
        {
            return false;
        }
        i1 = g.size() - 1;
        while (i1 > k1) 
        {
            arraylist.add(g.remove(i1));
            arraylist1.add(Boolean.valueOf(true));
            i1--;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public h b(int i1)
    {
        int j1 = e.size() - 1;
_L10:
        if (j1 < 0) goto _L2; else goto _L1
_L1:
        h h1 = (h)e.get(j1);
        if (h1 == null || h1.w != i1) goto _L4; else goto _L3
_L3:
        return h1;
_L4:
        j1--;
        continue; /* Loop/switch isn't completed */
_L2:
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_111;
        }
        j1 = f.size() - 1;
_L8:
        if (j1 < 0) goto _L6; else goto _L5
_L5:
        h h2;
        h2 = (h)f.valueAt(j1);
        if (h2 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        h1 = h2;
        if (h2.w == i1) goto _L3; else goto _L7
_L7:
        j1--;
          goto _L8
_L6:
        return null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public h b(String s1)
    {
        if (f != null && s1 != null)
        {
            for (int i1 = f.size() - 1; i1 >= 0; i1--)
            {
                h h1 = (h)f.valueAt(i1);
                if (h1 == null)
                {
                    continue;
                }
                h1 = h1.a(s1);
                if (h1 != null)
                {
                    return h1;
                }
            }

        }
        return null;
    }

    public List b()
    {
        if (e.isEmpty())
        {
            return Collections.EMPTY_LIST;
        }
        List list;
        synchronized (e)
        {
            list = (List)e.clone();
        }
        return list;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void b(h h1)
    {
        a(h1, l, 0, 0, false);
    }

    void b(h h1, Context context, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).b(h1, context, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).b(this, h1, context);
            }
        } while (true);
    }

    void b(h h1, Bundle bundle, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).b(h1, bundle, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).b(this, h1, bundle);
            }
        } while (true);
    }

    void b(h h1, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).b(h1, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).a(this, h1);
            }
        } while (true);
    }

    public void b(Menu menu)
    {
        for (int i1 = 0; i1 < e.size(); i1++)
        {
            h h1 = (h)e.get(i1);
            if (h1 != null)
            {
                h1.d(menu);
            }
        }

    }

    public void b(boolean flag)
    {
        for (int i1 = e.size() - 1; i1 >= 0; i1--)
        {
            h h1 = (h)e.get(i1);
            if (h1 != null)
            {
                h1.e(flag);
            }
        }

    }

    public boolean b(MenuItem menuitem)
    {
        boolean flag1 = false;
        int i1 = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i1 < e.size())
                {
                    h h1 = (h)e.get(i1);
                    if (h1 == null || !h1.d(menuitem))
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            i1++;
        } while (true);
    }

    public void c(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        i.set(i1, null);
        if (j == null)
        {
            j = new ArrayList();
        }
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Freeing back stack index ").append(i1).toString());
        }
        j.add(Integer.valueOf(i1));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void c(h h1)
    {
label0:
        {
            if (h1.m && !h1.p)
            {
                h1.H = h1.b(h1.d(h1.c), null, h1.c);
                if (h1.H == null)
                {
                    break label0;
                }
                h1.I = h1.H;
                h1.H.setSaveFromParentEnabled(false);
                if (h1.z)
                {
                    h1.H.setVisibility(8);
                }
                h1.a(h1.H, h1.c);
                a(h1, h1.H, h1.c, false);
            }
            return;
        }
        h1.I = null;
    }

    void c(h h1, Bundle bundle, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).c(h1, bundle, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).c(this, h1, bundle);
            }
        } while (true);
    }

    void c(h h1, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).c(h1, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).b(this, h1);
            }
        } while (true);
    }

    public boolean c()
    {
        return s;
    }

    void d()
    {
        if (f != null)
        {
            int i1 = 0;
            while (i1 < f.size()) 
            {
                h h1 = (h)f.valueAt(i1);
                if (h1 != null)
                {
                    a(h1);
                }
                i1++;
            }
        }
    }

    void d(h h1)
    {
        if (h1.H == null) goto _L2; else goto _L1
_L1:
        c c1;
        int i1 = h1.N();
        boolean flag;
        if (!h1.z)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c1 = a(h1, i1, flag, h1.O());
        if (c1 == null || c1.b == null) goto _L4; else goto _L3
_L3:
        c1.b.setTarget(h1.H);
        if (h1.z)
        {
            if (h1.V())
            {
                h1.f(false);
            } else
            {
                ViewGroup viewgroup = h1.G;
                View view = h1.H;
                viewgroup.startViewTransition(view);
                c1.b.addListener(new AnimatorListenerAdapter(viewgroup, view, h1) {

                    final ViewGroup a;
                    final View b;
                    final h c;
                    final n d;

                    public void onAnimationEnd(Animator animator)
                    {
                        a.endViewTransition(b);
                        animator.removeListener(this);
                        if (c.H != null)
                        {
                            c.H.setVisibility(8);
                        }
                    }

            
            {
                d = n.this;
                a = viewgroup;
                b = view;
                c = h1;
                super();
            }
                });
            }
        } else
        {
            h1.H.setVisibility(0);
        }
        b(h1.H, c1);
        c1.b.start();
_L2:
        if (h1.k && h1.D && h1.E)
        {
            r = true;
        }
        h1.Q = false;
        h1.a(h1.z);
        return;
_L4:
        if (c1 != null)
        {
            b(h1.H, c1);
            h1.H.startAnimation(c1.a);
            c1.a.start();
        }
        byte byte0;
        if (h1.z && !h1.V())
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        h1.H.setVisibility(byte0);
        if (h1.V())
        {
            h1.f(false);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    void d(h h1, Bundle bundle, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).d(h1, bundle, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).d(this, h1, bundle);
            }
        } while (true);
    }

    void d(h h1, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).d(h1, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).c(this, h1);
            }
        } while (true);
    }

    void e(h h1)
    {
        if (h1 != null)
        {
            int j1 = l;
            int i1 = j1;
            if (h1.l)
            {
                if (h1.b())
                {
                    i1 = Math.min(j1, 1);
                } else
                {
                    i1 = Math.min(j1, 0);
                }
            }
            a(h1, i1, h1.N(), h1.O(), false);
            if (h1.H != null)
            {
                Object obj = p(h1);
                if (obj != null)
                {
                    obj = ((h) (obj)).H;
                    ViewGroup viewgroup = h1.G;
                    i1 = viewgroup.indexOfChild(((View) (obj)));
                    j1 = viewgroup.indexOfChild(h1.H);
                    if (j1 < i1)
                    {
                        viewgroup.removeViewAt(j1);
                        viewgroup.addView(h1.H, i1);
                    }
                }
                if (h1.P && h1.G != null)
                {
                    if (h1.R > 0.0F)
                    {
                        h1.H.setAlpha(h1.R);
                    }
                    h1.R = 0.0F;
                    h1.P = false;
                    c c1 = a(h1, h1.N(), true, h1.O());
                    if (c1 != null)
                    {
                        b(h1.H, c1);
                        if (c1.a != null)
                        {
                            h1.H.startAnimation(c1.a);
                        } else
                        {
                            c1.b.setTarget(h1.H);
                            c1.b.start();
                        }
                    }
                }
            }
            if (h1.Q)
            {
                d(h1);
                return;
            }
        }
    }

    void e(h h1, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).e(h1, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).d(this, h1);
            }
        } while (true);
    }

    public boolean e()
    {
        boolean flag;
        c(true);
        flag = false;
_L2:
        if (!c(w, x))
        {
            break; /* Loop/switch isn't completed */
        }
        c = true;
        b(w, x);
        z();
        flag = true;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        z();
        throw exception;
_L1:
        f();
        C();
        return flag;
    }

    void f()
    {
        if (v)
        {
            int i1 = 0;
            boolean flag;
            boolean flag1;
            for (flag = false; i1 < f.size(); flag = flag1)
            {
                h h1 = (h)f.valueAt(i1);
                flag1 = flag;
                if (h1 != null)
                {
                    flag1 = flag;
                    if (h1.L != null)
                    {
                        flag1 = flag | h1.L.a();
                    }
                }
                i1++;
            }

            if (!flag)
            {
                v = false;
                d();
            }
        }
    }

    void f(h h1)
    {
        if (h1.e < 0)
        {
            int i1 = d;
            d = i1 + 1;
            h1.a(i1, o);
            if (f == null)
            {
                f = new SparseArray();
            }
            f.put(h1.e, h1);
            if (a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("Allocated fragment index ").append(h1).toString());
                return;
            }
        }
    }

    void f(h h1, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).f(h1, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).e(this, h1);
            }
        } while (true);
    }

    void g()
    {
        if (k != null)
        {
            for (int i1 = 0; i1 < k.size(); i1++)
            {
                ((m.b)k.get(i1)).a();
            }

        }
    }

    void g(h h1)
    {
        if (h1.e < 0)
        {
            return;
        }
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Freeing fragment index ").append(h1).toString());
        }
        f.put(h1.e, null);
        m.a(h1.f);
        h1.p();
    }

    void g(h h1, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).g(h1, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).f(this, h1);
            }
        } while (true);
    }

    o h()
    {
        a(C);
        return C;
    }

    public void h(h h1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("remove: ").append(h1).append(" nesting=").append(h1.q).toString());
        }
        boolean flag;
        if (!h1.b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!h1.A || flag)
        {
            synchronized (e)
            {
                e.remove(h1);
            }
            if (h1.D && h1.E)
            {
                r = true;
            }
            h1.k = false;
            h1.l = true;
        }
        return;
        h1;
        arraylist;
        JVM INSTR monitorexit ;
        throw h1;
    }

    void h(h h1, boolean flag)
    {
        if (o != null)
        {
            m m1 = o.f();
            if (m1 instanceof n)
            {
                ((n)m1).h(h1, true);
            }
        }
        Iterator iterator = I.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            i i1 = (i)iterator.next();
            if (!flag || ((Boolean)i1.b).booleanValue())
            {
                ((m.a)i1.a).g(this, h1);
            }
        } while (true);
    }

    void i()
    {
        if (f == null) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        int i1;
        i1 = 0;
        obj1 = null;
        obj = null;
_L5:
        Object obj2;
        Object obj4;
        obj4 = obj1;
        obj2 = obj;
        if (i1 >= f.size()) goto _L4; else goto _L3
_L3:
        h h1 = (h)f.valueAt(i1);
        if (h1 != null)
        {
            obj2 = obj;
            if (h1.B)
            {
                obj4 = obj;
                if (obj == null)
                {
                    obj4 = new ArrayList();
                }
                ((ArrayList) (obj4)).add(h1);
                int j1;
                if (h1.h != null)
                {
                    j1 = h1.h.e;
                } else
                {
                    j1 = -1;
                }
                h1.i = j1;
                obj2 = obj4;
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("retainNonConfig: keeping retained ").append(h1).toString());
                    obj2 = obj4;
                }
            }
            if (h1.t != null)
            {
                h1.t.i();
                obj4 = h1.t.C;
            } else
            {
                obj4 = h1.u;
            }
            obj = obj1;
            if (obj1 == null)
            {
                obj = obj1;
                if (obj4 != null)
                {
                    obj1 = new ArrayList(f.size());
                    j1 = 0;
                    do
                    {
                        obj = obj1;
                        if (j1 >= i1)
                        {
                            break;
                        }
                        ((ArrayList) (obj1)).add(null);
                        j1++;
                    } while (true);
                }
            }
            if (obj != null)
            {
                ((ArrayList) (obj)).add(obj4);
            }
            obj1 = obj2;
        } else
        {
            Object obj3 = obj;
            obj = obj1;
            obj1 = obj3;
        }
        i1++;
        obj2 = obj1;
        obj1 = obj;
        obj = obj2;
        if (true) goto _L5; else goto _L4
_L2:
        obj4 = null;
        obj2 = null;
_L4:
        if (obj2 == null && obj4 == null)
        {
            C = null;
            return;
        } else
        {
            C = new o(((List) (obj2)), ((List) (obj4)));
            return;
        }
    }

    public void i(h h1)
    {
        boolean flag = true;
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("hide: ").append(h1).toString());
        }
        if (!h1.z)
        {
            h1.z = true;
            if (h1.Q)
            {
                flag = false;
            }
            h1.Q = flag;
        }
    }

    Parcelable j()
    {
        android.support.v4.a.p p1 = null;
        A();
        B();
        e();
        s = true;
        C = null;
        if (f != null && f.size() > 0)
        {
            int j2 = f.size();
            q aq[] = new q[j2];
            int k1 = 0;
            boolean flag = false;
            while (k1 < j2) 
            {
                h h1 = (h)f.valueAt(k1);
                if (h1 == null)
                {
                    continue;
                }
                if (h1.e < 0)
                {
                    a(new IllegalStateException((new StringBuilder()).append("Failure saving state: active ").append(h1).append(" has cleared index: ").append(h1.e).toString()));
                }
                q q1 = new q(h1);
                aq[k1] = q1;
                if (h1.b > 0 && q1.k == null)
                {
                    q1.k = n(h1);
                    if (h1.h != null)
                    {
                        if (h1.h.e < 0)
                        {
                            a(new IllegalStateException((new StringBuilder()).append("Failure saving state: ").append(h1).append(" has target not in fragment manager: ").append(h1.h).toString()));
                        }
                        if (q1.k == null)
                        {
                            q1.k = new Bundle();
                        }
                        a(q1.k, "android:target_state", h1.h);
                        if (h1.j != 0)
                        {
                            q1.k.putInt("android:target_req_state", h1.j);
                        }
                    }
                } else
                {
                    q1.k = h1.c;
                }
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("Saved state of ").append(h1).append(": ").append(q1.k).toString());
                }
                flag = true;
                k1++;
            }
            if (!flag)
            {
                if (a)
                {
                    Log.v("FragmentManager", "saveAllState: no fragments!");
                    return null;
                }
            } else
            {
                int l1 = e.size();
                int ai[];
                if (l1 > 0)
                {
                    int ai1[] = new int[l1];
                    int i1 = 0;
                    do
                    {
                        ai = ai1;
                        if (i1 >= l1)
                        {
                            break;
                        }
                        ai1[i1] = ((h)e.get(i1)).e;
                        if (ai1[i1] < 0)
                        {
                            a(new IllegalStateException((new StringBuilder()).append("Failure saving state: active ").append(e.get(i1)).append(" has cleared index: ").append(ai1[i1]).toString()));
                        }
                        if (a)
                        {
                            Log.v("FragmentManager", (new StringBuilder()).append("saveAllState: adding fragment #").append(i1).append(": ").append(e.get(i1)).toString());
                        }
                        i1++;
                    } while (true);
                } else
                {
                    ai = null;
                }
                android.support.v4.a.d ad[] = p1;
                if (g != null)
                {
                    int i2 = g.size();
                    ad = p1;
                    if (i2 > 0)
                    {
                        android.support.v4.a.d ad1[] = new android.support.v4.a.d[i2];
                        int j1 = 0;
                        do
                        {
                            ad = ad1;
                            if (j1 >= i2)
                            {
                                break;
                            }
                            ad1[j1] = new android.support.v4.a.d((android.support.v4.a.c)g.get(j1));
                            if (a)
                            {
                                Log.v("FragmentManager", (new StringBuilder()).append("saveAllState: adding back stack #").append(j1).append(": ").append(g.get(j1)).toString());
                            }
                            j1++;
                        } while (true);
                    }
                }
                ad1 = new android.support.v4.a.p();
                ad1.a = aq;
                ad1.b = ai;
                ad1.c = ad;
                if (p != null)
                {
                    ad1.d = p.e;
                }
                ad1.e = d;
                i();
                return ad1;
            }
        }
        return null;
    }

    public void j(h h1)
    {
        boolean flag = false;
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("show: ").append(h1).toString());
        }
        if (h1.z)
        {
            h1.z = false;
            if (!h1.Q)
            {
                flag = true;
            }
            h1.Q = flag;
        }
    }

    public void k()
    {
        C = null;
        s = false;
        int j1 = e.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            h h1 = (h)e.get(i1);
            if (h1 != null)
            {
                h1.E();
            }
        }

    }

    public void k(h h1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("detach: ").append(h1).toString());
        }
        if (!h1.A)
        {
            h1.A = true;
            if (h1.k)
            {
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("remove from detach: ").append(h1).toString());
                }
                synchronized (e)
                {
                    e.remove(h1);
                }
                if (h1.D && h1.E)
                {
                    r = true;
                }
                h1.k = false;
            }
        }
        return;
        h1;
        arraylist;
        JVM INSTR monitorexit ;
        throw h1;
    }

    public void l()
    {
        s = false;
        e(1);
    }

    public void l(h h1)
    {
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("attach: ").append(h1).toString());
        }
        if (h1.A)
        {
            h1.A = false;
            if (!h1.k)
            {
                if (e.contains(h1))
                {
                    throw new IllegalStateException((new StringBuilder()).append("Fragment already added: ").append(h1).toString());
                }
                if (a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("add from attach: ").append(h1).toString());
                }
                synchronized (e)
                {
                    e.add(h1);
                }
                h1.k = true;
                if (h1.D && h1.E)
                {
                    r = true;
                }
            }
        }
        return;
        h1;
        arraylist;
        JVM INSTR monitorexit ;
        throw h1;
    }

    public void m()
    {
        s = false;
        e(2);
    }

    void m(h h1)
    {
        if (h1.I != null)
        {
            if (A == null)
            {
                A = new SparseArray();
            } else
            {
                A.clear();
            }
            h1.I.saveHierarchyState(A);
            if (A.size() > 0)
            {
                h1.d = A;
                A = null;
                return;
            }
        }
    }

    Bundle n(h h1)
    {
        if (z == null)
        {
            z = new Bundle();
        }
        h1.m(z);
        d(h1, z, false);
        Bundle bundle;
        Bundle bundle1;
        if (!z.isEmpty())
        {
            bundle1 = z;
            z = null;
        } else
        {
            bundle1 = null;
        }
        if (h1.H != null)
        {
            m(h1);
        }
        bundle = bundle1;
        if (h1.d != null)
        {
            bundle = bundle1;
            if (bundle1 == null)
            {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", h1.d);
        }
        bundle1 = bundle;
        if (!h1.K)
        {
            bundle1 = bundle;
            if (bundle == null)
            {
                bundle1 = new Bundle();
            }
            bundle1.putBoolean("android:user_visible_hint", h1.K);
        }
        return bundle1;
    }

    public void n()
    {
        s = false;
        e(4);
    }

    public void o()
    {
        s = false;
        e(5);
    }

    public void o(h h1)
    {
        if (h1 != null && (f.get(h1.e) != h1 || h1.s != null && h1.f() != this))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Fragment ").append(h1).append(" is not an active fragment of FragmentManager ").append(this).toString());
        } else
        {
            p = h1;
            return;
        }
    }

    public View onCreateView(View view, String s1, Context context, AttributeSet attributeset)
    {
        if (!"fragment".equals(s1))
        {
            return null;
        }
        String s2 = attributeset.getAttributeValue(null, "class");
        s1 = context.obtainStyledAttributes(attributeset, e.a);
        if (s2 == null)
        {
            s2 = s1.getString(0);
        }
        int k1 = s1.getResourceId(1, -1);
        String s3 = s1.getString(2);
        s1.recycle();
        if (!android.support.v4.a.h.a(m.g(), s2))
        {
            return null;
        }
        int i1;
        if (view != null)
        {
            i1 = view.getId();
        } else
        {
            i1 = 0;
        }
        if (i1 == -1 && k1 == -1 && s3 == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Must specify unique android:id, android:tag, or have a parent with an id for ").append(s2).toString());
        }
        if (k1 != -1)
        {
            s1 = b(k1);
        } else
        {
            s1 = null;
        }
        view = s1;
        if (s1 == null)
        {
            view = s1;
            if (s3 != null)
            {
                view = a(s3);
            }
        }
        s1 = view;
        if (view == null)
        {
            s1 = view;
            if (i1 != -1)
            {
                s1 = b(i1);
            }
        }
        if (a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("onCreateView: id=0x").append(Integer.toHexString(k1)).append(" fname=").append(s2).append(" existing=").append(s1).toString());
        }
        if (s1 == null)
        {
            view = n.a(context, s2, null);
            view.m = true;
            int j1;
            if (k1 != 0)
            {
                j1 = k1;
            } else
            {
                j1 = i1;
            }
            view.w = j1;
            view.x = i1;
            view.y = s3;
            view.n = true;
            view.r = this;
            view.s = m;
            view.a(m.g(), attributeset, ((h) (view)).c);
            a(view, true);
        } else
        {
            if (((h) (s1)).n)
            {
                throw new IllegalArgumentException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Duplicate id 0x").append(Integer.toHexString(k1)).append(", tag ").append(s3).append(", or parent id 0x").append(Integer.toHexString(i1)).append(" with another fragment for ").append(s2).toString());
            }
            s1.n = true;
            s1.s = m;
            if (!((h) (s1)).C)
            {
                s1.a(m.g(), attributeset, ((h) (s1)).c);
            }
            view = s1;
        }
        if (l < 1 && ((h) (view)).m)
        {
            a(view, 1, 0, 0, false);
        } else
        {
            b(view);
        }
        if (((h) (view)).H == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(s2).append(" did not create a view.").toString());
        }
        if (k1 != 0)
        {
            ((h) (view)).H.setId(k1);
        }
        if (((h) (view)).H.getTag() == null)
        {
            ((h) (view)).H.setTag(s3);
        }
        return ((h) (view)).H;
    }

    public View onCreateView(String s1, Context context, AttributeSet attributeset)
    {
        return onCreateView(null, s1, context, attributeset);
    }

    public void p()
    {
        e(4);
    }

    public void q()
    {
        s = true;
        e(3);
    }

    public void r()
    {
        e(2);
    }

    public void s()
    {
        e(1);
    }

    public void t()
    {
        t = true;
        e();
        e(0);
        m = null;
        n = null;
        o = null;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("FragmentManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        if (o != null)
        {
            android.support.v4.g.d.a(o, stringbuilder);
        } else
        {
            android.support.v4.g.d.a(m, stringbuilder);
        }
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

    public void u()
    {
        for (int i1 = 0; i1 < e.size(); i1++)
        {
            h h1 = (h)e.get(i1);
            if (h1 != null)
            {
                h1.F();
            }
        }

    }

    public h v()
    {
        return p;
    }

    android.view.LayoutInflater.Factory2 w()
    {
        return this;
    }

}
