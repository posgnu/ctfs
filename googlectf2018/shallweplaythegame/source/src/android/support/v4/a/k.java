// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// Referenced classes of package android.support.v4.a:
//            l, n, h, m, 
//            o

public class k
{

    private final l a;

    private k(l l1)
    {
        a = l1;
    }

    public static final k a(l l1)
    {
        return new k(l1);
    }

    public h a(String s)
    {
        return a.d.b(s);
    }

    public m a()
    {
        return a.i();
    }

    public View a(View view, String s, Context context, AttributeSet attributeset)
    {
        return a.d.onCreateView(view, s, context, attributeset);
    }

    public void a(Configuration configuration)
    {
        a.d.a(configuration);
    }

    public void a(Parcelable parcelable, o o1)
    {
        a.d.a(parcelable, o1);
    }

    public void a(h h1)
    {
        a.d.a(a, a, h1);
    }

    public void a(android.support.v4.g.k k1)
    {
        a.a(k1);
    }

    public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        a.b(s, filedescriptor, printwriter, as);
    }

    public void a(boolean flag)
    {
        a.d.a(flag);
    }

    public boolean a(Menu menu)
    {
        return a.d.a(menu);
    }

    public boolean a(Menu menu, MenuInflater menuinflater)
    {
        return a.d.a(menu, menuinflater);
    }

    public boolean a(MenuItem menuitem)
    {
        return a.d.a(menuitem);
    }

    public void b()
    {
        a.d.k();
    }

    public void b(Menu menu)
    {
        a.d.b(menu);
    }

    public void b(boolean flag)
    {
        a.d.b(flag);
    }

    public boolean b(MenuItem menuitem)
    {
        return a.d.b(menuitem);
    }

    public Parcelable c()
    {
        return a.d.j();
    }

    public void c(boolean flag)
    {
        a.a(flag);
    }

    public o d()
    {
        return a.d.h();
    }

    public void e()
    {
        a.d.l();
    }

    public void f()
    {
        a.d.m();
    }

    public void g()
    {
        a.d.n();
    }

    public void h()
    {
        a.d.o();
    }

    public void i()
    {
        a.d.p();
    }

    public void j()
    {
        a.d.q();
    }

    public void k()
    {
        a.d.r();
    }

    public void l()
    {
        a.d.t();
    }

    public void m()
    {
        a.d.u();
    }

    public boolean n()
    {
        return a.d.e();
    }

    public void o()
    {
        a.k();
    }

    public void p()
    {
        a.l();
    }

    public void q()
    {
        a.m();
    }

    public android.support.v4.g.k r()
    {
        return a.n();
    }
}
