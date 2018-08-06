// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.support.v4.h.o;
import android.support.v4.widget.l;
import android.util.AttributeSet;
import android.widget.ImageButton;

// Referenced classes of package android.support.v7.widget:
//            at, g, o

public class n extends ImageButton
    implements o, l
{

    private final g a;
    private final android.support.v7.widget.o b;

    public n(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.imageButtonStyle);
    }

    public n(Context context, AttributeSet attributeset, int i)
    {
        super(at.a(context), attributeset, i);
        a = new g(this);
        a.a(attributeset, i);
        b = new android.support.v7.widget.o(this);
        b.a(attributeset, i);
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
            b.d();
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

    public ColorStateList getSupportImageTintList()
    {
        if (b != null)
        {
            return b.b();
        } else
        {
            return null;
        }
    }

    public android.graphics.PorterDuff.Mode getSupportImageTintMode()
    {
        if (b != null)
        {
            return b.c();
        } else
        {
            return null;
        }
    }

    public boolean hasOverlappingRendering()
    {
        return b.a() && super.hasOverlappingRendering();
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

    public void setImageBitmap(Bitmap bitmap)
    {
        super.setImageBitmap(bitmap);
        if (b != null)
        {
            b.d();
        }
    }

    public void setImageDrawable(Drawable drawable)
    {
        super.setImageDrawable(drawable);
        if (b != null)
        {
            b.d();
        }
    }

    public void setImageIcon(Icon icon)
    {
        super.setImageIcon(icon);
        if (b != null)
        {
            b.d();
        }
    }

    public void setImageResource(int i)
    {
        b.a(i);
    }

    public void setImageURI(Uri uri)
    {
        super.setImageURI(uri);
        if (b != null)
        {
            b.d();
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

    public void setSupportImageTintList(ColorStateList colorstatelist)
    {
        if (b != null)
        {
            b.a(colorstatelist);
        }
    }

    public void setSupportImageTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (b != null)
        {
            b.a(mode);
        }
    }
}
