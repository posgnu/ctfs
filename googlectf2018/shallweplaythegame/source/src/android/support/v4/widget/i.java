// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.support.v4.h.p;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class i
{
    static class a extends d
    {

        public void a(PopupWindow popupwindow, View view, int j, int k, int l)
        {
            popupwindow.showAsDropDown(view, j, k, l);
        }

        a()
        {
        }
    }

    static class b extends a
    {

        private static Field a;

        public void a(PopupWindow popupwindow, boolean flag)
        {
            if (a == null)
            {
                break MISSING_BLOCK_LABEL_17;
            }
            a.set(popupwindow, Boolean.valueOf(flag));
            return;
            popupwindow;
            Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", popupwindow);
            return;
        }

        static 
        {
            try
            {
                a = android/widget/PopupWindow.getDeclaredField("mOverlapAnchor");
                a.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", nosuchfieldexception);
            }
        }

        b()
        {
        }
    }

    static class c extends b
    {

        public void a(PopupWindow popupwindow, int j)
        {
            popupwindow.setWindowLayoutType(j);
        }

        public void a(PopupWindow popupwindow, boolean flag)
        {
            popupwindow.setOverlapAnchor(flag);
        }

        c()
        {
        }
    }

    static class d
    {

        private static Method a;
        private static boolean b;

        public void a(PopupWindow popupwindow, int j)
        {
            if (!b)
            {
                try
                {
                    a = android/widget/PopupWindow.getDeclaredMethod("setWindowLayoutType", new Class[] {
                        Integer.TYPE
                    });
                    a.setAccessible(true);
                }
                catch (Exception exception) { }
                b = true;
            }
            if (a == null)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            a.invoke(popupwindow, new Object[] {
                Integer.valueOf(j)
            });
            return;
            popupwindow;
        }

        public void a(PopupWindow popupwindow, View view, int j, int k, int l)
        {
            int i1 = j;
            if ((android.support.v4.h.d.a(l, p.b(view)) & 7) == 5)
            {
                i1 = j - (popupwindow.getWidth() - view.getWidth());
            }
            popupwindow.showAsDropDown(view, i1, k);
        }

        public void a(PopupWindow popupwindow, boolean flag)
        {
        }

        d()
        {
        }
    }


    static final d a;

    public static void a(PopupWindow popupwindow, int j)
    {
        a.a(popupwindow, j);
    }

    public static void a(PopupWindow popupwindow, View view, int j, int k, int l)
    {
        a.a(popupwindow, view, j, k, l);
    }

    public static void a(PopupWindow popupwindow, boolean flag)
    {
        a.a(popupwindow, flag);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            a = new c();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new a();
        } else
        {
            a = new d();
        }
    }
}
