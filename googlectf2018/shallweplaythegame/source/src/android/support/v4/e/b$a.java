// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.e;

import android.os.Bundle;
import android.os.Handler;

// Referenced classes of package android.support.v4.e:
//            b

class <init> extends <init>
{

    final b a;

    public void a(int i, Bundle bundle)
    {
        if (a.b != null)
        {
            a.b.post(new <init>(a, i, bundle));
            return;
        } else
        {
            a.a(i, bundle);
            return;
        }
    }

    (b b1)
    {
        a = b1;
        super();
    }
}
