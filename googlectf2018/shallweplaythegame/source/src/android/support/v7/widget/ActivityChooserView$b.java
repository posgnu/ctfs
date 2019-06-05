// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.Intent;
import android.support.v4.h.c;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package android.support.v7.widget:
//            ActivityChooserView, e

private class 
    implements android.view.hooserView.b, android.view.er, android.widget.kListener, android.widget.istener
{

    final ActivityChooserView a;

    private void a()
    {
        if (a.f != null)
        {
            a.f.onDismiss();
        }
    }

    public void onClick(View view)
    {
        if (view == a.c)
        {
            a.b();
            view = a.a.b();
            int i = a.a.d().a(view);
            view = a.a.d().b(i);
            if (view != null)
            {
                view.addFlags(0x80000);
                a.getContext().startActivity(view);
            }
            return;
        }
        if (view == a.b)
        {
            a.g = false;
            a.a(a.h);
            return;
        } else
        {
            throw new IllegalArgumentException();
        }
    }

    public void onDismiss()
    {
        a();
        if (a.d != null)
        {
            a.d.a(false);
        }
    }

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ((a)adapterview.getAdapter()).getItemViewType(i);
        JVM INSTR tableswitch 0 1: default 32
    //                   0 50
    //                   1 40;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException();
_L3:
        a.a(0x7fffffff);
_L5:
        return;
_L2:
        a.b();
        if (!a.g)
        {
            break; /* Loop/switch isn't completed */
        }
        if (i > 0)
        {
            a.a.d().c(i);
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (!a.a.e())
        {
            i++;
        }
        adapterview = a.a.d().b(i);
        if (adapterview != null)
        {
            adapterview.addFlags(0x80000);
            a.getContext().startActivity(adapterview);
            return;
        }
        if (true) goto _L5; else goto _L6
_L6:
    }

    public boolean onLongClick(View view)
    {
        if (view == a.c)
        {
            if (a.a.getCount() > 0)
            {
                a.g = true;
                a.a(a.h);
            }
            return true;
        } else
        {
            throw new IllegalArgumentException();
        }
    }
}
