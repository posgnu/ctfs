// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package android.support.v7.widget:
//            ab, l, au, z, 
//            aw

class y
{

    final TextView a;
    private au b;
    private au c;
    private au d;
    private au e;
    private final ab f;
    private int g;
    private Typeface h;

    y(TextView textview)
    {
        g = 0;
        a = textview;
        f = new ab(a);
    }

    protected static au a(Context context, l l1, int i)
    {
        context = l1.b(context, i);
        if (context != null)
        {
            l1 = new au();
            l1.d = true;
            l1.a = context;
            return l1;
        } else
        {
            return null;
        }
    }

    static y a(TextView textview)
    {
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            return new z(textview);
        } else
        {
            return new y(textview);
        }
    }

    private void a(Context context, aw aw1)
    {
        g = aw1.a(android.support.v7.a.a.j.TextAppearance_android_textStyle, g);
        if (aw1.g(android.support.v7.a.a.j.TextAppearance_android_fontFamily) || aw1.g(android.support.v7.a.a.j.TextAppearance_fontFamily))
        {
            h = null;
            int i;
            if (aw1.g(android.support.v7.a.a.j.TextAppearance_android_fontFamily))
            {
                i = android.support.v7.a.a.j.TextAppearance_android_fontFamily;
            } else
            {
                i = android.support.v7.a.a.j.TextAppearance_fontFamily;
            }
            if (!context.isRestricted())
            {
                try
                {
                    h = aw1.a(i, g, a);
                }
                // Misplaced declaration of an exception variable
                catch (Context context) { }
                // Misplaced declaration of an exception variable
                catch (Context context) { }
            }
            if (h == null)
            {
                h = Typeface.create(aw1.d(i), g);
            }
        }
    }

    private void b(int i, float f1)
    {
        f.a(i, f1);
    }

    void a()
    {
        if (b != null || c != null || d != null || e != null)
        {
            Drawable adrawable[] = a.getCompoundDrawables();
            a(adrawable[0], b);
            a(adrawable[1], c);
            a(adrawable[2], d);
            a(adrawable[3], e);
        }
    }

    void a(int i)
    {
        f.a(i);
    }

    void a(int i, float f1)
    {
        if (android.os.Build.VERSION.SDK_INT < 26 && !c())
        {
            b(i, f1);
        }
    }

    void a(int i, int j, int k, int i1)
    {
        f.a(i, j, k, i1);
    }

    void a(Context context, int i)
    {
        aw aw1 = aw.a(context, i, android.support.v7.a.a.j.TextAppearance);
        if (aw1.g(android.support.v7.a.a.j.TextAppearance_textAllCaps))
        {
            a(aw1.a(android.support.v7.a.a.j.TextAppearance_textAllCaps, false));
        }
        if (android.os.Build.VERSION.SDK_INT < 23 && aw1.g(android.support.v7.a.a.j.TextAppearance_android_textColor))
        {
            android.content.res.ColorStateList colorstatelist = aw1.e(android.support.v7.a.a.j.TextAppearance_android_textColor);
            if (colorstatelist != null)
            {
                a.setTextColor(colorstatelist);
            }
        }
        a(context, aw1);
        aw1.a();
        if (h != null)
        {
            a.setTypeface(h, g);
        }
    }

    final void a(Drawable drawable, au au1)
    {
        if (drawable != null && au1 != null)
        {
            l.a(drawable, au1, a.getDrawableState());
        }
    }

    void a(AttributeSet attributeset, int i)
    {
label0:
        {
            android.content.res.ColorStateList colorstatelist = null;
            android.content.res.ColorStateList colorstatelist1 = null;
            Context context = a.getContext();
            Object obj = l.a();
            Object obj1 = aw.a(context, attributeset, android.support.v7.a.a.j.AppCompatTextHelper, i, 0);
            int j = ((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_textAppearance, -1);
            if (((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableLeft))
            {
                b = a(context, ((l) (obj)), ((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableLeft, 0));
            }
            if (((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableTop))
            {
                c = a(context, ((l) (obj)), ((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableTop, 0));
            }
            if (((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableRight))
            {
                d = a(context, ((l) (obj)), ((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableRight, 0));
            }
            if (((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableBottom))
            {
                e = a(context, ((l) (obj)), ((aw) (obj1)).g(android.support.v7.a.a.j.AppCompatTextHelper_android_drawableBottom, 0));
            }
            ((aw) (obj1)).a();
            boolean flag3 = a.getTransformationMethod() instanceof PasswordTransformationMethod;
            boolean flag1;
            if (j != -1)
            {
                Object obj2 = aw.a(context, j, android.support.v7.a.a.j.TextAppearance);
                android.content.res.ColorStateList colorstatelist2;
                if (!flag3 && ((aw) (obj2)).g(android.support.v7.a.a.j.TextAppearance_textAllCaps))
                {
                    flag1 = ((aw) (obj2)).a(android.support.v7.a.a.j.TextAppearance_textAllCaps, false);
                    j = 1;
                } else
                {
                    j = 0;
                    flag1 = false;
                }
                a(context, ((aw) (obj2)));
                if (android.os.Build.VERSION.SDK_INT < 23)
                {
                    aw aw1;
                    boolean flag;
                    boolean flag2;
                    if (((aw) (obj2)).g(android.support.v7.a.a.j.TextAppearance_android_textColor))
                    {
                        obj = ((aw) (obj2)).e(android.support.v7.a.a.j.TextAppearance_android_textColor);
                    } else
                    {
                        obj = null;
                    }
                    if (((aw) (obj2)).g(android.support.v7.a.a.j.TextAppearance_android_textColorHint))
                    {
                        colorstatelist = ((aw) (obj2)).e(android.support.v7.a.a.j.TextAppearance_android_textColorHint);
                    } else
                    {
                        colorstatelist = null;
                    }
                    obj1 = obj;
                    colorstatelist2 = colorstatelist;
                    if (((aw) (obj2)).g(android.support.v7.a.a.j.TextAppearance_android_textColorLink))
                    {
                        colorstatelist1 = ((aw) (obj2)).e(android.support.v7.a.a.j.TextAppearance_android_textColorLink);
                        colorstatelist2 = colorstatelist;
                        obj1 = obj;
                    }
                } else
                {
                    colorstatelist2 = null;
                    obj1 = null;
                }
                ((aw) (obj2)).a();
                obj = colorstatelist2;
                colorstatelist = colorstatelist1;
            } else
            {
                obj = null;
                obj1 = null;
                j = 0;
                flag1 = false;
            }
            aw1 = aw.a(context, attributeset, android.support.v7.a.a.j.TextAppearance, i, 0);
            flag = j;
            flag2 = flag1;
            if (!flag3)
            {
                flag = j;
                flag2 = flag1;
                if (aw1.g(android.support.v7.a.a.j.TextAppearance_textAllCaps))
                {
                    flag2 = aw1.a(android.support.v7.a.a.j.TextAppearance_textAllCaps, false);
                    flag = true;
                }
            }
            colorstatelist2 = ((android.content.res.ColorStateList) (obj1));
            obj2 = colorstatelist;
            colorstatelist1 = ((android.content.res.ColorStateList) (obj));
            if (android.os.Build.VERSION.SDK_INT < 23)
            {
                if (aw1.g(android.support.v7.a.a.j.TextAppearance_android_textColor))
                {
                    obj1 = aw1.e(android.support.v7.a.a.j.TextAppearance_android_textColor);
                }
                if (aw1.g(android.support.v7.a.a.j.TextAppearance_android_textColorHint))
                {
                    obj = aw1.e(android.support.v7.a.a.j.TextAppearance_android_textColorHint);
                }
                colorstatelist2 = ((android.content.res.ColorStateList) (obj1));
                obj2 = colorstatelist;
                colorstatelist1 = ((android.content.res.ColorStateList) (obj));
                if (aw1.g(android.support.v7.a.a.j.TextAppearance_android_textColorLink))
                {
                    obj2 = aw1.e(android.support.v7.a.a.j.TextAppearance_android_textColorLink);
                    colorstatelist1 = ((android.content.res.ColorStateList) (obj));
                    colorstatelist2 = ((android.content.res.ColorStateList) (obj1));
                }
            }
            a(context, aw1);
            aw1.a();
            if (colorstatelist2 != null)
            {
                a.setTextColor(colorstatelist2);
            }
            if (colorstatelist1 != null)
            {
                a.setHintTextColor(colorstatelist1);
            }
            if (obj2 != null)
            {
                a.setLinkTextColor(((android.content.res.ColorStateList) (obj2)));
            }
            if (!flag3 && flag)
            {
                a(flag2);
            }
            if (h != null)
            {
                a.setTypeface(h, g);
            }
            f.a(attributeset, i);
            if (android.os.Build.VERSION.SDK_INT >= 26 && f.a() != 0)
            {
                attributeset = f.e();
                if (attributeset.length > 0)
                {
                    if ((float)a.getAutoSizeStepGranularity() == -1F)
                    {
                        break label0;
                    }
                    a.setAutoSizeTextTypeUniformWithConfiguration(f.c(), f.d(), f.b(), 0);
                }
            }
            return;
        }
        a.setAutoSizeTextTypeUniformWithPresetSizes(attributeset, 0);
    }

    void a(boolean flag)
    {
        a.setAllCaps(flag);
    }

    void a(boolean flag, int i, int j, int k, int i1)
    {
        if (android.os.Build.VERSION.SDK_INT < 26)
        {
            b();
        }
    }

    void a(int ai[], int i)
    {
        f.a(ai, i);
    }

    void b()
    {
        f.f();
    }

    boolean c()
    {
        return f.g();
    }

    int d()
    {
        return f.a();
    }

    int e()
    {
        return f.b();
    }

    int f()
    {
        return f.c();
    }

    int g()
    {
        return f.d();
    }

    int[] h()
    {
        return f.e();
    }
}
