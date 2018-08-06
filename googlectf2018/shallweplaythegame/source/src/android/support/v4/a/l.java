// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.v4.g.k;
import android.view.LayoutInflater;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// Referenced classes of package android.support.v4.a:
//            j, n, i, v, 
//            h

public abstract class l extends j
{

    private final Activity a;
    final Context b;
    final int c;
    final n d;
    private final Handler e;
    private k f;
    private boolean g;
    private v h;
    private boolean i;
    private boolean j;

    l(Activity activity, Context context, Handler handler, int i1)
    {
        d = new n();
        a = activity;
        b = context;
        e = handler;
        c = i1;
    }

    l(i i1)
    {
        this(((Activity) (i1)), ((Context) (i1)), i1.c, 0);
    }

    v a(String s, boolean flag, boolean flag1)
    {
        if (f == null)
        {
            f = new k();
        }
        v v1 = (v)f.get(s);
        if (v1 == null && flag1)
        {
            v1 = new v(s, this, flag);
            f.put(s, v1);
            s = v1;
        } else
        {
            s = v1;
            if (flag)
            {
                s = v1;
                if (v1 != null)
                {
                    s = v1;
                    if (!v1.e)
                    {
                        v1.b();
                        return v1;
                    }
                }
            }
        }
        return s;
    }

    public View a(int i1)
    {
        return null;
    }

    void a(k k1)
    {
        if (k1 != null)
        {
            int j1 = k1.size();
            for (int i1 = 0; i1 < j1; i1++)
            {
                ((v)k1.c(i1)).a(this);
            }

        }
        f = k1;
    }

    void a(String s)
    {
        if (f != null)
        {
            v v1 = (v)f.get(s);
            if (v1 != null && !v1.f)
            {
                v1.h();
                f.remove(s);
            }
        }
    }

    public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
    }

    void a(boolean flag)
    {
        for (g = flag; h == null || !j;)
        {
            return;
        }

        j = false;
        if (flag)
        {
            h.d();
            return;
        } else
        {
            h.c();
            return;
        }
    }

    public boolean a()
    {
        return true;
    }

    public boolean a(h h1)
    {
        return true;
    }

    public LayoutInflater b()
    {
        return (LayoutInflater)b.getSystemService("layout_inflater");
    }

    void b(h h1)
    {
    }

    void b(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        printwriter.print(s);
        printwriter.print("mLoadersStarted=");
        printwriter.println(j);
        if (h != null)
        {
            printwriter.print(s);
            printwriter.print("Loader Manager ");
            printwriter.print(Integer.toHexString(System.identityHashCode(h)));
            printwriter.println(":");
            h.a((new StringBuilder()).append(s).append("  ").toString(), filedescriptor, printwriter, as);
        }
    }

    public void c()
    {
    }

    public boolean d()
    {
        return true;
    }

    public int e()
    {
        return c;
    }

    Activity f()
    {
        return a;
    }

    Context g()
    {
        return b;
    }

    Handler h()
    {
        return e;
    }

    n i()
    {
        return d;
    }

    boolean j()
    {
        return g;
    }

    void k()
    {
        if (j)
        {
            return;
        }
        j = true;
        if (h == null) goto _L2; else goto _L1
_L1:
        h.b();
_L4:
        i = true;
        return;
_L2:
        if (!i)
        {
            h = a("(root)", j, false);
            if (h != null && !h.e)
            {
                h.b();
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    void l()
    {
        if (h == null)
        {
            return;
        } else
        {
            h.h();
            return;
        }
    }

    void m()
    {
        if (f != null)
        {
            int k1 = f.size();
            v av[] = new v[k1];
            for (int i1 = k1 - 1; i1 >= 0; i1--)
            {
                av[i1] = (v)f.c(i1);
            }

            for (int j1 = 0; j1 < k1; j1++)
            {
                v v1 = av[j1];
                v1.e();
                v1.g();
            }

        }
    }

    k n()
    {
        int j1 = 0;
        boolean flag1;
        if (f != null)
        {
            int k1 = f.size();
            v av[] = new v[k1];
            for (int i1 = k1 - 1; i1 >= 0; i1--)
            {
                av[i1] = (v)f.c(i1);
            }

            boolean flag2 = j();
            boolean flag = false;
            do
            {
                flag1 = flag;
                if (j1 >= k1)
                {
                    break;
                }
                v v1 = av[j1];
                if (!v1.f && flag2)
                {
                    if (!v1.e)
                    {
                        v1.b();
                    }
                    v1.d();
                }
                if (v1.f)
                {
                    flag = true;
                } else
                {
                    v1.h();
                    f.remove(v1.d);
                }
                j1++;
            } while (true);
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            return f;
        } else
        {
            return null;
        }
    }
}
