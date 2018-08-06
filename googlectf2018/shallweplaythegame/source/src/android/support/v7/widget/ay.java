// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            az

public class ay
{
    private static class a
        implements c
    {

        public void a(View view, CharSequence charsequence)
        {
            view.setTooltipText(charsequence);
        }

        private a()
        {
        }

    }

    private static class b
        implements c
    {

        public void a(View view, CharSequence charsequence)
        {
            az.a(view, charsequence);
        }

        private b()
        {
        }

    }

    private static interface c
    {

        public abstract void a(View view, CharSequence charsequence);
    }


    private static final c a;

    public static void a(View view, CharSequence charsequence)
    {
        a.a(view, charsequence);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            a = new a();
        } else
        {
            a = new b();
        }
    }
}
