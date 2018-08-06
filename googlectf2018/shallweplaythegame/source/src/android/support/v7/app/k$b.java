// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.support.v4.h.p;
import android.support.v4.h.r;
import android.support.v4.h.t;
import android.support.v7.view.b;
import android.support.v7.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.PopupWindow;

// Referenced classes of package android.support.v7.app:
//            k, d

class b
    implements android.support.v7.view.
{

    final k a;
    private android.support.v7.view.b b;

    public void a(b b1)
    {
        b.a(b1);
        if (a.o != null)
        {
            a.b.getDecorView().removeCallbacks(a.p);
        }
        if (a.n != null)
        {
            a.t();
            a.q = p.d(a.n).a(0.0F);
            a.q.a(new t() {

                final k.b a;

                public void b(View view)
                {
                    a.a.n.setVisibility(8);
                    if (a.a.o == null) goto _L2; else goto _L1
_L1:
                    a.a.o.dismiss();
_L4:
                    a.a.n.removeAllViews();
                    a.a.q.a(null);
                    a.a.q = null;
                    return;
_L2:
                    if (a.a.n.getParent() instanceof View)
                    {
                        p.g((View)a.a.n.getParent());
                    }
                    if (true) goto _L4; else goto _L3
_L3:
                }

            
            {
                a = k.b.this;
                super();
            }
            });
        }
        if (a.e != null)
        {
            a.e.b(a.m);
        }
        a.m = null;
    }

    public boolean a(b b1, Menu menu)
    {
        return b.a(b1, menu);
    }

    public boolean a(b b1, MenuItem menuitem)
    {
        return b.a(b1, menuitem);
    }

    public boolean b(b b1, Menu menu)
    {
        return b.b(b1, menu);
    }

    public (k k1, android.support.v7.view.> >)
    {
        a = k1;
        super();
        b = >;
    }
}
