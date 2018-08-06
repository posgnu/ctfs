// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.os.Handler;
import android.os.SystemClock;
import android.support.v7.widget.al;
import android.view.MenuItem;
import java.util.List;

// Referenced classes of package android.support.v7.view.menu:
//            e, h

class a
    implements al
{

    final e a;

    public void a(h h, MenuItem menuitem)
    {
        a.a.removeCallbacksAndMessages(h);
    }

    public void b(h h, MenuItem menuitem)
    {
        int i;
        int j;
        a.a.removeCallbacksAndMessages(null);
        i = 0;
        j = a.b.size();
_L4:
label0:
        {
            if (i >= j)
            {
                break MISSING_BLOCK_LABEL_158;
            }
            if (h == ((a)a.b.get(i)).b)
            {
                break label0;
            } else
            {
                i++;
                continue; /* Loop/switch isn't completed */
            }
        }
_L2:
        if (i == -1)
        {
            return;
        }
        i++;
        sAndMessages sandmessages;
        long l;
        if (i < a.b.size())
        {
            sandmessages = (a)a.b.get(i);
        } else
        {
            sandmessages = null;
        }
        menuitem = new Runnable(sandmessages, menuitem, h) {

            final e.a a;
            final MenuItem b;
            final h c;
            final e._cls3 d;

            public void run()
            {
                if (a != null)
                {
                    d.a.d = true;
                    a.b.a(false);
                    d.a.d = false;
                }
                if (b.isEnabled() && b.hasSubMenu())
                {
                    c.a(b, 4);
                }
            }

            
            {
                d = e._cls3.this;
                a = a1;
                b = menuitem;
                c = h1;
                super();
            }
        };
        l = SystemClock.uptimeMillis();
        a.a.postAtTime(menuitem, h, l + 200L);
        return;
        i = -1;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    _cls1.c(e e1)
    {
        a = e1;
        super();
    }
}
