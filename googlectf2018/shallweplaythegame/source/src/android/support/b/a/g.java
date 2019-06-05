// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.v4.b.a.c;
import android.support.v4.c.b;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package android.support.b.a:
//            a

public class g
    implements Interpolator
{

    private float a[];
    private float b[];

    public g(Context context, AttributeSet attributeset, XmlPullParser xmlpullparser)
    {
        this(context.getResources(), context.getTheme(), attributeset, xmlpullparser);
    }

    public g(Resources resources, android.content.res.Resources.Theme theme, AttributeSet attributeset, XmlPullParser xmlpullparser)
    {
        resources = c.a(resources, theme, attributeset, a.l);
        a(resources, xmlpullparser);
        resources.recycle();
    }

    private void a(float f, float f1)
    {
        Path path = new Path();
        path.moveTo(0.0F, 0.0F);
        path.quadTo(f, f1, 1.0F, 1.0F);
        a(path);
    }

    private void a(float f, float f1, float f2, float f3)
    {
        Path path = new Path();
        path.moveTo(0.0F, 0.0F);
        path.cubicTo(f, f1, f2, f3, 1.0F, 1.0F);
        a(path);
    }

    private void a(TypedArray typedarray, XmlPullParser xmlpullparser)
    {
        if (c.a(xmlpullparser, "pathData"))
        {
            typedarray = c.a(typedarray, xmlpullparser, "pathData", 4);
            xmlpullparser = android.support.v4.c.b.a(typedarray);
            if (xmlpullparser == null)
            {
                throw new InflateException((new StringBuilder()).append("The path is null, which is created from ").append(typedarray).toString());
            } else
            {
                a(((Path) (xmlpullparser)));
                return;
            }
        }
        if (!c.a(xmlpullparser, "controlX1"))
        {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!c.a(xmlpullparser, "controlY1"))
        {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float f = c.a(typedarray, xmlpullparser, "controlX1", 0, 0.0F);
        float f1 = c.a(typedarray, xmlpullparser, "controlY1", 1, 0.0F);
        boolean flag = c.a(xmlpullparser, "controlX2");
        if (flag != c.a(xmlpullparser, "controlY2"))
        {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (!flag)
        {
            a(f, f1);
            return;
        } else
        {
            a(f, f1, c.a(typedarray, xmlpullparser, "controlX2", 2, 0.0F), c.a(typedarray, xmlpullparser, "controlY2", 3, 0.0F));
            return;
        }
    }

    private void a(Path path)
    {
        int k = 0;
        path = new PathMeasure(path, false);
        float f = path.getLength();
        int l = Math.min(3000, (int)(f / 0.002F) + 1);
        if (l <= 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("The Path has a invalid length ").append(f).toString());
        }
        a = new float[l];
        b = new float[l];
        float af[] = new float[2];
        for (int i = 0; i < l; i++)
        {
            path.getPosTan(((float)i * f) / (float)(l - 1), af, null);
            a[i] = af[0];
            b[i] = af[1];
        }

        if ((double)Math.abs(a[0]) > 1.0000000000000001E-05D || (double)Math.abs(b[0]) > 1.0000000000000001E-05D || (double)Math.abs(a[l - 1] - 1.0F) > 1.0000000000000001E-05D || (double)Math.abs(b[l - 1] - 1.0F) > 1.0000000000000001E-05D)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("The Path must start at (0,0) and end at (1,1) start: ").append(a[0]).append(",").append(b[0]).append(" end:").append(a[l - 1]).append(",").append(b[l - 1]).toString());
        }
        f = 0.0F;
        for (int j = 0; k < l; j++)
        {
            float f1 = a[j];
            if (f1 < f)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("The Path cannot loop back on itself, x :").append(f1).toString());
            }
            a[k] = f1;
            k++;
            f = f1;
        }

        if (path.nextContour())
        {
            throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
        } else
        {
            return;
        }
    }

    public float getInterpolation(float f)
    {
        float f1 = 1.0F;
        if (f <= 0.0F)
        {
            f1 = 0.0F;
        } else
        if (f < 1.0F)
        {
            int j = 0;
            int i;
            for (i = a.length - 1; i - j > 1;)
            {
                int k = (j + i) / 2;
                if (f < a[k])
                {
                    i = k;
                } else
                {
                    j = k;
                }
            }

            float f2 = a[i] - a[j];
            if (f2 == 0.0F)
            {
                return b[j];
            } else
            {
                f = (f - a[j]) / f2;
                f2 = b[j];
                return f * (b[i] - f2) + f2;
            }
        }
        return f1;
    }
}
