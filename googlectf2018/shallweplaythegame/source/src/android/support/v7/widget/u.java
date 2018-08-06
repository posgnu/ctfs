// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;

// Referenced classes of package android.support.v7.widget:
//            s

public class u extends RatingBar
{

    private final s a;

    public u(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.ratingBarStyle);
    }

    public u(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new s(this);
        a.a(attributeset, i);
    }

    protected void onMeasure(int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        Bitmap bitmap;
        super.onMeasure(i, j);
        bitmap = a.a();
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        setMeasuredDimension(View.resolveSizeAndState(bitmap.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
