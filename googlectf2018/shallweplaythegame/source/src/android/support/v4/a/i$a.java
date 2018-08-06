// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;

// Referenced classes of package android.support.v4.a:
//            l, i, h

class nit> extends l
{

    final i a;

    public View a(int j)
    {
        return a.findViewById(j);
    }

    public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        a.dump(s, filedescriptor, printwriter, as);
    }

    public boolean a()
    {
        Window window = a.getWindow();
        return window != null && window.peekDecorView() != null;
    }

    public boolean a(h h)
    {
        return !a.isFinishing();
    }

    public LayoutInflater b()
    {
        return a.getLayoutInflater().cloneInContext(a);
    }

    public void b(h h)
    {
        a.a(h);
    }

    public void c()
    {
        a.d();
    }

    public boolean d()
    {
        return a.getWindow() != null;
    }

    public int e()
    {
        Window window = a.getWindow();
        if (window == null)
        {
            return 0;
        } else
        {
            return window.getAttributes().windowAnimations;
        }
    }

    public er(i j)
    {
        a = j;
        super(j);
    }
}
