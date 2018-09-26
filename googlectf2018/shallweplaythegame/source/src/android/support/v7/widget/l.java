// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.b.a.i;
import android.support.v4.c.a.a;
import android.support.v4.g.f;
import android.support.v4.g.g;
import android.support.v7.b.a.b;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package android.support.v7.widget:
//            ae, ar, au, bb

public final class l
{
    private static class a
        implements c
    {

        public Drawable a(Context context, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
        {
            try
            {
                context = android.support.b.a.c.a(context, context.getResources(), xmlpullparser, attributeset, theme);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", context);
                return null;
            }
            return context;
        }

        a()
        {
        }
    }

    private static class b extends g
    {

        private static int b(int i1, android.graphics.PorterDuff.Mode mode)
        {
            return (i1 + 31) * 31 + mode.hashCode();
        }

        PorterDuffColorFilter a(int i1, android.graphics.PorterDuff.Mode mode)
        {
            return (PorterDuffColorFilter)a(Integer.valueOf(b(i1, mode)));
        }

        PorterDuffColorFilter a(int i1, android.graphics.PorterDuff.Mode mode, PorterDuffColorFilter porterduffcolorfilter)
        {
            return (PorterDuffColorFilter)a(Integer.valueOf(b(i1, mode)), porterduffcolorfilter);
        }

        public b(int i1)
        {
            super(i1);
        }
    }

    private static interface c
    {

        public abstract Drawable a(Context context, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme);
    }

    private static class d
        implements c
    {

        public Drawable a(Context context, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
        {
            try
            {
                context = android.support.b.a.i.a(context.getResources(), xmlpullparser, attributeset, theme);
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", context);
                return null;
            }
            return context;
        }

        d()
        {
        }
    }


    private static final android.graphics.PorterDuff.Mode a;
    private static l b;
    private static final b c = new b(6);
    private static final int d[];
    private static final int e[];
    private static final int f[];
    private static final int g[];
    private static final int h[];
    private static final int i[];
    private WeakHashMap j;
    private android.support.v4.g.a k;
    private android.support.v4.g.l l;
    private final Object m = new Object();
    private final WeakHashMap n = new WeakHashMap(0);
    private TypedValue o;
    private boolean p;

    public l()
    {
    }

    private static long a(TypedValue typedvalue)
    {
        return (long)typedvalue.assetCookie << 32 | (long)typedvalue.data;
    }

    static android.graphics.PorterDuff.Mode a(int i1)
    {
        android.graphics.PorterDuff.Mode mode = null;
        if (i1 == android.support.v7.a.a.e.abc_switch_thumb_material)
        {
            mode = android.graphics.PorterDuff.Mode.MULTIPLY;
        }
        return mode;
    }

    public static PorterDuffColorFilter a(int i1, android.graphics.PorterDuff.Mode mode)
    {
        PorterDuffColorFilter porterduffcolorfilter1 = c.a(i1, mode);
        PorterDuffColorFilter porterduffcolorfilter = porterduffcolorfilter1;
        if (porterduffcolorfilter1 == null)
        {
            porterduffcolorfilter = new PorterDuffColorFilter(i1, mode);
            c.a(i1, mode, porterduffcolorfilter);
        }
        return porterduffcolorfilter;
    }

    private static PorterDuffColorFilter a(ColorStateList colorstatelist, android.graphics.PorterDuff.Mode mode, int ai[])
    {
        if (colorstatelist == null || mode == null)
        {
            return null;
        } else
        {
            return a(colorstatelist.getColorForState(ai, 0), mode);
        }
    }

    private Drawable a(Context context, int i1, boolean flag, Drawable drawable)
    {
        Object obj = b(context, i1);
        if (obj != null)
        {
            context = drawable;
            if (android.support.v7.widget.ae.b(drawable))
            {
                context = drawable.mutate();
            }
            context = android.support.v4.c.a.a.f(context);
            android.support.v4.c.a.a.a(context, ((ColorStateList) (obj)));
            drawable = a(i1);
            obj = context;
            if (drawable != null)
            {
                android.support.v4.c.a.a.a(context, drawable);
                obj = context;
            }
        } else
        {
            if (i1 == android.support.v7.a.a.e.abc_seekbar_track_material)
            {
                obj = (LayerDrawable)drawable;
                a(((LayerDrawable) (obj)).findDrawableByLayerId(0x1020000), android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlNormal), a);
                a(((LayerDrawable) (obj)).findDrawableByLayerId(0x102000f), android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlNormal), a);
                a(((LayerDrawable) (obj)).findDrawableByLayerId(0x102000d), android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlActivated), a);
                return drawable;
            }
            if (i1 == android.support.v7.a.a.e.abc_ratingbar_material || i1 == android.support.v7.a.a.e.abc_ratingbar_indicator_material || i1 == android.support.v7.a.a.e.abc_ratingbar_small_material)
            {
                obj = (LayerDrawable)drawable;
                a(((LayerDrawable) (obj)).findDrawableByLayerId(0x1020000), ar.c(context, android.support.v7.a.a.a.colorControlNormal), a);
                a(((LayerDrawable) (obj)).findDrawableByLayerId(0x102000f), android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlActivated), a);
                a(((LayerDrawable) (obj)).findDrawableByLayerId(0x102000d), android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlActivated), a);
                return drawable;
            }
            obj = drawable;
            if (!a(context, i1, drawable))
            {
                obj = drawable;
                if (flag)
                {
                    return null;
                }
            }
        }
        return ((Drawable) (obj));
    }

    private Drawable a(Context context, long l1)
    {
        Object obj = m;
        obj;
        JVM INSTR monitorenter ;
        f f1 = (f)n.get(context);
        if (f1 != null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        obj;
        JVM INSTR monitorexit ;
        return null;
        Object obj1 = (WeakReference)f1.a(l1);
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        obj1 = (android.graphics.drawable.Drawable.ConstantState)((WeakReference) (obj1)).get();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        context = ((android.graphics.drawable.Drawable.ConstantState) (obj1)).newDrawable(context.getResources());
        obj;
        JVM INSTR monitorexit ;
        return context;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
        f1.b(l1);
        obj;
        JVM INSTR monitorexit ;
        return null;
    }

    public static l a()
    {
        if (b == null)
        {
            b = new l();
            a(b);
        }
        return b;
    }

    private void a(Context context, int i1, ColorStateList colorstatelist)
    {
        if (j == null)
        {
            j = new WeakHashMap();
        }
        android.support.v4.g.l l2 = (android.support.v4.g.l)j.get(context);
        android.support.v4.g.l l1 = l2;
        if (l2 == null)
        {
            l1 = new android.support.v4.g.l();
            j.put(context, l1);
        }
        l1.c(i1, colorstatelist);
    }

    private static void a(Drawable drawable, int i1, android.graphics.PorterDuff.Mode mode)
    {
        Drawable drawable1 = drawable;
        if (android.support.v7.widget.ae.b(drawable))
        {
            drawable1 = drawable.mutate();
        }
        drawable = mode;
        if (mode == null)
        {
            drawable = a;
        }
        drawable1.setColorFilter(a(i1, ((android.graphics.PorterDuff.Mode) (drawable))));
    }

    static void a(Drawable drawable, au au1, int ai[])
    {
        if (android.support.v7.widget.ae.b(drawable) && drawable.mutate() != drawable)
        {
            Log.d("AppCompatDrawableManager", "Mutated drawable is not the same instance as the input.");
        } else
        {
            if (au1.d || au1.c)
            {
                ColorStateList colorstatelist;
                if (au1.d)
                {
                    colorstatelist = au1.a;
                } else
                {
                    colorstatelist = null;
                }
                if (au1.c)
                {
                    au1 = au1.b;
                } else
                {
                    au1 = a;
                }
                drawable.setColorFilter(a(colorstatelist, ((android.graphics.PorterDuff.Mode) (au1)), ai));
            } else
            {
                drawable.clearColorFilter();
            }
            if (android.os.Build.VERSION.SDK_INT <= 23)
            {
                drawable.invalidateSelf();
                return;
            }
        }
    }

    private static void a(l l1)
    {
        if (android.os.Build.VERSION.SDK_INT < 24)
        {
            l1.a("vector", ((c) (new d())));
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                l1.a("animated-vector", ((c) (new a())));
            }
        }
    }

    private void a(String s, c c1)
    {
        if (k == null)
        {
            k = new android.support.v4.g.a();
        }
        k.put(s, c1);
    }

    static boolean a(Context context, int i1, Drawable drawable)
    {
        android.graphics.PorterDuff.Mode mode = a;
        int j1;
        boolean flag;
        if (a(d, i1))
        {
            j1 = android.support.v7.a.a.a.colorControlNormal;
            flag = true;
            i1 = -1;
        } else
        if (a(f, i1))
        {
            j1 = android.support.v7.a.a.a.colorControlActivated;
            flag = true;
            i1 = -1;
        } else
        if (a(g, i1))
        {
            mode = android.graphics.PorterDuff.Mode.MULTIPLY;
            flag = true;
            j1 = 0x1010031;
            i1 = -1;
        } else
        if (i1 == android.support.v7.a.a.e.abc_list_divider_mtrl_alpha)
        {
            j1 = 0x1010030;
            i1 = Math.round(40.8F);
            flag = true;
        } else
        if (i1 == android.support.v7.a.a.e.abc_dialog_material_background)
        {
            j1 = 0x1010031;
            flag = true;
            i1 = -1;
        } else
        {
            i1 = -1;
            j1 = 0;
            flag = false;
        }
        if (flag)
        {
            Drawable drawable1 = drawable;
            if (android.support.v7.widget.ae.b(drawable))
            {
                drawable1 = drawable.mutate();
            }
            drawable1.setColorFilter(a(android.support.v7.widget.ar.a(context, j1), mode));
            if (i1 != -1)
            {
                drawable1.setAlpha(i1);
            }
            return true;
        } else
        {
            return false;
        }
    }

    private boolean a(Context context, long l1, Drawable drawable)
    {
        android.graphics.drawable.Drawable.ConstantState constantstate;
        constantstate = drawable.getConstantState();
        if (constantstate == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        Object obj = m;
        obj;
        JVM INSTR monitorenter ;
        f f1 = (f)n.get(context);
        drawable = f1;
        if (f1 != null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        drawable = new f();
        n.put(context, drawable);
        drawable.b(l1, new WeakReference(constantstate));
        obj;
        JVM INSTR monitorexit ;
        return true;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
        return false;
    }

    private static boolean a(Drawable drawable)
    {
        return (drawable instanceof i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private static boolean a(int ai[], int i1)
    {
        boolean flag1 = false;
        int k1 = ai.length;
        int j1 = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (j1 < k1)
                {
                    if (ai[j1] != i1)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j1++;
        } while (true);
    }

    private ColorStateList b(Context context)
    {
        return f(context, android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorButtonNormal));
    }

    private ColorStateList c(Context context)
    {
        return f(context, 0);
    }

    private Drawable c(Context context, int i1)
    {
        if (o == null)
        {
            o = new TypedValue();
        }
        TypedValue typedvalue = o;
        context.getResources().getValue(i1, typedvalue, true);
        long l1 = a(typedvalue);
        Object obj = a(context, l1);
        Object obj1;
        if (obj != null)
        {
            obj1 = obj;
        } else
        {
            if (i1 == android.support.v7.a.a.e.abc_cab_background_top_material)
            {
                obj = new LayerDrawable(new Drawable[] {
                    a(context, android.support.v7.a.a.e.abc_cab_background_internal_bg), a(context, android.support.v7.a.a.e.abc_cab_background_top_mtrl_alpha)
                });
            }
            obj1 = obj;
            if (obj != null)
            {
                ((Drawable) (obj)).setChangingConfigurations(typedvalue.changingConfigurations);
                a(context, l1, ((Drawable) (obj)));
                return ((Drawable) (obj));
            }
        }
        return ((Drawable) (obj1));
    }

    private ColorStateList d(Context context)
    {
        return f(context, android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorAccent));
    }

    private Drawable d(Context context, int i1)
    {
        if (k == null || k.isEmpty())
        {
            break MISSING_BLOCK_LABEL_384;
        }
        if (l == null) goto _L2; else goto _L1
_L1:
        Object obj = (String)l.a(i1);
        if (!"appcompat_skip_skip".equals(obj) && (obj == null || k.get(obj) != null)) goto _L4; else goto _L3
_L3:
        obj = null;
_L8:
        return ((Drawable) (obj));
_L2:
        l = new android.support.v4.g.l();
_L4:
        Drawable drawable;
        Drawable drawable1;
        TypedValue typedvalue;
        long l1;
        if (o == null)
        {
            o = new TypedValue();
        }
        typedvalue = o;
        obj = context.getResources();
        ((Resources) (obj)).getValue(i1, typedvalue, true);
        l1 = a(typedvalue);
        drawable1 = a(context, l1);
        if (drawable1 != null)
        {
            return drawable1;
        }
        drawable = drawable1;
        if (typedvalue.string == null)
        {
            break MISSING_BLOCK_LABEL_252;
        }
        drawable = drawable1;
        if (!typedvalue.string.toString().endsWith(".xml"))
        {
            break MISSING_BLOCK_LABEL_252;
        }
        drawable = drawable1;
        android.content.res.XmlResourceParser xmlresourceparser = ((Resources) (obj)).getXml(i1);
        drawable = drawable1;
        AttributeSet attributeset = Xml.asAttributeSet(xmlresourceparser);
_L6:
        drawable = drawable1;
        int j1 = xmlresourceparser.next();
        if (j1 != 2 && j1 != 1) goto _L6; else goto _L5
_L5:
        if (j1 == 2)
        {
            break; /* Loop/switch isn't completed */
        }
        drawable = drawable1;
        try
        {
            throw new XmlPullParserException("No start tag found");
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("AppCompatDrawableManager", "Exception while inflating drawable", context);
        }
        context = drawable;
_L9:
        obj = context;
        if (context == null)
        {
            l.c(i1, "appcompat_skip_skip");
            return context;
        }
        if (true) goto _L8; else goto _L7
_L7:
        drawable = drawable1;
        obj = xmlresourceparser.getName();
        drawable = drawable1;
        l.c(i1, obj);
        drawable = drawable1;
        c c1 = (c)k.get(obj);
        obj = drawable1;
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_345;
        }
        drawable = drawable1;
        obj = c1.a(context, xmlresourceparser, attributeset, context.getTheme());
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_379;
        }
        drawable = ((Drawable) (obj));
        ((Drawable) (obj)).setChangingConfigurations(typedvalue.changingConfigurations);
        drawable = ((Drawable) (obj));
        boolean flag = a(context, l1, ((Drawable) (obj)));
        if (!flag);
        context = ((Context) (obj));
          goto _L9
        return null;
    }

    private ColorStateList e(Context context)
    {
        int ai[][] = new int[3][];
        int ai1[] = new int[3];
        ColorStateList colorstatelist = android.support.v7.widget.ar.b(context, android.support.v7.a.a.a.colorSwitchThumbNormal);
        if (colorstatelist != null && colorstatelist.isStateful())
        {
            ai[0] = android.support.v7.widget.ar.a;
            ai1[0] = colorstatelist.getColorForState(ai[0], 0);
            ai[1] = ar.e;
            ai1[1] = android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlActivated);
            ai[2] = ar.h;
            ai1[2] = colorstatelist.getDefaultColor();
        } else
        {
            ai[0] = android.support.v7.widget.ar.a;
            ai1[0] = ar.c(context, android.support.v7.a.a.a.colorSwitchThumbNormal);
            ai[1] = ar.e;
            ai1[1] = android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlActivated);
            ai[2] = ar.h;
            ai1[2] = android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorSwitchThumbNormal);
        }
        return new ColorStateList(ai, ai1);
    }

    private ColorStateList e(Context context, int i1)
    {
        if (j != null)
        {
            context = (android.support.v4.g.l)j.get(context);
            if (context != null)
            {
                return (ColorStateList)context.a(i1);
            } else
            {
                return null;
            }
        } else
        {
            return null;
        }
    }

    private ColorStateList f(Context context, int i1)
    {
        int l1 = android.support.v7.widget.ar.a(context, android.support.v7.a.a.a.colorControlHighlight);
        int j1 = ar.c(context, android.support.v7.a.a.a.colorButtonNormal);
        context = android.support.v7.widget.ar.a;
        int ai[] = ar.d;
        int k1 = android.support.v4.c.a.a(l1, i1);
        int ai1[] = android.support.v7.widget.ar.b;
        l1 = android.support.v4.c.a.a(l1, i1);
        return new ColorStateList(new int[][] {
            context, ai, ai1, ar.h
        }, new int[] {
            j1, k1, l1, i1
        });
    }

    private void f(Context context)
    {
        if (!p)
        {
            p = true;
            context = a(context, android.support.v7.a.a.e.abc_vector_test);
            if (context == null || !a(context))
            {
                p = false;
                throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
            }
        }
    }

    public Drawable a(Context context, int i1)
    {
        return a(context, i1, false);
    }

    Drawable a(Context context, int i1, boolean flag)
    {
        f(context);
        Drawable drawable1 = d(context, i1);
        Drawable drawable = drawable1;
        if (drawable1 == null)
        {
            drawable = c(context, i1);
        }
        drawable1 = drawable;
        if (drawable == null)
        {
            drawable1 = android.support.v4.b.a.a(context, i1);
        }
        drawable = drawable1;
        if (drawable1 != null)
        {
            drawable = a(context, i1, flag, drawable1);
        }
        if (drawable != null)
        {
            android.support.v7.widget.ae.a(drawable);
        }
        return drawable;
    }

    Drawable a(Context context, bb bb1, int i1)
    {
        Drawable drawable1 = d(context, i1);
        Drawable drawable = drawable1;
        if (drawable1 == null)
        {
            drawable = bb1.a(i1);
        }
        if (drawable != null)
        {
            return a(context, i1, false, drawable);
        } else
        {
            return null;
        }
    }

    public void a(Context context)
    {
        Object obj = m;
        obj;
        JVM INSTR monitorenter ;
        context = (f)n.get(context);
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        context.c();
        obj;
        JVM INSTR monitorexit ;
        return;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
    }

    ColorStateList b(Context context, int i1)
    {
        ColorStateList colorstatelist;
        ColorStateList colorstatelist1;
        colorstatelist = e(context, i1);
        colorstatelist1 = colorstatelist;
        if (colorstatelist != null) goto _L2; else goto _L1
_L1:
        if (i1 != android.support.v7.a.a.e.abc_edit_text_material) goto _L4; else goto _L3
_L3:
        colorstatelist = android.support.v7.b.a.b.a(context, android.support.v7.a.a.c.abc_tint_edittext);
_L6:
        colorstatelist1 = colorstatelist;
        if (colorstatelist != null)
        {
            a(context, i1, colorstatelist);
            colorstatelist1 = colorstatelist;
        }
_L2:
        return colorstatelist1;
_L4:
        if (i1 == android.support.v7.a.a.e.abc_switch_track_mtrl_alpha)
        {
            colorstatelist = android.support.v7.b.a.b.a(context, android.support.v7.a.a.c.abc_tint_switch_track);
        } else
        if (i1 == android.support.v7.a.a.e.abc_switch_thumb_material)
        {
            colorstatelist = e(context);
        } else
        if (i1 == android.support.v7.a.a.e.abc_btn_default_mtrl_shape)
        {
            colorstatelist = b(context);
        } else
        if (i1 == android.support.v7.a.a.e.abc_btn_borderless_material)
        {
            colorstatelist = c(context);
        } else
        if (i1 == android.support.v7.a.a.e.abc_btn_colored_material)
        {
            colorstatelist = d(context);
        } else
        if (i1 == android.support.v7.a.a.e.abc_spinner_mtrl_am_alpha || i1 == android.support.v7.a.a.e.abc_spinner_textfield_background_material)
        {
            colorstatelist = android.support.v7.b.a.b.a(context, android.support.v7.a.a.c.abc_tint_spinner);
        } else
        if (a(e, i1))
        {
            colorstatelist = android.support.v7.widget.ar.b(context, android.support.v7.a.a.a.colorControlNormal);
        } else
        if (a(h, i1))
        {
            colorstatelist = android.support.v7.b.a.b.a(context, android.support.v7.a.a.c.abc_tint_default);
        } else
        if (a(i, i1))
        {
            colorstatelist = android.support.v7.b.a.b.a(context, android.support.v7.a.a.c.abc_tint_btn_checkable);
        } else
        if (i1 == android.support.v7.a.a.e.abc_seekbar_thumb_material)
        {
            colorstatelist = android.support.v7.b.a.b.a(context, android.support.v7.a.a.c.abc_tint_seek_thumb);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    static 
    {
        a = android.graphics.PorterDuff.Mode.SRC_IN;
        d = (new int[] {
            android.support.v7.a.a.e.abc_textfield_search_default_mtrl_alpha, android.support.v7.a.a.e.abc_textfield_default_mtrl_alpha, android.support.v7.a.a.e.abc_ab_share_pack_mtrl_alpha
        });
        e = (new int[] {
            android.support.v7.a.a.e.abc_ic_commit_search_api_mtrl_alpha, android.support.v7.a.a.e.abc_seekbar_tick_mark_material, android.support.v7.a.a.e.abc_ic_menu_share_mtrl_alpha, android.support.v7.a.a.e.abc_ic_menu_copy_mtrl_am_alpha, android.support.v7.a.a.e.abc_ic_menu_cut_mtrl_alpha, android.support.v7.a.a.e.abc_ic_menu_selectall_mtrl_alpha, android.support.v7.a.a.e.abc_ic_menu_paste_mtrl_am_alpha
        });
        f = (new int[] {
            android.support.v7.a.a.e.abc_textfield_activated_mtrl_alpha, android.support.v7.a.a.e.abc_textfield_search_activated_mtrl_alpha, android.support.v7.a.a.e.abc_cab_background_top_mtrl_alpha, android.support.v7.a.a.e.abc_text_cursor_material, android.support.v7.a.a.e.abc_text_select_handle_left_mtrl_dark, android.support.v7.a.a.e.abc_text_select_handle_middle_mtrl_dark, android.support.v7.a.a.e.abc_text_select_handle_right_mtrl_dark, android.support.v7.a.a.e.abc_text_select_handle_left_mtrl_light, android.support.v7.a.a.e.abc_text_select_handle_middle_mtrl_light, android.support.v7.a.a.e.abc_text_select_handle_right_mtrl_light
        });
        g = (new int[] {
            android.support.v7.a.a.e.abc_popup_background_mtrl_mult, android.support.v7.a.a.e.abc_cab_background_internal_bg, android.support.v7.a.a.e.abc_menu_hardkey_panel_mtrl_mult
        });
        h = (new int[] {
            android.support.v7.a.a.e.abc_tab_indicator_material, android.support.v7.a.a.e.abc_textfield_search_material
        });
        i = (new int[] {
            android.support.v7.a.a.e.abc_btn_check_material, android.support.v7.a.a.e.abc_btn_radio_material
        });
    }
}
