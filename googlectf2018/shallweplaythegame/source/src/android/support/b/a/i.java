// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.support.v4.b.a.b;
import android.support.v4.b.a.c;
import android.support.v4.g.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Stack;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package android.support.b.a:
//            h, a

public class i extends h
{
    private static class a extends d
    {

        private void a(TypedArray typedarray)
        {
            String s = typedarray.getString(0);
            if (s != null)
            {
                n = s;
            }
            typedarray = typedarray.getString(1);
            if (typedarray != null)
            {
                m = android.support.v4.c.b.b(typedarray);
            }
        }

        public void a(Resources resources, AttributeSet attributeset, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser)
        {
            if (!android.support.v4.b.a.c.a(xmlpullparser, "pathData"))
            {
                return;
            } else
            {
                resources = android.support.v4.b.a.c.a(resources, theme, attributeset, android.support.b.a.a.d);
                a(((TypedArray) (resources)));
                resources.recycle();
                return;
            }
        }

        public boolean a()
        {
            return true;
        }

        public a()
        {
        }

        public a(a a1)
        {
            super(a1);
        }
    }

    private static class b extends d
    {

        int a;
        float b;
        int c;
        float d;
        int e;
        float f;
        float g;
        float h;
        float i;
        android.graphics.Paint.Cap j;
        android.graphics.Paint.Join k;
        float l;
        private int p[];

        private android.graphics.Paint.Cap a(int i1, android.graphics.Paint.Cap cap)
        {
            switch (i1)
            {
            default:
                return cap;

            case 0: // '\0'
                return android.graphics.Paint.Cap.BUTT;

            case 1: // '\001'
                return android.graphics.Paint.Cap.ROUND;

            case 2: // '\002'
                return android.graphics.Paint.Cap.SQUARE;
            }
        }

        private android.graphics.Paint.Join a(int i1, android.graphics.Paint.Join join)
        {
            switch (i1)
            {
            default:
                return join;

            case 0: // '\0'
                return android.graphics.Paint.Join.MITER;

            case 1: // '\001'
                return android.graphics.Paint.Join.ROUND;

            case 2: // '\002'
                return android.graphics.Paint.Join.BEVEL;
            }
        }

        private void a(TypedArray typedarray, XmlPullParser xmlpullparser)
        {
            p = null;
            if (!android.support.v4.b.a.c.a(xmlpullparser, "pathData"))
            {
                return;
            }
            String s = typedarray.getString(0);
            if (s != null)
            {
                n = s;
            }
            s = typedarray.getString(2);
            if (s != null)
            {
                m = android.support.v4.c.b.b(s);
            }
            c = android.support.v4.b.a.c.b(typedarray, xmlpullparser, "fillColor", 1, c);
            f = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "fillAlpha", 12, f);
            j = a(android.support.v4.b.a.c.a(typedarray, xmlpullparser, "strokeLineCap", 8, -1), j);
            k = a(android.support.v4.b.a.c.a(typedarray, xmlpullparser, "strokeLineJoin", 9, -1), k);
            l = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "strokeMiterLimit", 10, l);
            a = android.support.v4.b.a.c.b(typedarray, xmlpullparser, "strokeColor", 3, a);
            d = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "strokeAlpha", 11, d);
            b = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "strokeWidth", 4, b);
            h = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "trimPathEnd", 6, h);
            i = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "trimPathOffset", 7, i);
            g = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "trimPathStart", 5, g);
            e = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "fillType", 13, e);
        }

        public void a(Resources resources, AttributeSet attributeset, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser)
        {
            resources = android.support.v4.b.a.c.a(resources, theme, attributeset, android.support.b.a.a.c);
            a(((TypedArray) (resources)), xmlpullparser);
            resources.recycle();
        }

        float getFillAlpha()
        {
            return f;
        }

        int getFillColor()
        {
            return c;
        }

        float getStrokeAlpha()
        {
            return d;
        }

        int getStrokeColor()
        {
            return a;
        }

        float getStrokeWidth()
        {
            return b;
        }

        float getTrimPathEnd()
        {
            return h;
        }

        float getTrimPathOffset()
        {
            return i;
        }

        float getTrimPathStart()
        {
            return g;
        }

        void setFillAlpha(float f1)
        {
            f = f1;
        }

        void setFillColor(int i1)
        {
            c = i1;
        }

        void setStrokeAlpha(float f1)
        {
            d = f1;
        }

        void setStrokeColor(int i1)
        {
            a = i1;
        }

        void setStrokeWidth(float f1)
        {
            b = f1;
        }

        void setTrimPathEnd(float f1)
        {
            h = f1;
        }

        void setTrimPathOffset(float f1)
        {
            i = f1;
        }

        void setTrimPathStart(float f1)
        {
            g = f1;
        }

        public b()
        {
            a = 0;
            b = 0.0F;
            c = 0;
            d = 1.0F;
            e = 0;
            f = 1.0F;
            g = 0.0F;
            h = 1.0F;
            i = 0.0F;
            j = android.graphics.Paint.Cap.BUTT;
            k = android.graphics.Paint.Join.MITER;
            l = 4F;
        }

        public b(b b1)
        {
            super(b1);
            a = 0;
            b = 0.0F;
            c = 0;
            d = 1.0F;
            e = 0;
            f = 1.0F;
            g = 0.0F;
            h = 1.0F;
            i = 0.0F;
            j = android.graphics.Paint.Cap.BUTT;
            k = android.graphics.Paint.Join.MITER;
            l = 4F;
            p = b1.p;
            a = b1.a;
            b = b1.b;
            d = b1.d;
            c = b1.c;
            e = b1.e;
            f = b1.f;
            g = b1.g;
            h = b1.h;
            i = b1.i;
            j = b1.j;
            k = b1.k;
            l = b1.l;
        }
    }

    private static class c
    {

        final ArrayList a;
        float b;
        int c;
        private final Matrix d;
        private float e;
        private float f;
        private float g;
        private float h;
        private float i;
        private float j;
        private final Matrix k;
        private int l[];
        private String m;

        static Matrix a(c c1)
        {
            return c1.d;
        }

        private void a()
        {
            k.reset();
            k.postTranslate(-e, -f);
            k.postScale(g, h);
            k.postRotate(b, 0.0F, 0.0F);
            k.postTranslate(i + e, j + f);
        }

        private void a(TypedArray typedarray, XmlPullParser xmlpullparser)
        {
            l = null;
            b = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "rotation", 5, b);
            e = typedarray.getFloat(1, e);
            f = typedarray.getFloat(2, f);
            g = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "scaleX", 3, g);
            h = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "scaleY", 4, h);
            i = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "translateX", 6, i);
            j = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "translateY", 7, j);
            typedarray = typedarray.getString(0);
            if (typedarray != null)
            {
                m = typedarray;
            }
            a();
        }

        static Matrix b(c c1)
        {
            return c1.k;
        }

        public void a(Resources resources, AttributeSet attributeset, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser)
        {
            resources = android.support.v4.b.a.c.a(resources, theme, attributeset, android.support.b.a.a.b);
            a(((TypedArray) (resources)), xmlpullparser);
            resources.recycle();
        }

        public String getGroupName()
        {
            return m;
        }

        public Matrix getLocalMatrix()
        {
            return k;
        }

        public float getPivotX()
        {
            return e;
        }

        public float getPivotY()
        {
            return f;
        }

        public float getRotation()
        {
            return b;
        }

        public float getScaleX()
        {
            return g;
        }

        public float getScaleY()
        {
            return h;
        }

        public float getTranslateX()
        {
            return i;
        }

        public float getTranslateY()
        {
            return j;
        }

        public void setPivotX(float f1)
        {
            if (f1 != e)
            {
                e = f1;
                a();
            }
        }

        public void setPivotY(float f1)
        {
            if (f1 != f)
            {
                f = f1;
                a();
            }
        }

        public void setRotation(float f1)
        {
            if (f1 != b)
            {
                b = f1;
                a();
            }
        }

        public void setScaleX(float f1)
        {
            if (f1 != g)
            {
                g = f1;
                a();
            }
        }

        public void setScaleY(float f1)
        {
            if (f1 != h)
            {
                h = f1;
                a();
            }
        }

        public void setTranslateX(float f1)
        {
            if (f1 != i)
            {
                i = f1;
                a();
            }
        }

        public void setTranslateY(float f1)
        {
            if (f1 != j)
            {
                j = f1;
                a();
            }
        }

        public c()
        {
            d = new Matrix();
            a = new ArrayList();
            b = 0.0F;
            e = 0.0F;
            f = 0.0F;
            g = 1.0F;
            h = 1.0F;
            i = 0.0F;
            j = 0.0F;
            k = new Matrix();
            m = null;
        }

        public c(c c1, android.support.v4.g.a a1)
        {
            d = new Matrix();
            a = new ArrayList();
            b = 0.0F;
            e = 0.0F;
            f = 0.0F;
            g = 1.0F;
            h = 1.0F;
            i = 0.0F;
            j = 0.0F;
            k = new Matrix();
            m = null;
            b = c1.b;
            e = c1.e;
            f = c1.f;
            g = c1.g;
            h = c1.h;
            i = c1.i;
            j = c1.j;
            l = c1.l;
            m = c1.m;
            c = c1.c;
            if (m != null)
            {
                a1.put(m, this);
            }
            k.set(c1.k);
            ArrayList arraylist = c1.a;
            int i1 = 0;
            do
            {
                if (i1 < arraylist.size())
                {
                    c1 = ((c) (arraylist.get(i1)));
                    if (c1 instanceof c)
                    {
                        c1 = (c)c1;
                        a.add(new c(c1, a1));
                    } else
                    {
                        if (c1 instanceof b)
                        {
                            c1 = new b((b)c1);
                        } else
                        if (c1 instanceof a)
                        {
                            c1 = new a((a)c1);
                        } else
                        {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        a.add(c1);
                        if (((d) (c1)).n != null)
                        {
                            a1.put(((d) (c1)).n, c1);
                        }
                    }
                } else
                {
                    return;
                }
                i1++;
            } while (true);
        }
    }

    private static class d
    {

        protected android.support.v4.c.b.b m[];
        String n;
        int o;

        public void a(Path path)
        {
            path.reset();
            if (m != null)
            {
                android.support.v4.c.b.b.a(m, path);
            }
        }

        public boolean a()
        {
            return false;
        }

        public android.support.v4.c.b.b[] getPathData()
        {
            return m;
        }

        public String getPathName()
        {
            return n;
        }

        public void setPathData(android.support.v4.c.b.b ab[])
        {
            if (!android.support.v4.c.b.a(m, ab))
            {
                m = android.support.v4.c.b.a(ab);
                return;
            } else
            {
                android.support.v4.c.b.b(m, ab);
                return;
            }
        }

        public d()
        {
            m = null;
        }

        public d(d d1)
        {
            m = null;
            n = d1.n;
            o = d1.o;
            m = android.support.v4.c.b.a(d1.m);
        }
    }

    private static class e
    {

        private static final Matrix k = new Matrix();
        final c a;
        float b;
        float c;
        float d;
        float e;
        int f;
        String g;
        final android.support.v4.g.a h;
        private final Path i;
        private final Path j;
        private final Matrix l;
        private Paint m;
        private Paint n;
        private PathMeasure o;
        private int p;

        private static float a(float f1, float f2, float f3, float f4)
        {
            return f1 * f4 - f2 * f3;
        }

        private float a(Matrix matrix)
        {
            float f1 = 0.0F;
            float af[] = new float[4];
            float[] _tmp = af;
            af[0] = 0.0F;
            af[1] = 1.0F;
            af[2] = 1.0F;
            af[3] = 0.0F;
            matrix.mapVectors(af);
            float f3 = (float)Math.hypot(af[0], af[1]);
            float f4 = (float)Math.hypot(af[2], af[3]);
            float f2 = a(af[0], af[1], af[2], af[3]);
            f3 = Math.max(f3, f4);
            if (f3 > 0.0F)
            {
                f1 = Math.abs(f2) / f3;
            }
            return f1;
        }

        static Paint a(e e1)
        {
            return e1.n;
        }

        static Paint a(e e1, Paint paint)
        {
            e1.n = paint;
            return paint;
        }

        private void a(c c1, Matrix matrix, Canvas canvas, int i1, int j1, ColorFilter colorfilter)
        {
            android.support.b.a.c.a(c1).set(matrix);
            android.support.b.a.c.a(c1).preConcat(android.support.b.a.c.b(c1));
            canvas.save();
            int k1 = 0;
            while (k1 < c1.a.size()) 
            {
                matrix = ((Matrix) (c1.a.get(k1)));
                if (matrix instanceof c)
                {
                    a((c)matrix, android.support.b.a.c.a(c1), canvas, i1, j1, colorfilter);
                } else
                if (matrix instanceof d)
                {
                    a(c1, (d)matrix, canvas, i1, j1, colorfilter);
                }
                k1++;
            }
            canvas.restore();
        }

        private void a(c c1, d d1, Canvas canvas, int i1, int j1, ColorFilter colorfilter)
        {
            float f2 = (float)i1 / d;
            float f3 = (float)j1 / e;
            float f1 = Math.min(f2, f3);
            c1 = android.support.b.a.c.a(c1);
            l.set(c1);
            l.postScale(f2, f3);
            f2 = a(((Matrix) (c1)));
            if (f2 != 0.0F)
            {
                d1.a(i);
                c1 = i;
                j.reset();
                if (d1.a())
                {
                    j.addPath(c1, l);
                    canvas.clipPath(j);
                    return;
                }
                d1 = (b)d1;
                if (((b) (d1)).g != 0.0F || ((b) (d1)).h != 1.0F)
                {
                    float f7 = ((b) (d1)).g;
                    float f8 = ((b) (d1)).i;
                    float f5 = ((b) (d1)).h;
                    float f6 = ((b) (d1)).i;
                    if (o == null)
                    {
                        o = new PathMeasure();
                    }
                    o.setPath(i, false);
                    float f4 = o.getLength();
                    f7 = ((f7 + f8) % 1.0F) * f4;
                    f5 = ((f5 + f6) % 1.0F) * f4;
                    c1.reset();
                    Paint paint;
                    Path path;
                    if (f7 > f5)
                    {
                        o.getSegment(f7, f4, c1, true);
                        o.getSegment(0.0F, f5, c1, true);
                    } else
                    {
                        o.getSegment(f7, f5, c1, true);
                    }
                    c1.rLineTo(0.0F, 0.0F);
                }
                j.addPath(c1, l);
                if (((b) (d1)).c != 0)
                {
                    if (n == null)
                    {
                        n = new Paint();
                        n.setStyle(android.graphics.Paint.Style.FILL);
                        n.setAntiAlias(true);
                    }
                    paint = n;
                    paint.setColor(android.support.b.a.i.a(((b) (d1)).c, ((b) (d1)).f));
                    paint.setColorFilter(colorfilter);
                    path = j;
                    if (((b) (d1)).e == 0)
                    {
                        c1 = android.graphics.Path.FillType.WINDING;
                    } else
                    {
                        c1 = android.graphics.Path.FillType.EVEN_ODD;
                    }
                    path.setFillType(c1);
                    canvas.drawPath(j, paint);
                }
                if (((b) (d1)).a != 0)
                {
                    if (m == null)
                    {
                        m = new Paint();
                        m.setStyle(android.graphics.Paint.Style.STROKE);
                        m.setAntiAlias(true);
                    }
                    c1 = m;
                    if (((b) (d1)).k != null)
                    {
                        c1.setStrokeJoin(((b) (d1)).k);
                    }
                    if (((b) (d1)).j != null)
                    {
                        c1.setStrokeCap(((b) (d1)).j);
                    }
                    c1.setStrokeMiter(((b) (d1)).l);
                    c1.setColor(android.support.b.a.i.a(((b) (d1)).a, ((b) (d1)).d));
                    c1.setColorFilter(colorfilter);
                    c1.setStrokeWidth(f2 * f1 * ((b) (d1)).b);
                    canvas.drawPath(j, c1);
                    return;
                }
            }
        }

        static Paint b(e e1)
        {
            return e1.m;
        }

        static Paint b(e e1, Paint paint)
        {
            e1.m = paint;
            return paint;
        }

        public void a(Canvas canvas, int i1, int j1, ColorFilter colorfilter)
        {
            a(a, k, canvas, i1, j1, colorfilter);
        }

        public float getAlpha()
        {
            return (float)getRootAlpha() / 255F;
        }

        public int getRootAlpha()
        {
            return f;
        }

        public void setAlpha(float f1)
        {
            setRootAlpha((int)(255F * f1));
        }

        public void setRootAlpha(int i1)
        {
            f = i1;
        }


        public e()
        {
            l = new Matrix();
            b = 0.0F;
            c = 0.0F;
            d = 0.0F;
            e = 0.0F;
            f = 255;
            g = null;
            h = new android.support.v4.g.a();
            a = new c();
            i = new Path();
            j = new Path();
        }

        public e(e e1)
        {
            l = new Matrix();
            b = 0.0F;
            c = 0.0F;
            d = 0.0F;
            e = 0.0F;
            f = 255;
            g = null;
            h = new android.support.v4.g.a();
            a = new c(e1.a, h);
            i = new Path(e1.i);
            j = new Path(e1.j);
            b = e1.b;
            c = e1.c;
            d = e1.d;
            e = e1.e;
            p = e1.p;
            f = e1.f;
            g = e1.g;
            if (e1.g != null)
            {
                h.put(e1.g, this);
            }
        }
    }

    private static class f extends android.graphics.drawable.Drawable.ConstantState
    {

        int a;
        e b;
        ColorStateList c;
        android.graphics.PorterDuff.Mode d;
        boolean e;
        Bitmap f;
        ColorStateList g;
        android.graphics.PorterDuff.Mode h;
        int i;
        boolean j;
        boolean k;
        Paint l;

        public Paint a(ColorFilter colorfilter)
        {
            if (!a() && colorfilter == null)
            {
                return null;
            }
            if (l == null)
            {
                l = new Paint();
                l.setFilterBitmap(true);
            }
            l.setAlpha(b.getRootAlpha());
            l.setColorFilter(colorfilter);
            return l;
        }

        public void a(int i1, int j1)
        {
            f.eraseColor(0);
            Canvas canvas = new Canvas(f);
            b.a(canvas, i1, j1, null);
        }

        public void a(Canvas canvas, ColorFilter colorfilter, Rect rect)
        {
            colorfilter = a(colorfilter);
            canvas.drawBitmap(f, null, rect, colorfilter);
        }

        public boolean a()
        {
            return b.getRootAlpha() < 255;
        }

        public void b(int i1, int j1)
        {
            if (f == null || !c(i1, j1))
            {
                f = Bitmap.createBitmap(i1, j1, android.graphics.Bitmap.Config.ARGB_8888);
                k = true;
            }
        }

        public boolean b()
        {
            return !k && g == c && h == d && j == e && i == b.getRootAlpha();
        }

        public void c()
        {
            g = c;
            h = d;
            i = b.getRootAlpha();
            j = e;
            k = false;
        }

        public boolean c(int i1, int j1)
        {
            return i1 == f.getWidth() && j1 == f.getHeight();
        }

        public int getChangingConfigurations()
        {
            return a;
        }

        public Drawable newDrawable()
        {
            return new i(this);
        }

        public Drawable newDrawable(Resources resources)
        {
            return new i(this);
        }

        public f()
        {
            c = null;
            d = android.support.b.a.i.a;
            b = new e();
        }

        public f(f f1)
        {
            c = null;
            d = android.support.b.a.i.a;
            if (f1 != null)
            {
                a = f1.a;
                b = new e(f1.b);
                if (android.support.b.a.e.a(f1.b) != null)
                {
                    android.support.b.a.e.a(b, new Paint(android.support.b.a.e.a(f1.b)));
                }
                if (android.support.b.a.e.b(f1.b) != null)
                {
                    android.support.b.a.e.b(b, new Paint(android.support.b.a.e.b(f1.b)));
                }
                c = f1.c;
                d = f1.d;
                e = f1.e;
            }
        }
    }

    private static class g extends android.graphics.drawable.Drawable.ConstantState
    {

        private final android.graphics.drawable.Drawable.ConstantState a;

        public boolean canApplyTheme()
        {
            return a.canApplyTheme();
        }

        public int getChangingConfigurations()
        {
            return a.getChangingConfigurations();
        }

        public Drawable newDrawable()
        {
            i l = new i();
            l.b = (VectorDrawable)a.newDrawable();
            return l;
        }

        public Drawable newDrawable(Resources resources)
        {
            i l = new i();
            l.b = (VectorDrawable)a.newDrawable(resources);
            return l;
        }

        public Drawable newDrawable(Resources resources, android.content.res.Resources.Theme theme)
        {
            i l = new i();
            l.b = (VectorDrawable)a.newDrawable(resources, theme);
            return l;
        }

        public g(android.graphics.drawable.Drawable.ConstantState constantstate)
        {
            a = constantstate;
        }
    }


    static final android.graphics.PorterDuff.Mode a;
    private f c;
    private PorterDuffColorFilter d;
    private ColorFilter e;
    private boolean f;
    private boolean g;
    private android.graphics.drawable.Drawable.ConstantState h;
    private final float i[];
    private final Matrix j;
    private final Rect k;

    i()
    {
        g = true;
        i = new float[9];
        j = new Matrix();
        k = new Rect();
        c = new f();
    }

    i(f f1)
    {
        g = true;
        i = new float[9];
        j = new Matrix();
        k = new Rect();
        c = f1;
        d = a(d, f1.c, f1.d);
    }

    static int a(int l, float f1)
    {
        return (int)((float)Color.alpha(l) * f1) << 24 | 0xffffff & l;
    }

    private static android.graphics.PorterDuff.Mode a(int l, android.graphics.PorterDuff.Mode mode)
    {
        l;
        JVM INSTR tableswitch 3 16: default 72
    //                   3 74
    //                   4 72
    //                   5 78
    //                   6 72
    //                   7 72
    //                   8 72
    //                   9 82
    //                   10 72
    //                   11 72
    //                   12 72
    //                   13 72
    //                   14 86
    //                   15 90
    //                   16 94;
           goto _L1 _L2 _L1 _L3 _L1 _L1 _L1 _L4 _L1 _L1 _L1 _L1 _L5 _L6 _L7
_L1:
        return mode;
_L2:
        return android.graphics.PorterDuff.Mode.SRC_OVER;
_L3:
        return android.graphics.PorterDuff.Mode.SRC_IN;
_L4:
        return android.graphics.PorterDuff.Mode.SRC_ATOP;
_L5:
        return android.graphics.PorterDuff.Mode.MULTIPLY;
_L6:
        return android.graphics.PorterDuff.Mode.SCREEN;
_L7:
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            return android.graphics.PorterDuff.Mode.ADD;
        }
        if (true) goto _L1; else goto _L8
_L8:
    }

    public static i a(Resources resources, int l, android.content.res.Resources.Theme theme)
    {
        if (android.os.Build.VERSION.SDK_INT >= 24)
        {
            i i1 = new i();
            i1.b = android.support.v4.b.a.b.a(resources, l, theme);
            i1.h = new g(i1.b.getConstantState());
            return i1;
        }
        android.content.res.XmlResourceParser xmlresourceparser;
        AttributeSet attributeset;
        xmlresourceparser = resources.getXml(l);
        attributeset = Xml.asAttributeSet(xmlresourceparser);
        do
        {
            l = xmlresourceparser.next();
        } while (l != 2 && l != 1);
        if (l != 2)
        {
            try
            {
                throw new XmlPullParserException("No start tag found");
            }
            // Misplaced declaration of an exception variable
            catch (Resources resources)
            {
                Log.e("VectorDrawableCompat", "parser error", resources);
            }
            // Misplaced declaration of an exception variable
            catch (Resources resources)
            {
                Log.e("VectorDrawableCompat", "parser error", resources);
            }
            return null;
        }
        resources = a(resources, ((XmlPullParser) (xmlresourceparser)), attributeset, theme);
        return resources;
    }

    public static i a(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        i l = new i();
        l.inflate(resources, xmlpullparser, attributeset, theme);
        return l;
    }

    private void a(TypedArray typedarray, XmlPullParser xmlpullparser)
    {
        f f1 = c;
        e e1 = f1.b;
        f1.d = a(android.support.v4.b.a.c.a(typedarray, xmlpullparser, "tintMode", 6, -1), android.graphics.PorterDuff.Mode.SRC_IN);
        ColorStateList colorstatelist = typedarray.getColorStateList(1);
        if (colorstatelist != null)
        {
            f1.c = colorstatelist;
        }
        f1.e = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "autoMirrored", 5, f1.e);
        e1.d = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "viewportWidth", 7, e1.d);
        e1.e = android.support.v4.b.a.c.a(typedarray, xmlpullparser, "viewportHeight", 8, e1.e);
        if (e1.d <= 0.0F)
        {
            throw new XmlPullParserException((new StringBuilder()).append(typedarray.getPositionDescription()).append("<vector> tag requires viewportWidth > 0").toString());
        }
        if (e1.e <= 0.0F)
        {
            throw new XmlPullParserException((new StringBuilder()).append(typedarray.getPositionDescription()).append("<vector> tag requires viewportHeight > 0").toString());
        }
        e1.b = typedarray.getDimension(3, e1.b);
        e1.c = typedarray.getDimension(2, e1.c);
        if (e1.b <= 0.0F)
        {
            throw new XmlPullParserException((new StringBuilder()).append(typedarray.getPositionDescription()).append("<vector> tag requires width > 0").toString());
        }
        if (e1.c <= 0.0F)
        {
            throw new XmlPullParserException((new StringBuilder()).append(typedarray.getPositionDescription()).append("<vector> tag requires height > 0").toString());
        }
        e1.setAlpha(android.support.v4.b.a.c.a(typedarray, xmlpullparser, "alpha", 4, e1.getAlpha()));
        typedarray = typedarray.getString(0);
        if (typedarray != null)
        {
            e1.g = typedarray;
            e1.h.put(typedarray, e1);
        }
    }

    private boolean a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            return isAutoMirrored() && android.support.v4.c.a.a.g(this) == 1;
        } else
        {
            return false;
        }
    }

    private void b(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        f f1 = c;
        e e1 = f1.b;
        Stack stack = new Stack();
        stack.push(e1.a);
        int i1 = xmlpullparser.getEventType();
        int j1 = xmlpullparser.getDepth();
        boolean flag = true;
        do
        {
            if (i1 != 1 && (xmlpullparser.getDepth() >= j1 + 1 || i1 != 3))
            {
                boolean flag1;
                if (i1 == 2)
                {
                    Object obj = xmlpullparser.getName();
                    c c1 = (c)stack.peek();
                    if ("path".equals(obj))
                    {
                        obj = new b();
                        ((b) (obj)).a(resources, attributeset, theme, xmlpullparser);
                        c1.a.add(obj);
                        if (((b) (obj)).getPathName() != null)
                        {
                            e1.h.put(((b) (obj)).getPathName(), obj);
                        }
                        flag = false;
                        int l = f1.a;
                        f1.a = ((b) (obj)).o | l;
                    } else
                    if ("clip-path".equals(obj))
                    {
                        obj = new a();
                        ((a) (obj)).a(resources, attributeset, theme, xmlpullparser);
                        c1.a.add(obj);
                        if (((a) (obj)).getPathName() != null)
                        {
                            e1.h.put(((a) (obj)).getPathName(), obj);
                        }
                        f1.a = f1.a | ((a) (obj)).o;
                    } else
                    if ("group".equals(obj))
                    {
                        c c2 = new c();
                        c2.a(resources, attributeset, theme, xmlpullparser);
                        c1.a.add(c2);
                        stack.push(c2);
                        if (c2.getGroupName() != null)
                        {
                            e1.h.put(c2.getGroupName(), c2);
                        }
                        f1.a = f1.a | c2.c;
                    }
                    flag1 = flag;
                } else
                {
                    flag1 = flag;
                    if (i1 == 3)
                    {
                        flag1 = flag;
                        if ("group".equals(xmlpullparser.getName()))
                        {
                            stack.pop();
                            flag1 = flag;
                        }
                    }
                }
                i1 = xmlpullparser.next();
                flag = flag1;
                continue;
            }
            if (flag)
            {
                resources = new StringBuffer();
                if (resources.length() > 0)
                {
                    resources.append(" or ");
                }
                resources.append("path");
                throw new XmlPullParserException((new StringBuilder()).append("no ").append(resources).append(" defined").toString());
            }
            return;
        } while (true);
    }

    PorterDuffColorFilter a(PorterDuffColorFilter porterduffcolorfilter, ColorStateList colorstatelist, android.graphics.PorterDuff.Mode mode)
    {
        if (colorstatelist == null || mode == null)
        {
            return null;
        } else
        {
            return new PorterDuffColorFilter(colorstatelist.getColorForState(getState(), 0), mode);
        }
    }

    Object a(String s)
    {
        return c.b.h.get(s);
    }

    void a(boolean flag)
    {
        g = flag;
    }

    public volatile void applyTheme(android.content.res.Resources.Theme theme)
    {
        super.applyTheme(theme);
    }

    public boolean canApplyTheme()
    {
        if (b != null)
        {
            android.support.v4.c.a.a.d(b);
        }
        return false;
    }

    public volatile void clearColorFilter()
    {
        super.clearColorFilter();
    }

    public void draw(Canvas canvas)
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        b.draw(canvas);
_L4:
        return;
_L2:
        copyBounds(k);
        if (k.width() <= 0 || k.height() <= 0) goto _L4; else goto _L3
_L3:
        int l;
        int i1;
        float f1;
        float f2;
        float f3;
        float f4;
        Object obj;
        int j1;
        if (e == null)
        {
            obj = d;
        } else
        {
            obj = e;
        }
        canvas.getMatrix(j);
        j.getValues(i);
        f2 = Math.abs(i[0]);
        f1 = Math.abs(i[4]);
        f4 = Math.abs(i[1]);
        f3 = Math.abs(i[3]);
        if (f4 != 0.0F || f3 != 0.0F)
        {
            f1 = 1.0F;
            f2 = 1.0F;
        }
        l = (int)(f2 * (float)k.width());
        i1 = (int)(f1 * (float)k.height());
        l = Math.min(2048, l);
        i1 = Math.min(2048, i1);
        if (l <= 0 || i1 <= 0) goto _L4; else goto _L5
_L5:
        j1 = canvas.save();
        canvas.translate(k.left, k.top);
        if (a())
        {
            canvas.translate(k.width(), 0.0F);
            canvas.scale(-1F, 1.0F);
        }
        k.offsetTo(0, 0);
        c.b(l, i1);
        if (g) goto _L7; else goto _L6
_L6:
        c.a(l, i1);
_L9:
        c.a(canvas, ((ColorFilter) (obj)), k);
        canvas.restoreToCount(j1);
        return;
_L7:
        if (!c.b())
        {
            c.a(l, i1);
            c.c();
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    public int getAlpha()
    {
        if (b != null)
        {
            return android.support.v4.c.a.a.c(b);
        } else
        {
            return c.b.getRootAlpha();
        }
    }

    public int getChangingConfigurations()
    {
        if (b != null)
        {
            return b.getChangingConfigurations();
        } else
        {
            return super.getChangingConfigurations() | c.getChangingConfigurations();
        }
    }

    public volatile ColorFilter getColorFilter()
    {
        return super.getColorFilter();
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        if (b != null && android.os.Build.VERSION.SDK_INT >= 24)
        {
            return new g(b.getConstantState());
        } else
        {
            c.a = getChangingConfigurations();
            return c;
        }
    }

    public volatile Drawable getCurrent()
    {
        return super.getCurrent();
    }

    public int getIntrinsicHeight()
    {
        if (b != null)
        {
            return b.getIntrinsicHeight();
        } else
        {
            return (int)c.b.c;
        }
    }

    public int getIntrinsicWidth()
    {
        if (b != null)
        {
            return b.getIntrinsicWidth();
        } else
        {
            return (int)c.b.b;
        }
    }

    public volatile int getMinimumHeight()
    {
        return super.getMinimumHeight();
    }

    public volatile int getMinimumWidth()
    {
        return super.getMinimumWidth();
    }

    public int getOpacity()
    {
        if (b != null)
        {
            return b.getOpacity();
        } else
        {
            return -3;
        }
    }

    public volatile boolean getPadding(Rect rect)
    {
        return super.getPadding(rect);
    }

    public volatile int[] getState()
    {
        return super.getState();
    }

    public volatile Region getTransparentRegion()
    {
        return super.getTransparentRegion();
    }

    public void inflate(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset)
    {
        if (b != null)
        {
            b.inflate(resources, xmlpullparser, attributeset);
            return;
        } else
        {
            inflate(resources, xmlpullparser, attributeset, null);
            return;
        }
    }

    public void inflate(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, resources, xmlpullparser, attributeset, theme);
            return;
        } else
        {
            f f1 = c;
            f1.b = new e();
            TypedArray typedarray = android.support.v4.b.a.c.a(resources, theme, attributeset, android.support.b.a.a.a);
            a(typedarray, xmlpullparser);
            typedarray.recycle();
            f1.a = getChangingConfigurations();
            f1.k = true;
            b(resources, xmlpullparser, attributeset, theme);
            d = a(d, f1.c, f1.d);
            return;
        }
    }

    public void invalidateSelf()
    {
        if (b != null)
        {
            b.invalidateSelf();
            return;
        } else
        {
            super.invalidateSelf();
            return;
        }
    }

    public boolean isAutoMirrored()
    {
        if (b != null)
        {
            return android.support.v4.c.a.a.b(b);
        } else
        {
            return c.e;
        }
    }

    public boolean isStateful()
    {
        if (b != null)
        {
            return b.isStateful();
        }
        return super.isStateful() || c != null && c.c != null && c.c.isStateful();
    }

    public volatile void jumpToCurrentState()
    {
        super.jumpToCurrentState();
    }

    public Drawable mutate()
    {
        if (b != null)
        {
            b.mutate();
        } else
        if (!f && super.mutate() == this)
        {
            c = new f(c);
            f = true;
            return this;
        }
        return this;
    }

    protected void onBoundsChange(Rect rect)
    {
        if (b != null)
        {
            b.setBounds(rect);
        }
    }

    protected boolean onStateChange(int ai[])
    {
        if (b != null)
        {
            return b.setState(ai);
        }
        ai = c;
        if (((f) (ai)).c != null && ((f) (ai)).d != null)
        {
            d = a(d, ((f) (ai)).c, ((f) (ai)).d);
            invalidateSelf();
            return true;
        } else
        {
            return false;
        }
    }

    public void scheduleSelf(Runnable runnable, long l)
    {
        if (b != null)
        {
            b.scheduleSelf(runnable, l);
            return;
        } else
        {
            super.scheduleSelf(runnable, l);
            return;
        }
    }

    public void setAlpha(int l)
    {
        if (b != null)
        {
            b.setAlpha(l);
        } else
        if (c.b.getRootAlpha() != l)
        {
            c.b.setRootAlpha(l);
            invalidateSelf();
            return;
        }
    }

    public void setAutoMirrored(boolean flag)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, flag);
            return;
        } else
        {
            c.e = flag;
            return;
        }
    }

    public volatile void setChangingConfigurations(int l)
    {
        super.setChangingConfigurations(l);
    }

    public volatile void setColorFilter(int l, android.graphics.PorterDuff.Mode mode)
    {
        super.setColorFilter(l, mode);
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        if (b != null)
        {
            b.setColorFilter(colorfilter);
            return;
        } else
        {
            e = colorfilter;
            invalidateSelf();
            return;
        }
    }

    public volatile void setFilterBitmap(boolean flag)
    {
        super.setFilterBitmap(flag);
    }

    public volatile void setHotspot(float f1, float f2)
    {
        super.setHotspot(f1, f2);
    }

    public volatile void setHotspotBounds(int l, int i1, int j1, int k1)
    {
        super.setHotspotBounds(l, i1, j1, k1);
    }

    public volatile boolean setState(int ai[])
    {
        return super.setState(ai);
    }

    public void setTint(int l)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, l);
            return;
        } else
        {
            setTintList(ColorStateList.valueOf(l));
            return;
        }
    }

    public void setTintList(ColorStateList colorstatelist)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, colorstatelist);
        } else
        {
            f f1 = c;
            if (f1.c != colorstatelist)
            {
                f1.c = colorstatelist;
                d = a(d, colorstatelist, f1.d);
                invalidateSelf();
                return;
            }
        }
    }

    public void setTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, mode);
        } else
        {
            f f1 = c;
            if (f1.d != mode)
            {
                f1.d = mode;
                d = a(d, f1.c, mode);
                invalidateSelf();
                return;
            }
        }
    }

    public boolean setVisible(boolean flag, boolean flag1)
    {
        if (b != null)
        {
            return b.setVisible(flag, flag1);
        } else
        {
            return super.setVisible(flag, flag1);
        }
    }

    public void unscheduleSelf(Runnable runnable)
    {
        if (b != null)
        {
            b.unscheduleSelf(runnable);
            return;
        } else
        {
            super.unscheduleSelf(runnable);
            return;
        }
    }

    static 
    {
        a = android.graphics.PorterDuff.Mode.SRC_IN;
    }
}
