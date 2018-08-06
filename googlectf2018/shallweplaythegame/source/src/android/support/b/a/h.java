// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.v4.c.a.a;
import android.support.v4.c.a.f;

abstract class h extends Drawable
    implements f
{

    Drawable b;

    h()
    {
    }

    public void applyTheme(android.content.res.Resources.Theme theme)
    {
        if (b != null)
        {
            a.a(b, theme);
        }
    }

    public void clearColorFilter()
    {
        if (b != null)
        {
            b.clearColorFilter();
            return;
        } else
        {
            super.clearColorFilter();
            return;
        }
    }

    public ColorFilter getColorFilter()
    {
        if (b != null)
        {
            return a.e(b);
        } else
        {
            return null;
        }
    }

    public Drawable getCurrent()
    {
        if (b != null)
        {
            return b.getCurrent();
        } else
        {
            return super.getCurrent();
        }
    }

    public int getMinimumHeight()
    {
        if (b != null)
        {
            return b.getMinimumHeight();
        } else
        {
            return super.getMinimumHeight();
        }
    }

    public int getMinimumWidth()
    {
        if (b != null)
        {
            return b.getMinimumWidth();
        } else
        {
            return super.getMinimumWidth();
        }
    }

    public boolean getPadding(Rect rect)
    {
        if (b != null)
        {
            return b.getPadding(rect);
        } else
        {
            return super.getPadding(rect);
        }
    }

    public int[] getState()
    {
        if (b != null)
        {
            return b.getState();
        } else
        {
            return super.getState();
        }
    }

    public Region getTransparentRegion()
    {
        if (b != null)
        {
            return b.getTransparentRegion();
        } else
        {
            return super.getTransparentRegion();
        }
    }

    public void jumpToCurrentState()
    {
        if (b != null)
        {
            a.a(b);
        }
    }

    protected void onBoundsChange(Rect rect)
    {
        if (b != null)
        {
            b.setBounds(rect);
            return;
        } else
        {
            super.onBoundsChange(rect);
            return;
        }
    }

    protected boolean onLevelChange(int i)
    {
        if (b != null)
        {
            return b.setLevel(i);
        } else
        {
            return super.onLevelChange(i);
        }
    }

    public void setChangingConfigurations(int i)
    {
        if (b != null)
        {
            b.setChangingConfigurations(i);
            return;
        } else
        {
            super.setChangingConfigurations(i);
            return;
        }
    }

    public void setColorFilter(int i, android.graphics.PorterDuff.Mode mode)
    {
        if (b != null)
        {
            b.setColorFilter(i, mode);
            return;
        } else
        {
            super.setColorFilter(i, mode);
            return;
        }
    }

    public void setFilterBitmap(boolean flag)
    {
        if (b != null)
        {
            b.setFilterBitmap(flag);
        }
    }

    public void setHotspot(float f1, float f2)
    {
        if (b != null)
        {
            a.a(b, f1, f2);
        }
    }

    public void setHotspotBounds(int i, int j, int k, int l)
    {
        if (b != null)
        {
            a.a(b, i, j, k, l);
        }
    }

    public boolean setState(int ai[])
    {
        if (b != null)
        {
            return b.setState(ai);
        } else
        {
            return super.setState(ai);
        }
    }
}
