// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.h.o;
import android.support.v7.b.a.b;
import android.util.AttributeSet;
import android.widget.MultiAutoCompleteTextView;

// Referenced classes of package android.support.v7.widget:
//            at, aw, g, y

public class q extends MultiAutoCompleteTextView
    implements o
{

    private static final int a[] = {
        0x1010176
    };
    private final g b;
    private final y c;

    public q(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.autoCompleteTextViewStyle);
    }

    public q(Context context, AttributeSet attributeset, int i)
    {
        super(at.a(context), attributeset, i);
        context = aw.a(getContext(), attributeset, a, i, 0);
        if (context.g(0))
        {
            setDropDownBackgroundDrawable(context.a(0));
        }
        context.a();
        b = new g(this);
        b.a(attributeset, i);
        c = y.a(this);
        c.a(attributeset, i);
        c.a();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (b != null)
        {
            b.c();
        }
        if (c != null)
        {
            c.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList()
    {
        if (b != null)
        {
            return b.a();
        } else
        {
            return null;
        }
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode()
    {
        if (b != null)
        {
            return b.b();
        } else
        {
            return null;
        }
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        super.setBackgroundDrawable(drawable);
        if (b != null)
        {
            b.a(drawable);
        }
    }

    public void setBackgroundResource(int i)
    {
        super.setBackgroundResource(i);
        if (b != null)
        {
            b.a(i);
        }
    }

    public void setDropDownBackgroundResource(int i)
    {
        setDropDownBackgroundDrawable(android.support.v7.b.a.b.b(getContext(), i));
    }

    public void setSupportBackgroundTintList(ColorStateList colorstatelist)
    {
        if (b != null)
        {
            b.a(colorstatelist);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (b != null)
        {
            b.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i)
    {
        super.setTextAppearance(context, i);
        if (c != null)
        {
            c.a(context, i);
        }
    }

}
