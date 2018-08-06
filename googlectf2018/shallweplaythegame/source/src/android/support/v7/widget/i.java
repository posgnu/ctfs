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
import android.widget.CheckBox;

// Referenced classes of package android.support.v7.widget:
//            at, k

public class i extends CheckBox
    implements k
{

    private final android.support.v7.widget.k a;

    public i(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.checkboxStyle);
    }

    public i(Context context, AttributeSet attributeset, int j)
    {
        super(at.a(context), attributeset, j);
        a = new android.support.v7.widget.k(this);
        a.a(attributeset, j);
    }

    public int getCompoundPaddingLeft()
    {
        int l = super.getCompoundPaddingLeft();
        int j = l;
        if (a != null)
        {
            j = a.a(l);
        }
        return j;
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

    public void setButtonDrawable(int j)
    {
        setButtonDrawable(b.b(getContext(), j));
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
