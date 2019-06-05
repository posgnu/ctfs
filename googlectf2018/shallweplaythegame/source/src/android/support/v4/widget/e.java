// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.widget.EdgeEffect;

public final class e
{
    static class a extends b
    {

        public void a(EdgeEffect edgeeffect, float f, float f1)
        {
            edgeeffect.onPull(f, f1);
        }

        a()
        {
        }
    }

    static class b
    {

        public void a(EdgeEffect edgeeffect, float f, float f1)
        {
            edgeeffect.onPull(f);
        }

        b()
        {
        }
    }


    private static final b a;

    public static void a(EdgeEffect edgeeffect, float f, float f1)
    {
        a.a(edgeeffect, f, f1);
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
