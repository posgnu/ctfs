// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.os.Handler;
import java.util.concurrent.Callable;

// Referenced classes of package android.support.v4.f:
//            c

class c
    implements Runnable
{

    final Callable a;
    final Handler b;
    final able c;
    final c d;

    public void run()
    {
        Object obj;
        try
        {
            obj = a.call();
        }
        catch (Exception exception)
        {
            exception = null;
        }
        b.post(new Runnable(obj) {

            final Object a;
            final c._cls2 b;

            public void run()
            {
                b.c.a(a);
            }

            
            {
                b = c._cls2.this;
                a = obj;
                super();
            }
        });
    }

    able(c c1, Callable callable, Handler handler, able able)
    {
        d = c1;
        a = callable;
        b = handler;
        c = able;
        super();
    }
}
