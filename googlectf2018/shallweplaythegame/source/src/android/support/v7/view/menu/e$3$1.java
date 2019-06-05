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

class c
    implements Runnable
{

    final b a;
    final MenuItem b;
    final h c;
    final b d;

    public void run()
    {
        if (a != null)
        {
            d.d.d = true;
            a.a.a(false);
            d.d.d = false;
        }
        if (b.isEnabled() && b.hasSubMenu())
        {
            c.a(b, 4);
        }
    }

    ( ,  1, MenuItem menuitem, h h1)
    {
        d = ;
        a = 1;
        b = menuitem;
        c = h1;
        super();
    }

    // Unreferenced inner class android/support/v7/view/menu/e$3

/* anonymous class */
    class e._cls3
        implements al
    {

        final e a;

        public void a(h h1, MenuItem menuitem)
        {
            a.a.removeCallbacksAndMessages(h1);
        }

        public void b(h h1, MenuItem menuitem)
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
                if (h1 == ((e.a)a.b.get(i)).b)
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
            e.a a1;
            long l;
            if (i < a.b.size())
            {
                a1 = (e.a)a.b.get(i);
            } else
            {
                a1 = null;
            }
            menuitem = new e._cls3._cls1(this, a1, menuitem, h1);
            l = SystemClock.uptimeMillis();
            a.a.postAtTime(menuitem, h1, l + 200L);
            return;
            i = -1;
            if (true) goto _L2; else goto _L1
_L1:
            if (true) goto _L4; else goto _L3
_L3:
        }

            
            {
                a = e1;
                super();
            }
    }

}
