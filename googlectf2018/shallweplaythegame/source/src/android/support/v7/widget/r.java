// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v4.widget.i;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

// Referenced classes of package android.support.v7.widget:
//            aw

class r extends PopupWindow
{

    private static final boolean a;
    private boolean b;

    public r(Context context, AttributeSet attributeset, int j, int k)
    {
        super(context, attributeset, j, k);
        a(context, attributeset, j, k);
    }

    private void a(Context context, AttributeSet attributeset, int j, int k)
    {
        context = aw.a(context, attributeset, android.support.v7.a.a.j.PopupWindow, j, k);
        if (context.g(android.support.v7.a.a.j.PopupWindow_overlapAnchor))
        {
            a(context.a(android.support.v7.a.a.j.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(context.a(android.support.v7.a.a.j.PopupWindow_android_popupBackground));
        j = android.os.Build.VERSION.SDK_INT;
        if (k != 0 && j < 11 && context.g(android.support.v7.a.a.j.PopupWindow_android_popupAnimationStyle))
        {
            setAnimationStyle(context.g(android.support.v7.a.a.j.PopupWindow_android_popupAnimationStyle, -1));
        }
        context.a();
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            a(((PopupWindow) (this)));
        }
    }

    private static void a(PopupWindow popupwindow)
    {
        try
        {
            Field field = android/widget/PopupWindow.getDeclaredField("mAnchor");
            field.setAccessible(true);
            Field field1 = android/widget/PopupWindow.getDeclaredField("mOnScrollChangedListener");
            field1.setAccessible(true);
            field1.set(popupwindow, new android.view.ViewTreeObserver.OnScrollChangedListener(field, popupwindow, (android.view.ViewTreeObserver.OnScrollChangedListener)field1.get(popupwindow)) {

                final Field a;
                final PopupWindow b;
                final android.view.ViewTreeObserver.OnScrollChangedListener c;

                public void onScrollChanged()
                {
                    WeakReference weakreference = (WeakReference)a.get(b);
                    if (weakreference == null)
                    {
                        break MISSING_BLOCK_LABEL_38;
                    }
                    if (weakreference.get() == null)
                    {
                        return;
                    }
                    try
                    {
                        c.onScrollChanged();
                        return;
                    }
                    catch (IllegalAccessException illegalaccessexception) { }
                }

            
            {
                a = field;
                b = popupwindow;
                c = onscrollchangedlistener;
                super();
            }
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (PopupWindow popupwindow)
        {
            Log.d("AppCompatPopupWindow", "Exception while installing workaround OnScrollChangedListener", popupwindow);
        }
    }

    public void a(boolean flag)
    {
        if (a)
        {
            b = flag;
            return;
        } else
        {
            i.a(this, flag);
            return;
        }
    }

    public void showAsDropDown(View view, int j, int k)
    {
        int l = k;
        if (a)
        {
            l = k;
            if (b)
            {
                l = k - view.getHeight();
            }
        }
        super.showAsDropDown(view, j, l);
    }

    public void showAsDropDown(View view, int j, int k, int l)
    {
        int i1 = k;
        if (a)
        {
            i1 = k;
            if (b)
            {
                i1 = k - view.getHeight();
            }
        }
        super.showAsDropDown(view, j, i1, l);
    }

    public void update(View view, int j, int k, int l, int i1)
    {
        if (a && b)
        {
            k -= view.getHeight();
        }
        super.update(view, j, k, l, i1);
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
