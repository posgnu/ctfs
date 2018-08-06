// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.support.v7.b.a.b;
import android.util.AttributeSet;
import android.widget.CheckedTextView;

// Referenced classes of package android.support.v7.widget:
//            at, y, aw

public class j extends CheckedTextView
{

    private static final int a[] = {
        0x1010108
    };
    private final y b;

    public j(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x10103c8);
    }

    public j(Context context, AttributeSet attributeset, int i)
    {
        super(at.a(context), attributeset, i);
        b = y.a(this);
        b.a(attributeset, i);
        b.a();
        context = aw.a(getContext(), attributeset, a, i, 0);
        setCheckMarkDrawable(context.a(0));
        context.a();
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (b != null)
        {
            b.a();
        }
    }

    public void setCheckMarkDrawable(int i)
    {
        setCheckMarkDrawable(android.support.v7.b.a.b.b(getContext(), i));
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
