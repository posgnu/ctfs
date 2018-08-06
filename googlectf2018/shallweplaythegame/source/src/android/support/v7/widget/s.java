// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.support.v4.c.a.b;
import android.util.AttributeSet;
import android.widget.ProgressBar;

// Referenced classes of package android.support.v7.widget:
//            aw

class s
{

    private static final int a[] = {
        0x101013b, 0x101013c
    };
    private final ProgressBar b;
    private Bitmap c;

    s(ProgressBar progressbar)
    {
        b = progressbar;
    }

    private Drawable a(Drawable drawable)
    {
        Object obj = drawable;
        if (drawable instanceof AnimationDrawable)
        {
            drawable = (AnimationDrawable)drawable;
            int j = drawable.getNumberOfFrames();
            obj = new AnimationDrawable();
            ((AnimationDrawable) (obj)).setOneShot(drawable.isOneShot());
            for (int i = 0; i < j; i++)
            {
                Drawable drawable1 = a(drawable.getFrame(i), true);
                drawable1.setLevel(10000);
                ((AnimationDrawable) (obj)).addFrame(drawable1, drawable.getDuration(i));
            }

            ((AnimationDrawable) (obj)).setLevel(10000);
        }
        return ((Drawable) (obj));
    }

    private Drawable a(Drawable drawable, boolean flag)
    {
        boolean flag1 = false;
        if (!(drawable instanceof b)) goto _L2; else goto _L1
_L1:
        Drawable drawable1 = ((b)drawable).a();
        if (drawable1 != null)
        {
            drawable1 = a(drawable1, flag);
            ((b)drawable).a(drawable1);
        }
_L4:
        return drawable;
_L2:
        LayerDrawable layerdrawable;
        LayerDrawable layerdrawable1;
        int i;
        int j;
        if (!(drawable instanceof LayerDrawable))
        {
            continue; /* Loop/switch isn't completed */
        }
        layerdrawable1 = (LayerDrawable)drawable;
        j = layerdrawable1.getNumberOfLayers();
        drawable = new Drawable[j];
        i = 0;
        while (i < j) 
        {
            int k = layerdrawable1.getId(i);
            Drawable drawable2 = layerdrawable1.getDrawable(i);
            if (k == 0x102000d || k == 0x102000f)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            drawable[i] = a(drawable2, flag);
            i++;
        }
        layerdrawable = new LayerDrawable(drawable);
        i = ((flag1) ? 1 : 0);
_L5:
        drawable = layerdrawable;
        if (i >= j) goto _L4; else goto _L3
_L3:
        layerdrawable.setId(i, layerdrawable1.getId(i));
        i++;
          goto _L5
        if (!(drawable instanceof BitmapDrawable)) goto _L4; else goto _L6
_L6:
        drawable = (BitmapDrawable)drawable;
        Object obj = drawable.getBitmap();
        if (c == null)
        {
            c = ((Bitmap) (obj));
        }
        ShapeDrawable shapedrawable = new ShapeDrawable(b());
        obj = new BitmapShader(((Bitmap) (obj)), android.graphics.Shader.TileMode.REPEAT, android.graphics.Shader.TileMode.CLAMP);
        shapedrawable.getPaint().setShader(((android.graphics.Shader) (obj)));
        shapedrawable.getPaint().setColorFilter(drawable.getPaint().getColorFilter());
        if (flag)
        {
            return new ClipDrawable(shapedrawable, 3, 1);
        } else
        {
            return shapedrawable;
        }
    }

    private Shape b()
    {
        return new RoundRectShape(new float[] {
            5F, 5F, 5F, 5F, 5F, 5F, 5F, 5F
        }, null, null);
    }

    Bitmap a()
    {
        return c;
    }

    void a(AttributeSet attributeset, int i)
    {
        attributeset = aw.a(b.getContext(), attributeset, a, i, 0);
        Drawable drawable = attributeset.b(0);
        if (drawable != null)
        {
            b.setIndeterminateDrawable(a(drawable));
        }
        drawable = attributeset.b(1);
        if (drawable != null)
        {
            b.setProgressDrawable(a(drawable, false));
        }
        attributeset.a();
    }

}
