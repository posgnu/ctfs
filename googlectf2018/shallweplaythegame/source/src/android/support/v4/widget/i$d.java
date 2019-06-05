// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.support.v4.h.d;
import android.support.v4.h.p;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v4.widget:
//            i

static class 
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

    ()
    {
    }
}
