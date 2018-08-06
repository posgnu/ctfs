// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.widget.AutoCompleteTextView;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v7.widget:
//            SearchView

private static class c
{

    private Method a;
    private Method b;
    private Method c;

    void a(AutoCompleteTextView autocompletetextview)
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        a.invoke(autocompletetextview, new Object[0]);
        return;
        autocompletetextview;
    }

    void a(AutoCompleteTextView autocompletetextview, boolean flag)
    {
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        c.invoke(autocompletetextview, new Object[] {
            Boolean.valueOf(flag)
        });
        return;
        autocompletetextview;
    }

    void b(AutoCompleteTextView autocompletetextview)
    {
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        b.invoke(autocompletetextview, new Object[0]);
        return;
        autocompletetextview;
    }

    ()
    {
        try
        {
            a = android/widget/AutoCompleteTextView.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
            a.setAccessible(true);
        }
        catch (NoSuchMethodException nosuchmethodexception2) { }
        try
        {
            b = android/widget/AutoCompleteTextView.getDeclaredMethod("doAfterTextChanged", new Class[0]);
            b.setAccessible(true);
        }
        catch (NoSuchMethodException nosuchmethodexception1) { }
        try
        {
            c = android/widget/AutoCompleteTextView.getMethod("ensureImeVisible", new Class[] {
                Boolean.TYPE
            });
            c.setAccessible(true);
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return;
        }
    }
}
