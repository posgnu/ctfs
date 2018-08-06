// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.content.Context;
import android.os.Bundle;
import android.view.View;

// Referenced classes of package android.support.v4.a:
//            j, h, l

class nit> extends j
{

    final h a;

    public h a(Context context, String s, Bundle bundle)
    {
        return a.s.a(context, s, bundle);
    }

    public View a(int i)
    {
        if (a.H == null)
        {
            throw new IllegalStateException("Fragment does not have a view");
        } else
        {
            return a.H.findViewById(i);
        }
    }

    public boolean a()
    {
        return a.H != null;
    }

    eption(h h1)
    {
        a = h1;
        super();
    }
}
