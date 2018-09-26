// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.graphics.Typeface;
import android.support.v4.g.k;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.f:
//            b

static final class a
    implements a
{

    final String a;

    public void a(Typeface typeface)
    {
        ArrayList arraylist;
        synchronized (b.b())
        {
            arraylist = (ArrayList)b.c().get(a);
            b.c().remove(a);
        }
        for (int i = 0; i < arraylist.size(); i++)
        {
            ((a)arraylist.get(i)).a(typeface);
        }

        break MISSING_BLOCK_LABEL_74;
        typeface;
        obj;
        JVM INSTR monitorexit ;
        throw typeface;
    }

    public volatile void a(Object obj)
    {
        a((Typeface)obj);
    }

    (String s)
    {
        a = s;
        super();
    }
}
