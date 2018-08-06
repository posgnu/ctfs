// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.view.View;

// Referenced classes of package android.support.v4.h:
//            s, r

static class a
    implements s
{

    r a;
    boolean b;

    public void a(View view)
    {
        b = false;
        if (a.c > -1)
        {
            view.setLayerType(2, null);
        }
        if (a.a != null)
        {
            Runnable runnable = a.a;
            a.a = null;
            runnable.run();
        }
        Object obj = view.getTag(0x7e000000);
        if (obj instanceof s)
        {
            obj = (s)obj;
        } else
        {
            obj = null;
        }
        if (obj != null)
        {
            ((s) (obj)).a(view);
        }
    }

    public void b(View view)
    {
        if (a.c > -1)
        {
            view.setLayerType(a.c, null);
            a.c = -1;
        }
        if (android.os.d.VERSION.SDK_INT >= 16 || !b)
        {
            if (a.b != null)
            {
                Runnable runnable = a.b;
                a.b = null;
                runnable.run();
            }
            Object obj = view.getTag(0x7e000000);
            if (obj instanceof s)
            {
                obj = (s)obj;
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                ((s) (obj)).b(view);
            }
            b = true;
        }
    }

    public void c(View view)
    {
        Object obj = view.getTag(0x7e000000);
        if (obj instanceof s)
        {
            obj = (s)obj;
        } else
        {
            obj = null;
        }
        if (obj != null)
        {
            ((s) (obj)).c(view);
        }
    }

    (r r1)
    {
        a = r1;
    }
}
