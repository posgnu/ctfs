// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.view.LayoutInflater;

// Referenced classes of package android.support.v4.h:
//            e

static class er.Factory2
{

    public void a(LayoutInflater layoutinflater, android.view.utInflater.Factory2 factory2)
    {
        layoutinflater.setFactory2(factory2);
        android.view.utInflater.Factory factory = layoutinflater.getFactory();
        if (factory instanceof android.view.utInflater.Factory2)
        {
            e.a(layoutinflater, (android.view.utInflater.Factory2)factory);
            return;
        } else
        {
            e.a(layoutinflater, factory2);
            return;
        }
    }

    er.Factory2()
    {
    }
}
