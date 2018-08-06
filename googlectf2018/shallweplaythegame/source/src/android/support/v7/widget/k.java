// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.c.a.a;
import android.support.v4.widget.b;
import android.util.AttributeSet;
import android.widget.CompoundButton;

// Referenced classes of package android.support.v7.widget:
//            ae

class k
{

    private final CompoundButton a;
    private ColorStateList b;
    private android.graphics.PorterDuff.Mode c;
    private boolean d;
    private boolean e;
    private boolean f;

    k(CompoundButton compoundbutton)
    {
        b = null;
        c = null;
        d = false;
        e = false;
        a = compoundbutton;
    }

    int a(int i)
    {
        int j = i;
        if (android.os.Build.VERSION.SDK_INT < 17)
        {
            Drawable drawable = android.support.v4.widget.b.a(a);
            j = i;
            if (drawable != null)
            {
                j = i + drawable.getIntrinsicWidth();
            }
        }
        return j;
    }

    ColorStateList a()
    {
        return b;
    }

    void a(ColorStateList colorstatelist)
    {
        b = colorstatelist;
        d = true;
        d();
    }

    void a(android.graphics.PorterDuff.Mode mode)
    {
        c = mode;
        e = true;
        d();
    }

    void a(AttributeSet attributeset, int i)
    {
        attributeset = a.getContext().obtainStyledAttributes(attributeset, android.support.v7.a.a.j.CompoundButton, i, 0);
        if (!attributeset.hasValue(android.support.v7.a.a.j.CompoundButton_android_button))
        {
            break MISSING_BLOCK_LABEL_58;
        }
        i = attributeset.getResourceId(android.support.v7.a.a.j.CompoundButton_android_button, 0);
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        a.setButtonDrawable(android.support.v7.b.a.b.b(a.getContext(), i));
        if (attributeset.hasValue(android.support.v7.a.a.j.CompoundButton_buttonTint))
        {
            android.support.v4.widget.b.a(a, attributeset.getColorStateList(android.support.v7.a.a.j.CompoundButton_buttonTint));
        }
        if (attributeset.hasValue(android.support.v7.a.a.j.CompoundButton_buttonTintMode))
        {
            android.support.v4.widget.b.a(a, android.support.v7.widget.ae.a(attributeset.getInt(android.support.v7.a.a.j.CompoundButton_buttonTintMode, -1), null));
        }
        attributeset.recycle();
        return;
        Exception exception;
        exception;
        attributeset.recycle();
        throw exception;
    }

    android.graphics.PorterDuff.Mode b()
    {
        return c;
    }

    void c()
    {
        if (f)
        {
            f = false;
            return;
        } else
        {
            f = true;
            d();
            return;
        }
    }

    void d()
    {
        Drawable drawable = android.support.v4.widget.b.a(a);
        if (drawable != null && (d || e))
        {
            drawable = android.support.v4.c.a.a.f(drawable).mutate();
            if (d)
            {
                android.support.v4.c.a.a.a(drawable, b);
            }
            if (e)
            {
                android.support.v4.c.a.a.a(drawable, c);
            }
            if (drawable.isStateful())
            {
                drawable.setState(a.getDrawableState());
            }
            a.setButtonDrawable(drawable);
        }
    }
}
