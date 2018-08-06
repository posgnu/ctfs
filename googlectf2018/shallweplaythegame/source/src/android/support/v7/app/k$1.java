// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;


// Referenced classes of package android.support.v7.app:
//            k

class a
    implements Runnable
{

    final k a;

    public void run()
    {
        if ((a.s & 1) != 0)
        {
            a.f(0);
        }
        if ((a.s & 0x1000) != 0)
        {
            a.f(108);
        }
        a.r = false;
        a.s = 0;
    }

    (k k1)
    {
        a = k1;
        super();
    }
}
