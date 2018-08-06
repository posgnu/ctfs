// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Hashtable;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            m

class ab
{

    private static final RectF a = new RectF();
    private static Hashtable b = new Hashtable();
    private int c;
    private boolean d;
    private float e;
    private float f;
    private float g;
    private int h[];
    private boolean i;
    private TextPaint j;
    private final TextView k;
    private final Context l;

    ab(TextView textview)
    {
        c = 0;
        d = false;
        e = -1F;
        f = -1F;
        g = -1F;
        h = new int[0];
        i = false;
        k = textview;
        l = k.getContext();
    }

    private int a(RectF rectf)
    {
        int k1 = h.length;
        if (k1 == 0)
        {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int j1 = 0;
        int i1 = 1;
        for (k1--; i1 <= k1;)
        {
            int l1 = (i1 + k1) / 2;
            if (a(h[l1], rectf))
            {
                j1 = i1;
                i1 = l1 + 1;
            } else
            {
                k1 = l1 - 1;
                j1 = k1;
            }
        }

        return h[j1];
    }

    private StaticLayout a(CharSequence charsequence, android.text.Layout.Alignment alignment, int i1)
    {
        float f1;
        float f2;
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            f1 = k.getLineSpacingMultiplier();
            f2 = k.getLineSpacingExtra();
            flag = k.getIncludeFontPadding();
        } else
        {
            f1 = ((Float)a(k, "getLineSpacingMultiplier", Float.valueOf(1.0F))).floatValue();
            f2 = ((Float)a(k, "getLineSpacingExtra", Float.valueOf(0.0F))).floatValue();
            flag = ((Boolean)a(k, "getIncludeFontPadding", Boolean.valueOf(true))).booleanValue();
        }
        return new StaticLayout(charsequence, j, i1, alignment, f1, f2, flag);
    }

    private StaticLayout a(CharSequence charsequence, android.text.Layout.Alignment alignment, int i1, int j1)
    {
        TextDirectionHeuristic textdirectionheuristic = (TextDirectionHeuristic)a(k, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR);
        charsequence = android.text.StaticLayout.Builder.obtain(charsequence, 0, charsequence.length(), j, i1).setAlignment(alignment).setLineSpacing(k.getLineSpacingExtra(), k.getLineSpacingMultiplier()).setIncludePad(k.getIncludeFontPadding()).setBreakStrategy(k.getBreakStrategy()).setHyphenationFrequency(k.getHyphenationFrequency());
        i1 = j1;
        if (j1 == -1)
        {
            i1 = 0x7fffffff;
        }
        return charsequence.setMaxLines(i1).setTextDirection(textdirectionheuristic).build();
    }

    private Object a(Object obj, String s, Object obj1)
    {
        boolean flag = false;
        obj = a(s).invoke(obj, new Object[0]);
        obj1 = obj;
        if (obj != null);
_L2:
        return obj1;
        obj;
        flag = true;
        Log.w("ACTVAutoSizeHelper", (new StringBuilder()).append("Failed to invoke TextView#").append(s).append("() method").toString(), ((Throwable) (obj)));
        if (true) goto _L2; else goto _L1
_L1:
        return null;
        obj;
        if (true)
        {
            if (!flag);
        }
        throw obj;
    }

    private Method a(String s)
    {
        Method method;
        Method method1;
        try
        {
            method1 = (Method)b.get(s);
        }
        catch (Exception exception)
        {
            Log.w("ACTVAutoSizeHelper", (new StringBuilder()).append("Failed to retrieve TextView#").append(s).append("() method").toString(), exception);
            return null;
        }
        method = method1;
        if (method1 != null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        method1 = android/widget/TextView.getDeclaredMethod(s, new Class[0]);
        method = method1;
        if (method1 == null)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        method1.setAccessible(true);
        b.put(s, method1);
        method = method1;
        return method;
    }

    private void a(float f1)
    {
        if (f1 == k.getPaint().getTextSize())
        {
            break MISSING_BLOCK_LABEL_100;
        }
        k.getPaint().setTextSize(f1);
        Method method;
        Exception exception;
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            flag = k.isInLayout();
        } else
        {
            flag = false;
        }
        if (k.getLayout() == null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        d = false;
        method = a("nullLayouts");
        if (method != null)
        {
            try
            {
                method.invoke(k, new Object[0]);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", exception);
            }
        }
        if (!flag)
        {
            k.requestLayout();
        } else
        {
            k.forceLayout();
        }
        k.invalidate();
    }

    private void a(float f1, float f2, float f3)
    {
        if (f1 <= 0.0F)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Minimum auto-size text size (").append(f1).append("px) is less or equal to (0px)").toString());
        }
        if (f2 <= f1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Maximum auto-size text size (").append(f2).append("px) is less or equal to minimum auto-size ").append("text size (").append(f1).append("px)").toString());
        }
        if (f3 <= 0.0F)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("The auto-size step granularity (").append(f3).append("px) is less or equal to (0px)").toString());
        } else
        {
            c = 1;
            f = f1;
            g = f2;
            e = f3;
            i = false;
            return;
        }
    }

    private void a(TypedArray typedarray)
    {
        int j1 = typedarray.length();
        int ai[] = new int[j1];
        if (j1 > 0)
        {
            for (int i1 = 0; i1 < j1; i1++)
            {
                ai[i1] = typedarray.getDimensionPixelSize(i1, -1);
            }

            h = a(ai);
            h();
        }
    }

    private boolean a(int i1, RectF rectf)
    {
        CharSequence charsequence = k.getText();
        Object obj;
        int j1;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            j1 = k.getMaxLines();
        } else
        {
            j1 = -1;
        }
        if (j == null)
        {
            j = new TextPaint();
        } else
        {
            j.reset();
        }
        j.set(k.getPaint());
        j.setTextSize(i1);
        obj = (android.text.Layout.Alignment)a(k, "getLayoutAlignment", android.text.Layout.Alignment.ALIGN_NORMAL);
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            obj = a(charsequence, ((android.text.Layout.Alignment) (obj)), Math.round(rectf.right), j1);
        } else
        {
            obj = a(charsequence, ((android.text.Layout.Alignment) (obj)), Math.round(rectf.right));
        }
        if (j1 != -1 && (((StaticLayout) (obj)).getLineCount() > j1 || ((StaticLayout) (obj)).getLineEnd(((StaticLayout) (obj)).getLineCount() - 1) != charsequence.length()))
        {
            return false;
        }
        return (float)((StaticLayout) (obj)).getHeight() <= rectf.bottom;
    }

    private int[] a(int ai[])
    {
        int k1 = ai.length;
        if (k1 != 0) goto _L2; else goto _L1
_L1:
        return ai;
_L2:
        Arrays.sort(ai);
        ArrayList arraylist = new ArrayList();
        for (int i1 = 0; i1 < k1; i1++)
        {
            int l1 = ai[i1];
            if (l1 > 0 && Collections.binarySearch(arraylist, Integer.valueOf(l1)) < 0)
            {
                arraylist.add(Integer.valueOf(l1));
            }
        }

        if (k1 == arraylist.size())
        {
            continue;
        }
        k1 = arraylist.size();
        int ai1[] = new int[k1];
        int j1 = 0;
        do
        {
            ai = ai1;
            if (j1 >= k1)
            {
                continue;
            }
            ai1[j1] = ((Integer)arraylist.get(j1)).intValue();
            j1++;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private boolean h()
    {
        int i1 = h.length;
        boolean flag;
        if (i1 > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = flag;
        if (i)
        {
            c = 1;
            f = h[0];
            g = h[i1 - 1];
            e = -1F;
        }
        return i;
    }

    private boolean i()
    {
        if (k() && c == 1)
        {
            if (!i || h.length == 0)
            {
                float f1 = Math.round(f);
                int i1 = 1;
                for (; Math.round(e + f1) <= Math.round(g); f1 += e)
                {
                    i1++;
                }

                int ai[] = new int[i1];
                f1 = f;
                for (int j1 = 0; j1 < i1; j1++)
                {
                    ai[j1] = Math.round(f1);
                    f1 += e;
                }

                h = a(ai);
            }
            d = true;
        } else
        {
            d = false;
        }
        return d;
    }

    private void j()
    {
        c = 0;
        f = -1F;
        g = -1F;
        e = -1F;
        h = new int[0];
        d = false;
    }

    private boolean k()
    {
        return !(k instanceof m);
    }

    int a()
    {
        return c;
    }

    void a(int i1)
    {
        if (!k()) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR tableswitch 0 1: default 32
    //                   0 60
    //                   1 65;
           goto _L3 _L4 _L5
_L3:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown auto-size text type: ").append(i1).toString());
_L4:
        j();
_L2:
        return;
_L5:
        android.util.DisplayMetrics displaymetrics = l.getResources().getDisplayMetrics();
        a(TypedValue.applyDimension(2, 12F, displaymetrics), TypedValue.applyDimension(2, 112F, displaymetrics), 1.0F);
        if (i())
        {
            f();
            return;
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    void a(int i1, float f1)
    {
        Resources resources;
        if (l == null)
        {
            resources = Resources.getSystem();
        } else
        {
            resources = l.getResources();
        }
        a(TypedValue.applyDimension(i1, f1, resources.getDisplayMetrics()));
    }

    void a(int i1, int j1, int k1, int l1)
    {
        if (k())
        {
            android.util.DisplayMetrics displaymetrics = l.getResources().getDisplayMetrics();
            a(TypedValue.applyDimension(l1, i1, displaymetrics), TypedValue.applyDimension(l1, j1, displaymetrics), TypedValue.applyDimension(l1, k1, displaymetrics));
            if (i())
            {
                f();
            }
        }
    }

    void a(AttributeSet attributeset, int i1)
    {
        attributeset = l.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.AppCompatTextView, i1, 0);
        if (attributeset.hasValue(android.support.v7.a.a.j.AppCompatTextView_autoSizeTextType))
        {
            c = attributeset.getInt(android.support.v7.a.a.j.AppCompatTextView_autoSizeTextType, 0);
        }
        float f1;
        float f2;
        float f3;
        if (attributeset.hasValue(android.support.v7.a.a.j.AppCompatTextView_autoSizeStepGranularity))
        {
            f1 = attributeset.getDimension(android.support.v7.a.a.j.AppCompatTextView_autoSizeStepGranularity, -1F);
        } else
        {
            f1 = -1F;
        }
        if (attributeset.hasValue(android.support.v7.a.a.j.AppCompatTextView_autoSizeMinTextSize))
        {
            f2 = attributeset.getDimension(android.support.v7.a.a.j.AppCompatTextView_autoSizeMinTextSize, -1F);
        } else
        {
            f2 = -1F;
        }
        if (attributeset.hasValue(android.support.v7.a.a.j.AppCompatTextView_autoSizeMaxTextSize))
        {
            f3 = attributeset.getDimension(android.support.v7.a.a.j.AppCompatTextView_autoSizeMaxTextSize, -1F);
        } else
        {
            f3 = -1F;
        }
        if (attributeset.hasValue(android.support.v7.a.a.j.AppCompatTextView_autoSizePresetSizes))
        {
            i1 = attributeset.getResourceId(android.support.v7.a.a.j.AppCompatTextView_autoSizePresetSizes, 0);
            if (i1 > 0)
            {
                TypedArray typedarray = attributeset.getResources().obtainTypedArray(i1);
                a(typedarray);
                typedarray.recycle();
            }
        }
        attributeset.recycle();
        if (k())
        {
            if (c == 1)
            {
                if (!i)
                {
                    attributeset = l.getResources().getDisplayMetrics();
                    float f4 = f2;
                    if (f2 == -1F)
                    {
                        f4 = TypedValue.applyDimension(2, 12F, attributeset);
                    }
                    f2 = f3;
                    if (f3 == -1F)
                    {
                        f2 = TypedValue.applyDimension(2, 112F, attributeset);
                    }
                    f3 = f1;
                    if (f1 == -1F)
                    {
                        f3 = 1.0F;
                    }
                    a(f4, f2, f3);
                }
                i();
            }
            return;
        } else
        {
            c = 0;
            return;
        }
    }

    void a(int ai[], int i1)
    {
        int j1;
        int k1;
        j1 = 0;
        if (!k())
        {
            break MISSING_BLOCK_LABEL_149;
        }
        k1 = ai.length;
        if (k1 <= 0) goto _L2; else goto _L1
_L1:
        int ai2[] = new int[k1];
        if (i1 != 0) goto _L4; else goto _L3
_L3:
        int ai1[] = Arrays.copyOf(ai, k1);
_L6:
        h = a(ai1);
        if (!h())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("None of the preset sizes is valid: ").append(Arrays.toString(ai)).toString());
        }
        break; /* Loop/switch isn't completed */
_L4:
        android.util.DisplayMetrics displaymetrics = l.getResources().getDisplayMetrics();
        do
        {
            ai1 = ai2;
            if (j1 >= k1)
            {
                break;
            }
            ai2[j1] = Math.round(TypedValue.applyDimension(i1, ai[j1], displaymetrics));
            j1++;
        } while (true);
        if (true) goto _L6; else goto _L5
_L2:
        i = false;
_L5:
        if (i())
        {
            f();
        }
    }

    int b()
    {
        return Math.round(e);
    }

    int c()
    {
        return Math.round(f);
    }

    int d()
    {
        return Math.round(g);
    }

    int[] e()
    {
        return h;
    }

    void f()
    {
        if (g()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!d)
        {
            break; /* Loop/switch isn't completed */
        }
        if (k.getMeasuredHeight() <= 0 || k.getMeasuredWidth() <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        int i1;
        int j1;
        if (((Boolean)a(k, "getHorizontallyScrolling", Boolean.valueOf(false))).booleanValue())
        {
            i1 = 0x100000;
        } else
        {
            i1 = k.getMeasuredWidth() - k.getTotalPaddingLeft() - k.getTotalPaddingRight();
        }
        j1 = k.getHeight() - k.getCompoundPaddingBottom() - k.getCompoundPaddingTop();
        if (i1 <= 0 || j1 <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        synchronized (a)
        {
            a.setEmpty();
            a.right = i1;
            a.bottom = j1;
            float f1 = a(a);
            if (f1 != k.getTextSize())
            {
                a(0, f1);
            }
        }
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        d = true;
        return;
        exception;
        rectf;
        JVM INSTR monitorexit ;
        throw exception;
    }

    boolean g()
    {
        return k() && c != 0;
    }

}
