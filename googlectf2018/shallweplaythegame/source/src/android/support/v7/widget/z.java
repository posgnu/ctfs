// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package android.support.v7.widget:
//            y, l, au

class z extends y
{

    private au b;
    private au c;

    z(TextView textview)
    {
        super(textview);
    }

    void a()
    {
        super.a();
        if (b != null || c != null)
        {
            android.graphics.drawable.Drawable adrawable[] = a.getCompoundDrawablesRelative();
            a(adrawable[0], b);
            a(adrawable[2], c);
        }
    }

    void a(AttributeSet attributeset, int i)
    {
        super.a(attributeset, i);
        Context context = a.getContext();
        l l1 = l.a();
        attributeset = context.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.AppCompatTextHelper, i, 0);
        if (attributeset.hasValue(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableStart))
        {
            b = a(context, l1, attributeset.getResourceId(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (attributeset.hasValue(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableEnd))
        {
            c = a(context, l1, attributeset.getResourceId(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableEnd, 0));
        }
        attributeset.recycle();
    }
}
