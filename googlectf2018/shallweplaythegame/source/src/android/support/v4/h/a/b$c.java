// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v4.h.a:
//            b, d, a

private static class _cls1.a extends _cls1.a
{

    public Object a(b b1)
    {
        return d.a(new d.a(b1) {

            final b a;
            final b.c b;

            public Object a(int i)
            {
                a a1 = a.a(i);
                if (a1 == null)
                {
                    return null;
                } else
                {
                    return a1.a();
                }
            }

            public List a(String s, int i)
            {
                s = a.a(s, i);
                if (s == null)
                {
                    return null;
                }
                ArrayList arraylist = new ArrayList();
                int j = s.size();
                for (i = 0; i < j; i++)
                {
                    arraylist.add(((a)s.get(i)).a());
                }

                return arraylist;
            }

            public boolean a(int i, int j, Bundle bundle)
            {
                return a.a(i, j, bundle);
            }

            public Object b(int i)
            {
                a a1 = a.b(i);
                if (a1 == null)
                {
                    return null;
                } else
                {
                    return a1.a();
                }
            }

            
            {
                b = b.c.this;
                a = b1;
                super();
            }
        });
    }

    _cls1.a()
    {
    }
}
