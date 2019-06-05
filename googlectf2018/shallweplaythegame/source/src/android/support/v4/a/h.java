// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.animation.Animator;
import android.app.Activity;
import android.arch.lifecycle.b;
import android.arch.lifecycle.c;
import android.arch.lifecycle.d;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.g.k;
import android.support.v4.h.e;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

// Referenced classes of package android.support.v4.a:
//            n, l, z, v, 
//            i, o, y, m, 
//            j

public class h
    implements android.arch.lifecycle.c, ComponentCallbacks, android.view.View.OnCreateContextMenuListener
{
    static class a
    {

        View a;
        Animator b;
        int c;
        int d;
        int e;
        int f;
        y g;
        y h;
        boolean i;
        c j;
        boolean k;
        private Object l;
        private Object m;
        private Object n;
        private Object o;
        private Object p;
        private Object q;
        private Boolean r;
        private Boolean s;

        static Object a(a a1)
        {
            return a1.l;
        }

        static Object b(a a1)
        {
            return a1.m;
        }

        static Object c(a a1)
        {
            return a1.n;
        }

        static Object d(a a1)
        {
            return a1.o;
        }

        static Object e(a a1)
        {
            return a1.p;
        }

        static Object f(a a1)
        {
            return a1.q;
        }

        static Boolean g(a a1)
        {
            return a1.s;
        }

        static Boolean h(a a1)
        {
            return a1.r;
        }

        a()
        {
            l = null;
            m = h.a;
            n = null;
            o = h.a;
            p = null;
            q = h.a;
            g = null;
            h = null;
        }
    }

    public static class b extends RuntimeException
    {

        public b(String s1, Exception exception)
        {
            super(s1, exception);
        }
    }

    static interface c
    {

        public abstract void a();

        public abstract void b();
    }


    private static final k V = new k();
    static final Object a = new Object();
    boolean A;
    boolean B;
    boolean C;
    boolean D;
    boolean E;
    boolean F;
    ViewGroup G;
    View H;
    View I;
    boolean J;
    boolean K;
    v L;
    boolean M;
    boolean N;
    a O;
    boolean P;
    boolean Q;
    float R;
    LayoutInflater S;
    boolean T;
    d U;
    int b;
    Bundle c;
    SparseArray d;
    int e;
    String f;
    Bundle g;
    h h;
    int i;
    int j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    boolean o;
    boolean p;
    int q;
    n r;
    l s;
    n t;
    o u;
    h v;
    int w;
    int x;
    String y;
    boolean z;

    public h()
    {
        b = 0;
        e = -1;
        i = -1;
        E = true;
        K = true;
        U = new d(this);
    }

    private void W()
    {
        c c1 = null;
        if (O != null)
        {
            O.i = false;
            c1 = O.j;
            O.j = null;
        }
        if (c1 != null)
        {
            c1.a();
        }
    }

    private a X()
    {
        if (O == null)
        {
            O = new a();
        }
        return O;
    }

    public static h a(Context context, String s1, Bundle bundle)
    {
        Class class1;
        Class class2;
        try
        {
            class2 = (Class)V.get(s1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new b((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new b((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new b((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": make sure class name exists, is public, and has an").append(" empty constructor that is public").toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new b((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": could not find Fragment constructor").toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new b((new StringBuilder()).append("Unable to instantiate fragment ").append(s1).append(": calling Fragment constructor caused an exception").toString(), context);
        }
        class1 = class2;
        if (class2 != null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        class1 = context.getClassLoader().loadClass(s1);
        V.put(s1, class1);
        context = (h)class1.getConstructor(new Class[0]).newInstance(new Object[0]);
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        bundle.setClassLoader(context.getClass().getClassLoader());
        context.b(bundle);
        return context;
    }

    static boolean a(Context context, String s1)
    {
        Class class1;
        Class class2;
        boolean flag;
        try
        {
            class2 = (Class)V.get(s1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return false;
        }
        class1 = class2;
        if (class2 != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        class1 = context.getClassLoader().loadClass(s1);
        V.put(s1, class1);
        flag = android/support/v4/a/h.isAssignableFrom(class1);
        return flag;
    }

    static void b(h h1)
    {
        h1.W();
    }

    public void A()
    {
        if (r == null || r.m == null)
        {
            X().i = false;
            return;
        }
        if (Looper.myLooper() != r.m.h().getLooper())
        {
            r.m.h().postAtFrontOfQueue(new Runnable() {

                final h a;

                public void run()
                {
                    android.support.v4.a.h.b(a);
                }

            
            {
                a = h.this;
                super();
            }
            });
            return;
        } else
        {
            W();
            return;
        }
    }

    void B()
    {
        if (s == null)
        {
            throw new IllegalStateException("Fragment has not been attached yet.");
        } else
        {
            t = new n();
            t.a(s, new j() {

                final h a;

                public h a(Context context, String s1, Bundle bundle)
                {
                    return a.s.a(context, s1, bundle);
                }

                public View a(int i1)
                {
                    if (a.H == null)
                    {
                        throw new IllegalStateException("Fragment does not have a view");
                    } else
                    {
                        return a.H.findViewById(i1);
                    }
                }

                public boolean a()
                {
                    return a.H != null;
                }

            
            {
                a = h.this;
                super();
            }
            }, this);
            return;
        }
    }

    void C()
    {
        if (t != null)
        {
            t.k();
            t.e();
        }
        b = 4;
        F = false;
        j();
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onStart()").toString());
        }
        if (t != null)
        {
            t.n();
        }
        if (L != null)
        {
            L.g();
        }
        U.a(android.arch.lifecycle.b.a.ON_START);
    }

    void D()
    {
        if (t != null)
        {
            t.k();
            t.e();
        }
        b = 5;
        F = false;
        k();
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onResume()").toString());
        }
        if (t != null)
        {
            t.o();
            t.e();
        }
        U.a(android.arch.lifecycle.b.a.ON_RESUME);
    }

    void E()
    {
        if (t != null)
        {
            t.k();
        }
    }

    void F()
    {
        onLowMemory();
        if (t != null)
        {
            t.u();
        }
    }

    void G()
    {
        U.a(android.arch.lifecycle.b.a.ON_PAUSE);
        if (t != null)
        {
            t.p();
        }
        b = 4;
        F = false;
        l();
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onPause()").toString());
        } else
        {
            return;
        }
    }

    void H()
    {
        U.a(android.arch.lifecycle.b.a.ON_STOP);
        if (t != null)
        {
            t.q();
        }
        b = 3;
        F = false;
        m();
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onStop()").toString());
        } else
        {
            return;
        }
    }

    void I()
    {
label0:
        {
            if (t != null)
            {
                t.r();
            }
            b = 2;
            if (M)
            {
                M = false;
                if (!N)
                {
                    N = true;
                    L = s.a(f, M, false);
                }
                if (L != null)
                {
                    if (!s.j())
                    {
                        break label0;
                    }
                    L.d();
                }
            }
            return;
        }
        L.c();
    }

    void J()
    {
        if (t != null)
        {
            t.s();
        }
        b = 1;
        F = false;
        n();
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onDestroyView()").toString());
        }
        if (L != null)
        {
            L.f();
        }
        p = false;
    }

    void K()
    {
        U.a(android.arch.lifecycle.b.a.ON_DESTROY);
        if (t != null)
        {
            t.t();
        }
        b = 0;
        F = false;
        T = false;
        o();
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onDestroy()").toString());
        } else
        {
            t = null;
            return;
        }
    }

    void L()
    {
        F = false;
        q();
        S = null;
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onDetach()").toString());
        }
        if (t != null)
        {
            if (!C)
            {
                throw new IllegalStateException((new StringBuilder()).append("Child FragmentManager of ").append(this).append(" was not ").append(" destroyed and this fragment is not retaining instance").toString());
            }
            t.t();
            t = null;
        }
    }

    int M()
    {
        if (O == null)
        {
            return 0;
        } else
        {
            return O.d;
        }
    }

    int N()
    {
        if (O == null)
        {
            return 0;
        } else
        {
            return O.e;
        }
    }

    int O()
    {
        if (O == null)
        {
            return 0;
        } else
        {
            return O.f;
        }
    }

    y P()
    {
        if (O == null)
        {
            return null;
        } else
        {
            return O.g;
        }
    }

    y Q()
    {
        if (O == null)
        {
            return null;
        } else
        {
            return O.h;
        }
    }

    View R()
    {
        if (O == null)
        {
            return null;
        } else
        {
            return O.a;
        }
    }

    Animator S()
    {
        if (O == null)
        {
            return null;
        } else
        {
            return O.b;
        }
    }

    int T()
    {
        if (O == null)
        {
            return 0;
        } else
        {
            return O.c;
        }
    }

    boolean U()
    {
        if (O == null)
        {
            return false;
        } else
        {
            return O.i;
        }
    }

    boolean V()
    {
        if (O == null)
        {
            return false;
        } else
        {
            return O.k;
        }
    }

    public android.arch.lifecycle.b a()
    {
        return U;
    }

    h a(String s1)
    {
        if (s1.equals(f))
        {
            return this;
        }
        if (t != null)
        {
            return t.b(s1);
        } else
        {
            return null;
        }
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        return null;
    }

    public Animation a(int i1, boolean flag, int j1)
    {
        return null;
    }

    void a(int i1)
    {
        if (O == null && i1 == 0)
        {
            return;
        } else
        {
            X().d = i1;
            return;
        }
    }

    void a(int i1, int j1)
    {
        if (O == null && i1 == 0 && j1 == 0)
        {
            return;
        } else
        {
            X();
            O.e = i1;
            O.f = j1;
            return;
        }
    }

    public void a(int i1, int j1, Intent intent)
    {
    }

    final void a(int i1, h h1)
    {
        e = i1;
        if (h1 != null)
        {
            f = (new StringBuilder()).append(h1.f).append(":").append(e).toString();
            return;
        } else
        {
            f = (new StringBuilder()).append("android:fragment:").append(e).toString();
            return;
        }
    }

    public void a(int i1, String as[], int ai[])
    {
    }

    void a(Animator animator)
    {
        X().b = animator;
    }

    public void a(Activity activity)
    {
        F = true;
    }

    public void a(Activity activity, AttributeSet attributeset, Bundle bundle)
    {
        F = true;
    }

    public void a(Context context)
    {
        F = true;
        if (s == null)
        {
            context = null;
        } else
        {
            context = s.f();
        }
        if (context != null)
        {
            F = false;
            a(((Activity) (context)));
        }
    }

    public void a(Context context, AttributeSet attributeset, Bundle bundle)
    {
        F = true;
        if (s == null)
        {
            context = null;
        } else
        {
            context = s.f();
        }
        if (context != null)
        {
            F = false;
            a(((Activity) (context)), attributeset, bundle);
        }
    }

    void a(Configuration configuration)
    {
        onConfigurationChanged(configuration);
        if (t != null)
        {
            t.a(configuration);
        }
    }

    final void a(Bundle bundle)
    {
        if (d != null)
        {
            I.restoreHierarchyState(d);
            d = null;
        }
        F = false;
        i(bundle);
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onViewStateRestored()").toString());
        } else
        {
            return;
        }
    }

    void a(c c1)
    {
        X();
        if (c1 != O.j)
        {
            if (c1 != null && O.j != null)
            {
                throw new IllegalStateException((new StringBuilder()).append("Trying to set a replacement startPostponedEnterTransition on ").append(this).toString());
            }
            if (O.i)
            {
                O.j = c1;
            }
            if (c1 != null)
            {
                c1.b();
                return;
            }
        }
    }

    public void a(h h1)
    {
    }

    public void a(Menu menu)
    {
    }

    public void a(Menu menu, MenuInflater menuinflater)
    {
    }

    void a(View view)
    {
        X().a = view;
    }

    public void a(View view, Bundle bundle)
    {
    }

    public void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s1);
        printwriter.print("mFragmentId=#");
        printwriter.print(Integer.toHexString(w));
        printwriter.print(" mContainerId=#");
        printwriter.print(Integer.toHexString(x));
        printwriter.print(" mTag=");
        printwriter.println(y);
        printwriter.print(s1);
        printwriter.print("mState=");
        printwriter.print(b);
        printwriter.print(" mIndex=");
        printwriter.print(e);
        printwriter.print(" mWho=");
        printwriter.print(f);
        printwriter.print(" mBackStackNesting=");
        printwriter.println(q);
        printwriter.print(s1);
        printwriter.print("mAdded=");
        printwriter.print(k);
        printwriter.print(" mRemoving=");
        printwriter.print(l);
        printwriter.print(" mFromLayout=");
        printwriter.print(m);
        printwriter.print(" mInLayout=");
        printwriter.println(n);
        printwriter.print(s1);
        printwriter.print("mHidden=");
        printwriter.print(z);
        printwriter.print(" mDetached=");
        printwriter.print(A);
        printwriter.print(" mMenuVisible=");
        printwriter.print(E);
        printwriter.print(" mHasMenu=");
        printwriter.println(D);
        printwriter.print(s1);
        printwriter.print("mRetainInstance=");
        printwriter.print(B);
        printwriter.print(" mRetaining=");
        printwriter.print(C);
        printwriter.print(" mUserVisibleHint=");
        printwriter.println(K);
        if (r != null)
        {
            printwriter.print(s1);
            printwriter.print("mFragmentManager=");
            printwriter.println(r);
        }
        if (s != null)
        {
            printwriter.print(s1);
            printwriter.print("mHost=");
            printwriter.println(s);
        }
        if (v != null)
        {
            printwriter.print(s1);
            printwriter.print("mParentFragment=");
            printwriter.println(v);
        }
        if (g != null)
        {
            printwriter.print(s1);
            printwriter.print("mArguments=");
            printwriter.println(g);
        }
        if (c != null)
        {
            printwriter.print(s1);
            printwriter.print("mSavedFragmentState=");
            printwriter.println(c);
        }
        if (d != null)
        {
            printwriter.print(s1);
            printwriter.print("mSavedViewState=");
            printwriter.println(d);
        }
        if (h != null)
        {
            printwriter.print(s1);
            printwriter.print("mTarget=");
            printwriter.print(h);
            printwriter.print(" mTargetRequestCode=");
            printwriter.println(j);
        }
        if (M() != 0)
        {
            printwriter.print(s1);
            printwriter.print("mNextAnim=");
            printwriter.println(M());
        }
        if (G != null)
        {
            printwriter.print(s1);
            printwriter.print("mContainer=");
            printwriter.println(G);
        }
        if (H != null)
        {
            printwriter.print(s1);
            printwriter.print("mView=");
            printwriter.println(H);
        }
        if (I != null)
        {
            printwriter.print(s1);
            printwriter.print("mInnerView=");
            printwriter.println(H);
        }
        if (R() != null)
        {
            printwriter.print(s1);
            printwriter.print("mAnimatingAway=");
            printwriter.println(R());
            printwriter.print(s1);
            printwriter.print("mStateAfterAnimating=");
            printwriter.println(T());
        }
        if (L != null)
        {
            printwriter.print(s1);
            printwriter.println("Loader Manager:");
            L.a((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
        }
        if (t != null)
        {
            printwriter.print(s1);
            printwriter.println((new StringBuilder()).append("Child ").append(t).append(":").toString());
            t.a((new StringBuilder()).append(s1).append("  ").toString(), filedescriptor, printwriter, as);
        }
    }

    public void a(boolean flag)
    {
    }

    public boolean a(MenuItem menuitem)
    {
        return false;
    }

    public Animator b(int i1, boolean flag, int j1)
    {
        return null;
    }

    View b(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        if (t != null)
        {
            t.k();
        }
        p = true;
        return a(layoutinflater, viewgroup, bundle);
    }

    void b(int i1)
    {
        X().c = i1;
    }

    public void b(Bundle bundle)
    {
        if (e >= 0 && c())
        {
            throw new IllegalStateException("Fragment already active and state has been saved");
        } else
        {
            g = bundle;
            return;
        }
    }

    public void b(Menu menu)
    {
    }

    public void b(boolean flag)
    {
    }

    final boolean b()
    {
        return q > 0;
    }

    boolean b(Menu menu, MenuInflater menuinflater)
    {
        boolean flag1 = false;
        boolean flag2 = false;
        if (!z)
        {
            boolean flag = flag2;
            if (D)
            {
                flag = flag2;
                if (E)
                {
                    flag = true;
                    a(menu, menuinflater);
                }
            }
            flag1 = flag;
            if (t != null)
            {
                flag1 = flag | t.a(menu, menuinflater);
            }
        }
        return flag1;
    }

    public boolean b(MenuItem menuitem)
    {
        return false;
    }

    public LayoutInflater c(Bundle bundle)
    {
        return e(bundle);
    }

    public void c(boolean flag)
    {
    }

    public final boolean c()
    {
        if (r == null)
        {
            return false;
        } else
        {
            return r.c();
        }
    }

    boolean c(Menu menu)
    {
        boolean flag1 = false;
        boolean flag2 = false;
        if (!z)
        {
            boolean flag = flag2;
            if (D)
            {
                flag = flag2;
                if (E)
                {
                    flag = true;
                    a(menu);
                }
            }
            flag1 = flag;
            if (t != null)
            {
                flag1 = flag | t.a(menu);
            }
        }
        return flag1;
    }

    boolean c(MenuItem menuitem)
    {
        while (!z && (D && E && a(menuitem) || t != null && t.a(menuitem))) 
        {
            return true;
        }
        return false;
    }

    public final i d()
    {
        if (s == null)
        {
            return null;
        } else
        {
            return (i)s.f();
        }
    }

    LayoutInflater d(Bundle bundle)
    {
        S = c(bundle);
        return S;
    }

    void d(Menu menu)
    {
        if (!z)
        {
            if (D && E)
            {
                b(menu);
            }
            if (t != null)
            {
                t.b(menu);
            }
        }
    }

    void d(boolean flag)
    {
        b(flag);
        if (t != null)
        {
            t.a(flag);
        }
    }

    boolean d(MenuItem menuitem)
    {
        while (!z && (b(menuitem) || t != null && t.b(menuitem))) 
        {
            return true;
        }
        return false;
    }

    public final Resources e()
    {
        if (s == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Fragment ").append(this).append(" not attached to Activity").toString());
        } else
        {
            return s.g().getResources();
        }
    }

    public LayoutInflater e(Bundle bundle)
    {
        if (s == null)
        {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        } else
        {
            bundle = s.b();
            g();
            android.support.v4.h.e.b(bundle, t.w());
            return bundle;
        }
    }

    void e(boolean flag)
    {
        c(flag);
        if (t != null)
        {
            t.b(flag);
        }
    }

    public final boolean equals(Object obj)
    {
        return super.equals(obj);
    }

    public final m f()
    {
        return r;
    }

    public void f(Bundle bundle)
    {
        F = true;
        g(bundle);
        if (t != null && !t.a(1))
        {
            t.l();
        }
    }

    void f(boolean flag)
    {
        X().k = flag;
    }

    public final m g()
    {
        if (t != null) goto _L2; else goto _L1
_L1:
        B();
        if (b < 5) goto _L4; else goto _L3
_L3:
        t.o();
_L2:
        return t;
_L4:
        if (b >= 4)
        {
            t.n();
        } else
        if (b >= 2)
        {
            t.m();
        } else
        if (b >= 1)
        {
            t.l();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    void g(Bundle bundle)
    {
        if (bundle != null)
        {
            bundle = bundle.getParcelable("android:support:fragments");
            if (bundle != null)
            {
                if (t == null)
                {
                    B();
                }
                t.a(bundle, u);
                u = null;
                t.l();
            }
        }
    }

    m h()
    {
        return t;
    }

    public void h(Bundle bundle)
    {
        F = true;
    }

    public final int hashCode()
    {
        return super.hashCode();
    }

    public View i()
    {
        return H;
    }

    public void i(Bundle bundle)
    {
        F = true;
    }

    public void j()
    {
        F = true;
        if (!M)
        {
            M = true;
            if (!N)
            {
                N = true;
                L = s.a(f, M, false);
            } else
            if (L != null)
            {
                L.b();
                return;
            }
        }
    }

    public void j(Bundle bundle)
    {
    }

    public void k()
    {
        F = true;
    }

    void k(Bundle bundle)
    {
        if (t != null)
        {
            t.k();
        }
        b = 1;
        F = false;
        f(bundle);
        T = true;
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onCreate()").toString());
        } else
        {
            U.a(android.arch.lifecycle.b.a.ON_CREATE);
            return;
        }
    }

    public void l()
    {
        F = true;
    }

    void l(Bundle bundle)
    {
        if (t != null)
        {
            t.k();
        }
        b = 2;
        F = false;
        h(bundle);
        if (!F)
        {
            throw new z((new StringBuilder()).append("Fragment ").append(this).append(" did not call through to super.onActivityCreated()").toString());
        }
        if (t != null)
        {
            t.m();
        }
    }

    public void m()
    {
        F = true;
    }

    void m(Bundle bundle)
    {
        j(bundle);
        if (t != null)
        {
            android.os.Parcelable parcelable = t.j();
            if (parcelable != null)
            {
                bundle.putParcelable("android:support:fragments", parcelable);
            }
        }
    }

    public void n()
    {
        F = true;
    }

    public void o()
    {
        F = true;
        if (!N)
        {
            N = true;
            L = s.a(f, M, false);
        }
        if (L != null)
        {
            L.h();
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        F = true;
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        d().onCreateContextMenu(contextmenu, view, contextmenuinfo);
    }

    public void onLowMemory()
    {
        F = true;
    }

    void p()
    {
        e = -1;
        f = null;
        k = false;
        l = false;
        m = false;
        n = false;
        o = false;
        q = 0;
        r = null;
        t = null;
        s = null;
        w = 0;
        x = 0;
        y = null;
        z = false;
        A = false;
        C = false;
        L = null;
        M = false;
        N = false;
    }

    public void q()
    {
        F = true;
    }

    public void r()
    {
    }

    public Object s()
    {
        if (O == null)
        {
            return null;
        } else
        {
            return a.a(O);
        }
    }

    public Object t()
    {
        if (O == null)
        {
            return null;
        }
        if (android.support.v4.a.a.b(O) == a)
        {
            return s();
        } else
        {
            return android.support.v4.a.a.b(O);
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        android.support.v4.g.d.a(this, stringbuilder);
        if (e >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(e);
        }
        if (w != 0)
        {
            stringbuilder.append(" id=0x");
            stringbuilder.append(Integer.toHexString(w));
        }
        if (y != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(y);
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

    public Object u()
    {
        if (O == null)
        {
            return null;
        } else
        {
            return android.support.v4.a.a.c(O);
        }
    }

    public Object v()
    {
        if (O == null)
        {
            return null;
        }
        if (android.support.v4.a.a.d(O) == a)
        {
            return u();
        } else
        {
            return android.support.v4.a.a.d(O);
        }
    }

    public Object w()
    {
        if (O == null)
        {
            return null;
        } else
        {
            return android.support.v4.a.a.e(O);
        }
    }

    public Object x()
    {
        if (O == null)
        {
            return null;
        }
        if (a.f(O) == a)
        {
            return w();
        } else
        {
            return a.f(O);
        }
    }

    public boolean y()
    {
        if (O == null || a.g(O) == null)
        {
            return true;
        } else
        {
            return a.g(O).booleanValue();
        }
    }

    public boolean z()
    {
        if (O == null || a.h(O) == null)
        {
            return true;
        } else
        {
            return a.h(O).booleanValue();
        }
    }

}
