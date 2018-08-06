// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.support.v4.h.p;
import android.support.v4.h.r;
import android.support.v4.h.t;
import android.support.v7.widget.ActionBarContextView;
import android.view.View;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.app:
//            k

class a
    implements Runnable
{

    final k a;

    public void run()
    {
        a.o.showAtLocation(a.n, 55, 0, 0);
        a.t();
        if (a.s())
        {
            a.n.setAlpha(0.0F);
            a.q = p.d(a.n).a(1.0F);
            a.q.a(new t() {

                final k._cls5 a;

                public void a(View view)
                {
                    a.a.n.setVisibility(0);
                }

                public void b(View view)
                {
                    a.a.n.setAlpha(1.0F);
                    a.a.q.a(null);
                    a.a.q = null;
                }

            
            {
                a = k._cls5.this;
                super();
            }
            });
            return;
        } else
        {
            a.n.setAlpha(1.0F);
            a.n.setVisibility(0);
            return;
        }
    }

    t>(k k1)
    {
        a = k1;
        super();
    }
}
