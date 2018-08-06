// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            bb, av

public class at extends ContextWrapper
{

    private static final Object a = new Object();
    private static ArrayList b;
    private final Resources c;
    private final android.content.res.Resources.Theme d;

    private at(Context context)
    {
        super(context);
        if (bb.a())
        {
            c = new bb(this, context.getResources());
            d = c.newTheme();
            d.setTo(context.getTheme());
            return;
        } else
        {
            c = new av(this, context.getResources());
            d = null;
            return;
        }
    }

    public static Context a(Context context)
    {
        if (!b(context)) goto _L2; else goto _L1
_L1:
        Object obj1 = a;
        obj1;
        JVM INSTR monitorenter ;
        if (b != null) goto _L4; else goto _L3
_L3:
        b = new ArrayList();
_L11:
        context = new at(context);
        b.add(new WeakReference(context));
        return context;
_L4:
        int i = b.size() - 1;
_L14:
        if (i < 0) goto _L6; else goto _L5
_L5:
        Object obj = (WeakReference)b.get(i);
        if (obj == null) goto _L8; else goto _L7
_L7:
        if (((WeakReference) (obj)).get() != null) goto _L9; else goto _L8
_L8:
        b.remove(i);
          goto _L9
_L6:
        i = b.size() - 1;
_L16:
        if (i < 0) goto _L11; else goto _L10
_L10:
        obj = (WeakReference)b.get(i);
        if (obj == null) goto _L13; else goto _L12
_L12:
        obj = (at)((WeakReference) (obj)).get();
_L15:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        if (((at) (obj)).getBaseContext() != context)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        obj1;
        JVM INSTR monitorexit ;
        return ((Context) (obj));
        context;
        obj1;
        JVM INSTR monitorexit ;
        throw context;
_L2:
        return context;
_L9:
        i--;
          goto _L14
_L13:
        obj = null;
          goto _L15
        i--;
          goto _L16
    }

    private static boolean b(Context context)
    {
        while ((context instanceof at) || (context.getResources() instanceof av) || (context.getResources() instanceof bb) || android.os.Build.VERSION.SDK_INT >= 21 && !bb.a()) 
        {
            return false;
        }
        return true;
    }

    public AssetManager getAssets()
    {
        return c.getAssets();
    }

    public Resources getResources()
    {
        return c;
    }

    public android.content.res.Resources.Theme getTheme()
    {
        if (d == null)
        {
            return super.getTheme();
        } else
        {
            return d;
        }
    }

    public void setTheme(int i)
    {
        if (d == null)
        {
            super.setTheme(i);
            return;
        } else
        {
            d.applyStyle(i, true);
            return;
        }
    }

}
