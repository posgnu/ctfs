// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.os.Bundle;
import android.support.v4.b.b;
import android.support.v4.g.d;
import android.support.v4.g.l;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;

// Referenced classes of package android.support.v4.a:
//            u, l, n

class v extends u
{
    final class a
        implements android.support.v4.b.b.a, android.support.v4.b.b.b
    {

        final int a;
        final Bundle b;
        u.a c;
        b d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;
        final v o;

        void a()
        {
            if (i && j)
            {
                h = true;
            } else
            if (!h)
            {
                h = true;
                if (v.a)
                {
                    Log.v("LoaderManager", (new StringBuilder()).append("  Starting: ").append(this).toString());
                }
                if (d == null && c != null)
                {
                    d = c.a(a, b);
                }
                if (d != null)
                {
                    if (d.getClass().isMemberClass() && !Modifier.isStatic(d.getClass().getModifiers()))
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Object returned from onCreateLoader must not be a non-static inner member class: ").append(d).toString());
                    }
                    if (!m)
                    {
                        d.a(a, this);
                        d.a(this);
                        m = true;
                    }
                    d.a();
                    return;
                }
            }
        }

        void a(b b1, Object obj)
        {
            if (c == null)
            {
                break MISSING_BLOCK_LABEL_130;
            }
            String s;
            if (o.g != null)
            {
                s = o.g.d.u;
                o.g.d.u = "onLoadFinished";
            } else
            {
                s = null;
            }
            if (v.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  onLoadFinished in ").append(b1).append(": ").append(b1.a(obj)).toString());
            }
            c.a(b1, obj);
            if (o.g != null)
            {
                o.g.d.u = s;
            }
            f = true;
            return;
            b1;
            if (o.g != null)
            {
                o.g.d.u = s;
            }
            throw b1;
        }

        public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
        {
            printwriter.print(s);
            printwriter.print("mId=");
            printwriter.print(a);
            printwriter.print(" mArgs=");
            printwriter.println(b);
            printwriter.print(s);
            printwriter.print("mCallbacks=");
            printwriter.println(c);
            printwriter.print(s);
            printwriter.print("mLoader=");
            printwriter.println(d);
            if (d != null)
            {
                d.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
            }
            if (e || f)
            {
                printwriter.print(s);
                printwriter.print("mHaveData=");
                printwriter.print(e);
                printwriter.print("  mDeliveredData=");
                printwriter.println(f);
                printwriter.print(s);
                printwriter.print("mData=");
                printwriter.println(g);
            }
            printwriter.print(s);
            printwriter.print("mStarted=");
            printwriter.print(h);
            printwriter.print(" mReportNextStart=");
            printwriter.print(k);
            printwriter.print(" mDestroyed=");
            printwriter.println(l);
            printwriter.print(s);
            printwriter.print("mRetaining=");
            printwriter.print(i);
            printwriter.print(" mRetainingStarted=");
            printwriter.print(j);
            printwriter.print(" mListenerRegistered=");
            printwriter.println(m);
            if (n != null)
            {
                printwriter.print(s);
                printwriter.println("Pending Loader ");
                printwriter.print(n);
                printwriter.println(":");
                n.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
            }
        }

        void b()
        {
            if (v.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Retaining: ").append(this).toString());
            }
            i = true;
            j = h;
            h = false;
            c = null;
        }

        void c()
        {
            if (i)
            {
                if (v.a)
                {
                    Log.v("LoaderManager", (new StringBuilder()).append("  Finished Retaining: ").append(this).toString());
                }
                i = false;
                if (h != j && !h)
                {
                    e();
                }
            }
            if (h && e && !k)
            {
                a(d, g);
            }
        }

        void d()
        {
            if (h && k)
            {
                k = false;
                if (e && !i)
                {
                    a(d, g);
                }
            }
        }

        void e()
        {
            if (v.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Stopping: ").append(this).toString());
            }
            h = false;
            if (!i && d != null && m)
            {
                m = false;
                d.a(this);
                d.b(this);
                d.c();
            }
        }

        void f()
        {
            if (v.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Destroying: ").append(this).toString());
            }
            l = true;
            boolean flag = f;
            f = false;
            if (c == null || d == null || !e || !flag)
            {
                break MISSING_BLOCK_LABEL_178;
            }
            if (v.a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("  Resetting: ").append(this).toString());
            }
            String s;
            Exception exception;
            if (o.g != null)
            {
                s = o.g.d.u;
                o.g.d.u = "onLoaderReset";
            } else
            {
                s = null;
            }
            c.a(d);
            if (o.g != null)
            {
                o.g.d.u = s;
            }
            c = null;
            g = null;
            e = false;
            if (d != null)
            {
                if (m)
                {
                    m = false;
                    d.a(this);
                    d.b(this);
                }
                d.e();
            }
            if (n != null)
            {
                n.f();
            }
            return;
            exception;
            if (o.g != null)
            {
                o.g.d.u = s;
            }
            throw exception;
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder(64);
            stringbuilder.append("LoaderInfo{");
            stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
            stringbuilder.append(" #");
            stringbuilder.append(a);
            stringbuilder.append(" : ");
            android.support.v4.g.d.a(d, stringbuilder);
            stringbuilder.append("}}");
            return stringbuilder.toString();
        }
    }


    static boolean a = false;
    final l b = new l();
    final l c = new l();
    final String d;
    boolean e;
    boolean f;
    android.support.v4.a.l g;

    v(String s, android.support.v4.a.l l1, boolean flag)
    {
        d = s;
        g = l1;
        e = flag;
    }

    void a(android.support.v4.a.l l1)
    {
        g = l1;
    }

    public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        boolean flag = false;
        if (b.b() > 0)
        {
            printwriter.print(s);
            printwriter.println("Active Loaders:");
            String s1 = (new StringBuilder()).append(s).append("    ").toString();
            for (int i = 0; i < b.b(); i++)
            {
                a a1 = (a)b.e(i);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(b.d(i));
                printwriter.print(": ");
                printwriter.println(a1.toString());
                a1.a(s1, filedescriptor, printwriter, as);
            }

        }
        if (c.b() > 0)
        {
            printwriter.print(s);
            printwriter.println("Inactive Loaders:");
            String s2 = (new StringBuilder()).append(s).append("    ").toString();
            for (int j = ((flag) ? 1 : 0); j < c.b(); j++)
            {
                a a2 = (a)c.e(j);
                printwriter.print(s);
                printwriter.print("  #");
                printwriter.print(c.d(j));
                printwriter.print(": ");
                printwriter.println(a2.toString());
                a2.a(s2, filedescriptor, printwriter, as);
            }

        }
    }

    public boolean a()
    {
        int j = b.b();
        int i = 0;
        boolean flag1 = false;
        while (i < j) 
        {
            a a1 = (a)b.e(i);
            boolean flag;
            if (a1.h && !a1.f)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag1 |= flag;
            i++;
        }
        return flag1;
    }

    void b()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Starting in ").append(this).toString());
        }
        if (e)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder()).append("Called doStart when already started: ").append(this).toString(), runtimeexception);
        } else
        {
            e = true;
            int i = b.b() - 1;
            while (i >= 0) 
            {
                ((a)b.e(i)).a();
                i--;
            }
        }
    }

    void c()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Stopping in ").append(this).toString());
        }
        if (!e)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder()).append("Called doStop when not started: ").append(this).toString(), runtimeexception);
            return;
        }
        for (int i = b.b() - 1; i >= 0; i--)
        {
            ((a)b.e(i)).e();
        }

        e = false;
    }

    void d()
    {
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Retaining in ").append(this).toString());
        }
        if (!e)
        {
            RuntimeException runtimeexception = new RuntimeException("here");
            runtimeexception.fillInStackTrace();
            Log.w("LoaderManager", (new StringBuilder()).append("Called doRetain when not started: ").append(this).toString(), runtimeexception);
        } else
        {
            f = true;
            e = false;
            int i = b.b() - 1;
            while (i >= 0) 
            {
                ((a)b.e(i)).b();
                i--;
            }
        }
    }

    void e()
    {
        if (f)
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("Finished Retaining in ").append(this).toString());
            }
            f = false;
            for (int i = b.b() - 1; i >= 0; i--)
            {
                ((a)b.e(i)).c();
            }

        }
    }

    void f()
    {
        for (int i = b.b() - 1; i >= 0; i--)
        {
            ((a)b.e(i)).k = true;
        }

    }

    void g()
    {
        for (int i = b.b() - 1; i >= 0; i--)
        {
            ((a)b.e(i)).d();
        }

    }

    void h()
    {
        if (!f)
        {
            if (a)
            {
                Log.v("LoaderManager", (new StringBuilder()).append("Destroying Active in ").append(this).toString());
            }
            for (int i = b.b() - 1; i >= 0; i--)
            {
                ((a)b.e(i)).f();
            }

            b.c();
        }
        if (a)
        {
            Log.v("LoaderManager", (new StringBuilder()).append("Destroying Inactive in ").append(this).toString());
        }
        for (int j = c.b() - 1; j >= 0; j--)
        {
            ((a)c.e(j)).f();
        }

        c.c();
        g = null;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("LoaderManager{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        stringbuilder.append(" in ");
        android.support.v4.g.d.a(g, stringbuilder);
        stringbuilder.append("}}");
        return stringbuilder.toString();
    }

}
