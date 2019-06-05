// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.os.Message;

// Referenced classes of package android.support.v4.f:
//            c

class a
    implements android.os.ler.Callback
{

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

    ck(c c1)
    {
        a = c1;
        super();
    }
}
