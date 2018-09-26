// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.widget.k;
import android.support.v7.b.a.b;
import android.util.AttributeSet;
import android.widget.RadioButton;

// Referenced classes of package android.support.v7.widget:
//            at, k

public class t extends RadioButton
    implements k
{

    private final android.support.v7.widget.k a;

    public t(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.radioButtonStyle);
    }

    public t(Context context, AttributeSet attributeset, int i)
    {
        super(at.a(context), attributeset, i);
        a = new android.support.v7.widget.k(this);
        a.a(attributeset, i);
    }

    public int getCompoundPaddingLeft()
    {
        int j = super.getCompoundPaddingLeft();
        int i = j;
        if (a != null)
        {
            i = a.a(j);
        }
        return i;
    }

    public ColorStateList getSupportButtonTintList()
    {
        if (a != null)
        {
            return a.a();
        } else
        {
            return null;
        }
    }

    public android.graphics.PorterDuff.Mode getSupportButtonTintMode()
    {
        if (a != null)
        {
            return a.b();
        } else
        {
            return null;
        }
    }

    public void setButtonDrawable(int i)
    {
        setButtonDrawable(b.b(getContext(), i));
    }

    public void setButtonDrawable(Drawable drawable)
    {
        super.setButtonDrawable(drawable);
        if (a != null)
        {
            a.c();
        }
    }

    public void setSupportButtonTintList(ColorStateList colorstatelist)
    {
        if (a != null)
        {
            a.a(colorstatelist);
        }
    }

    public void setSupportButtonTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (a != null)
        {
            a.a(mode);
        }
    }
}
