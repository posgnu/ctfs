// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.b;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;

// Referenced classes of package android.support.v7.widget:
//            l

public class aw
{

    private final Context a;
    private final TypedArray b;
    private TypedValue c;

    private aw(Context context, TypedArray typedarray)
    {
        a = context;
        b = typedarray;
    }

    public static aw a(Context context, int i, int ai[])
    {
        return new aw(context, context.obtainStyledAttributes(i, ai));
    }

    public static aw a(Context context, AttributeSet attributeset, int ai[])
    {
        return new aw(context, context.obtainStyledAttributes(attributeset, ai));
    }

    public static aw a(Context context, AttributeSet attributeset, int ai[], int i, int j)
    {
        return new aw(context, context.obtainStyledAttributes(attributeset, ai, i, j));
    }

    public float a(int i, float f1)
    {
        return b.getFloat(i, f1);
    }

    public int a(int i, int j)
    {
        return b.getInt(i, j);
    }

    public Typeface a(int i, int j, TextView textview)
    {
        i = b.getResourceId(i, 0);
        if (i == 0)
        {
            return null;
        }
        if (c == null)
        {
            c = new TypedValue();
        }
        return android.support.v4.b.a.b.a(a, i, c, j, textview);
    }

    public Drawable a(int i)
    {
        if (b.hasValue(i))
        {
            int j = b.getResourceId(i, 0);
            if (j != 0)
            {
                return android.support.v7.b.a.b.b(a, j);
            }
        }
        return b.getDrawable(i);
    }

    public void a()
    {
        b.recycle();
    }

    public boolean a(int i, boolean flag)
    {
        return b.getBoolean(i, flag);
    }

    public int b(int i, int j)
    {
        return b.getColor(i, j);
    }

    public Drawable b(int i)
    {
        if (b.hasValue(i))
        {
            i = b.getResourceId(i, 0);
            if (i != 0)
            {
                return l.a().a(a, i, true);
            }
        }
        return null;
    }

    public int c(int i, int j)
    {
        return b.getInteger(i, j);
    }

    public CharSequence c(int i)
    {
        return b.getText(i);
    }

    public int d(int i, int j)
    {
        return b.getDimensionPixelOffset(i, j);
    }

    public String d(int i)
    {
        return b.getString(i);
    }

    public int e(int i, int j)
    {
        return b.getDimensionPixelSize(i, j);
    }

    public ColorStateList e(int i)
    {
        if (b.hasValue(i))
        {
            int j = b.getResourceId(i, 0);
            if (j != 0)
            {
                ColorStateList colorstatelist = android.support.v7.b.a.b.a(a, j);
                if (colorstatelist != null)
                {
                    return colorstatelist;
                }
            }
        }
        return b.getColorStateList(i);
    }

    public int f(int i, int j)
    {
        return b.getLayoutDimension(i, j);
    }

    public CharSequence[] f(int i)
    {
        return b.getTextArray(i);
    }

    public int g(int i, int j)
    {
        return b.getResourceId(i, j);
    }

    public boolean g(int i)
    {
        return b.hasValue(i);
    }
}
