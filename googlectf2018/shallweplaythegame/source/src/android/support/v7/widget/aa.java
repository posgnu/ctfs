// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.v4.h.o;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package android.support.v7.widget:
//            at, g, y

public class aa extends TextView
    implements o
{

    private final g a;
    private final y b;

    public aa(Context context)
    {
        this(context, null);
    }

    public aa(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x1010084);
    }

    public aa(Context context, AttributeSet attributeset, int i)
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

    public int getAutoSizeMaxTextSize()
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            return super.getAutoSizeMaxTextSize();
        }
        if (b != null)
        {
            return b.g();
        } else
        {
            return -1;
        }
    }

    public int getAutoSizeMinTextSize()
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            return super.getAutoSizeMinTextSize();
        }
        if (b != null)
        {
            return b.f();
        } else
        {
            return -1;
        }
    }

    public int getAutoSizeStepGranularity()
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            return super.getAutoSizeStepGranularity();
        }
        if (b != null)
        {
            return b.e();
        } else
        {
            return -1;
        }
    }

    public int[] getAutoSizeTextAvailableSizes()
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            return super.getAutoSizeTextAvailableSizes();
        }
        if (b != null)
        {
            return b.h();
        } else
        {
            return new int[0];
        }
    }

    public int getAutoSizeTextType()
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            return super.getAutoSizeTextType() != 1 ? 0 : 1;
        }
        if (b != null)
        {
            return b.d();
        } else
        {
            return 0;
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

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (b != null)
        {
            b.a(flag, i, j, k, l);
        }
    }

    protected void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        super.onTextChanged(charsequence, i, j, k);
        if (b != null && android.os.Build.VERSION.SDK_INT < 26 && b.c())
        {
            b.b();
        }
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int j, int k, int l)
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, j, k, l);
        } else
        if (b != null)
        {
            b.a(i, j, k, l);
            return;
        }
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int ai[], int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            super.setAutoSizeTextTypeUniformWithPresetSizes(ai, i);
        } else
        if (b != null)
        {
            b.a(ai, i);
            return;
        }
    }

    public void setAutoSizeTextTypeWithDefaults(int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            super.setAutoSizeTextTypeWithDefaults(i);
        } else
        if (b != null)
        {
            b.a(i);
            return;
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

    public void setTextSize(int i, float f)
    {
        if (android.os.Build.VERSION.SDK_INT >= 26)
        {
            super.setTextSize(i, f);
        } else
        if (b != null)
        {
            b.a(i, f);
            return;
        }
    }
}
