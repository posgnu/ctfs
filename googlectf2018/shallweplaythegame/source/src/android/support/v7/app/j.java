// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.UiModeManager;
import android.content.Context;
import android.view.ActionMode;
import android.view.Window;

// Referenced classes of package android.support.v7.app:
//            i, d

class j extends i
{
    class a extends i.a
    {

        final j d;

        public ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback)
        {
            return null;
        }

        public ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback, int k)
        {
            if (!d.o()) goto _L2; else goto _L1
_L1:
            k;
            JVM INSTR tableswitch 0 0: default 28
        //                       0 35;
               goto _L2 _L3
_L2:
            return super.onWindowStartingActionMode(callback, k);
_L3:
            return a(callback);
        }

        a(android.view.Window.Callback callback)
        {
            d = j.this;
            super(j.this, callback);
        }
    }


    private final UiModeManager t;

    j(Context context, Window window, d d1)
    {
        super(context, window, d1);
        t = (UiModeManager)context.getSystemService("uimode");
    }

    android.view.Window.Callback a(android.view.Window.Callback callback)
    {
        return new a(callback);
    }

    int d(int k)
    {
        if (k == 0 && t.getNightMode() == 0)
        {
            return -1;
        } else
        {
            return super.d(k);
        }
    }
}
