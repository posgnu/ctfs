// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.d.a.b;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

// Referenced classes of package android.support.v7.view.menu:
//            k

class l extends k
{
    class a extends k.a
        implements android.view.ActionProvider.VisibilityListener
    {

        android.support.v4.h.c.b c;
        final l d;

        public View a(MenuItem menuitem)
        {
            return a.onCreateActionView(menuitem);
        }

        public void a(android.support.v4.h.c.b b1)
        {
            c = b1;
            ActionProvider actionprovider = a;
            if (b1 != null)
            {
                b1 = this;
            } else
            {
                b1 = null;
            }
            actionprovider.setVisibilityListener(b1);
        }

        public boolean b()
        {
            return a.overridesItemVisibility();
        }

        public boolean c()
        {
            return a.isVisible();
        }

        public void onActionProviderVisibilityChanged(boolean flag)
        {
            if (c != null)
            {
                c.a(flag);
            }
        }

        public a(Context context, ActionProvider actionprovider)
        {
            d = l.this;
            super(l.this, context, actionprovider);
        }
    }


    l(Context context, b b)
    {
        super(context, b);
    }

    k.a a(ActionProvider actionprovider)
    {
        return new a(a, actionprovider);
    }
}
