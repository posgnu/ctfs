// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.os.Handler;
import java.util.concurrent.Callable;

// Referenced classes of package android.support.v4.f:
//            c

class a
    implements Runnable
{

    final Object a;
    final a b;

    public void run()
    {
        b.b.b(a);
    }

    le(le le, Object obj)
    {
        b = le;
        a = obj;
        super();
    }

    // Unreferenced inner class android/support/v4/f/c$2

/* anonymous class */
    class c._cls2
        implements Runnable
    {

        final Callable a;
        final Handler b;
        final c.a c;
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
            b.post(new c._cls2._cls1(this, obj));
        }

            
            {
                d = c1;
                a = callable;
                b = handler;
                c = a1;
                super();
            }
    }

}
