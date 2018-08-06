// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package android.support.v4.f:
//            c

class e
    implements Runnable
{

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

    s.Condition(c c1, AtomicReference atomicreference, Callable callable, ReentrantLock reentrantlock, AtomicBoolean atomicboolean, Condition condition)
    {
        f = c1;
        a = atomicreference;
        b = callable;
        c = reentrantlock;
        d = atomicboolean;
        e = condition;
        super();
    }
}
