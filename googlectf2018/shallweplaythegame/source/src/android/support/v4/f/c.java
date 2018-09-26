// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class c
{
    public static interface a
    {

        public abstract void a(Object obj);
    }


    private final Object a = new Object();
    private HandlerThread b;
    private Handler c;
    private int d;
    private android.os.Handler.Callback e;
    private final int f;
    private final int g;
    private final String h;

    public c(String s, int i, int j)
    {
        e = new android.os.Handler.Callback() {

            final c a;

            public boolean handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return true;

                case 1: // '\001'
                    c.a(a, (Runnable)message.obj);
                    return true;

                case 0: // '\0'
                    c.a(a);
                    return true;
                }
            }

            
            {
                a = c.this;
                super();
            }
        };
        h = s;
        g = i;
        f = j;
        d = 0;
    }

    private void a()
    {
label0:
        {
            synchronized (a)
            {
                if (!c.hasMessages(1))
                {
                    break label0;
                }
            }
            return;
        }
        b.quit();
        b = null;
        c = null;
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void a(c c1)
    {
        c1.a();
    }

    static void a(c c1, Runnable runnable)
    {
        c1.b(runnable);
    }

    private void a(Runnable runnable)
    {
        synchronized (a)
        {
            if (b == null)
            {
                b = new HandlerThread(h, g);
                b.start();
                c = new Handler(b.getLooper(), e);
                d = d + 1;
            }
            c.removeMessages(0);
            c.sendMessage(c.obtainMessage(1, runnable));
        }
        return;
        runnable;
        obj;
        JVM INSTR monitorexit ;
        throw runnable;
    }

    private void b(Runnable runnable)
    {
        runnable.run();
        synchronized (a)
        {
            c.removeMessages(0);
            c.sendMessageDelayed(c.obtainMessage(0), f);
        }
        return;
        exception;
        runnable;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Object a(Callable callable, int i)
    {
        ReentrantLock reentrantlock;
        Condition condition;
        AtomicReference atomicreference;
        AtomicBoolean atomicboolean;
        reentrantlock = new ReentrantLock();
        condition = reentrantlock.newCondition();
        atomicreference = new AtomicReference();
        atomicboolean = new AtomicBoolean(true);
        a(new Runnable(atomicreference, callable, reentrantlock, atomicboolean, condition) {

            final AtomicReference a;
            final Callable b;
            final ReentrantLock c;
            final AtomicBoolean d;
            final Condition e;
            final c f;

            public void run()
            {
                Exception exception;
                try
                {
                    a.set(b.call());
                }
                catch (Exception exception1) { }
                c.lock();
                d.set(false);
                e.signal();
                c.unlock();
                return;
                exception;
                c.unlock();
                throw exception;
            }

            
            {
                f = c.this;
                a = atomicreference;
                b = callable;
                c = reentrantlock;
                d = atomicboolean;
                e = condition;
                super();
            }
        });
        reentrantlock.lock();
        if (atomicboolean.get())
        {
            break MISSING_BLOCK_LABEL_77;
        }
        callable = ((Callable) (atomicreference.get()));
        reentrantlock.unlock();
        return callable;
        long l = TimeUnit.MILLISECONDS.toNanos(i);
_L4:
        long l1;
        try
        {
            l1 = condition.awaitNanos(l);
        }
        // Misplaced declaration of an exception variable
        catch (Callable callable)
        {
            l1 = l;
        }
        if (atomicboolean.get()) goto _L2; else goto _L1
_L1:
        callable = ((Callable) (atomicreference.get()));
        reentrantlock.unlock();
        return callable;
_L2:
        l = l1;
        if (l1 > 0L) goto _L4; else goto _L3
_L3:
        throw new InterruptedException("timeout");
        callable;
        reentrantlock.unlock();
        throw callable;
    }

    public void a(Callable callable, a a1)
    {
        a(new Runnable(callable, new Handler(), a1) {

            final Callable a;
            final Handler b;
            final a c;
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
                b.post(new Runnable(this, obj) {

                    final Object a;
                    final _cls2 b;

                    public void run()
                    {
                        b.c.a(a);
                    }

            
            {
                b = _pcls2;
                a = obj;
                super();
            }
                });
            }

            
            {
                d = c.this;
                a = callable;
                b = handler;
                c = a1;
                super();
            }
        });
    }
}
