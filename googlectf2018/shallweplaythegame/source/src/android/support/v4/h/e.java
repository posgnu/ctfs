// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;

public final class e
{
    static class a extends b
    {

        public void a(LayoutInflater layoutinflater, android.view.LayoutInflater.Factory2 factory2)
        {
            layoutinflater.setFactory2(factory2);
        }

        a()
        {
        }
    }

    static class b
    {

        public void a(LayoutInflater layoutinflater, android.view.LayoutInflater.Factory2 factory2)
        {
            layoutinflater.setFactory2(factory2);
            android.view.LayoutInflater.Factory factory = layoutinflater.getFactory();
            if (factory instanceof android.view.LayoutInflater.Factory2)
            {
                e.a(layoutinflater, (android.view.LayoutInflater.Factory2)factory);
                return;
            } else
            {
                e.a(layoutinflater, factory2);
                return;
            }
        }

        b()
        {
        }
    }


    static final b a;
    private static Field b;
    private static boolean c;

    static void a(LayoutInflater layoutinflater, android.view.LayoutInflater.Factory2 factory2)
    {
        if (!c)
        {
            try
            {
                b = android/view/LayoutInflater.getDeclaredField("mFactory2");
                b.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("LayoutInflaterCompatHC", (new StringBuilder()).append("forceSetFactory2 Could not find field 'mFactory2' on class ").append(android/view/LayoutInflater.getName()).append("; inflation may have unexpected results.").toString(), nosuchfieldexception);
            }
            c = true;
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        b.set(layoutinflater, factory2);
        return;
        factory2;
        Log.e("LayoutInflaterCompatHC", (new StringBuilder()).append("forceSetFactory2 could not set the Factory2 on LayoutInflater ").append(layoutinflater).append("; inflation may have unexpected results.").toString(), factory2);
        return;
    }

    public static void b(LayoutInflater layoutinflater, android.view.LayoutInflater.Factory2 factory2)
    {
        a.a(layoutinflater, factory2);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new a();
        } else
        {
            a = new b();
        }
    }
}
