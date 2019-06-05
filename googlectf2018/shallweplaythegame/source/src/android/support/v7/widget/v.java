// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;

// Referenced classes of package android.support.v7.widget:
//            w

public class v extends SeekBar
{

    private final w a;

    public v(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.a.a.seekBarStyle);
    }

    public v(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new w(this);
        a.a(attributeset, i);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        a.c();
    }

    public void jumpDrawablesToCurrentState()
    {
        super.jumpDrawablesToCurrentState();
        a.b();
    }

    protected void onDraw(Canvas canvas)
    {
        this;
        JVM INSTR monitorenter ;
        super.onDraw(canvas);
        a.a(canvas);
        this;
        JVM INSTR monitorexit ;
        return;
        canvas;
        throw canvas;
    }
}
