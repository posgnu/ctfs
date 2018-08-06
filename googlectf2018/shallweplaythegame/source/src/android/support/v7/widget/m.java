// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.h.o;
import android.util.AttributeSet;
import android.widget.EditText;

// Referenced classes of package android.support.v7.widget:
//            at, g, y

public class m extends EditText
    implements o
{

    private final g a;
    private final y b;

    public m(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.editTextStyle);
    }

    public m(Context context, AttributeSet attributeset, int i)
    {
        super(at.a(context), attributeset, i);
        a = new g(this);
        a.a(attributeset, i);
        b = y.a(this);
        b.a(attributeset, i);
        b.a();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (a != null)
        {
            a.c();
        }
        if (b != null)
        {
            b.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList()
    {
        if (a != null)
        {
            return a.a();
        } else
        {
            return null;
        }
    }

    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode()
    {
        if (a != null)
        {
            return a.b();
        } else
        {
            return null;
        }
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        super.setBackgroundDrawable(drawable);
        if (a != null)
        {
            a.a(drawable);
        }
    }

    public void setBackgroundResource(int i)
    {
        super.setBackgroundResource(i);
        if (a != null)
        {
            a.a(i);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorstatelist)
    {
        if (a != null)
        {
            a.a(colorstatelist);
        }
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (a != null)
        {
            a.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i)
    {
        super.setTextAppearance(context, i);
        if (b != null)
        {
            b.a(context, i);
        }
    }
}
