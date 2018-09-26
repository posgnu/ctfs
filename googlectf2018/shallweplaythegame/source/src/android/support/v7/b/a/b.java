// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.b.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a;
import android.support.v7.widget.l;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;

// Referenced classes of package android.support.v7.b.a:
//            a

public final class b
{
    private static class a
    {

        final ColorStateList a;
        final Configuration b;

        a(ColorStateList colorstatelist, Configuration configuration)
        {
            a = colorstatelist;
            b = configuration;
        }
    }


    private static final ThreadLocal a = new ThreadLocal();
    private static final WeakHashMap b = new WeakHashMap(0);
    private static final Object c = new Object();

    public static ColorStateList a(Context context, int i)
    {
        ColorStateList colorstatelist;
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            colorstatelist = context.getColorStateList(i);
        } else
        {
            ColorStateList colorstatelist2 = d(context, i);
            colorstatelist = colorstatelist2;
            if (colorstatelist2 == null)
            {
                ColorStateList colorstatelist1 = c(context, i);
                if (colorstatelist1 != null)
                {
                    a(context, i, colorstatelist1);
                    return colorstatelist1;
                } else
                {
                    return android.support.v4.b.a.b(context, i);
                }
            }
        }
        return colorstatelist;
    }

    private static TypedValue a()
    {
        TypedValue typedvalue1 = (TypedValue)a.get();
        TypedValue typedvalue = typedvalue1;
        if (typedvalue1 == null)
        {
            typedvalue = new TypedValue();
            a.set(typedvalue);
        }
        return typedvalue;
    }

    private static void a(Context context, int i, ColorStateList colorstatelist)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        SparseArray sparsearray1 = (SparseArray)b.get(context);
        SparseArray sparsearray;
        sparsearray = sparsearray1;
        if (sparsearray1 != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        sparsearray = new SparseArray();
        b.put(context, sparsearray);
        sparsearray.append(i, new a(colorstatelist, context.getResources().getConfiguration()));
        obj;
        JVM INSTR monitorexit ;
        return;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
    }

    public static Drawable b(Context context, int i)
    {
        return l.a().a(context, i);
    }

    private static ColorStateList c(Context context, int i)
    {
        if (e(context, i))
        {
            return null;
        }
        Resources resources = context.getResources();
        android.content.res.XmlResourceParser xmlresourceparser = resources.getXml(i);
        try
        {
            context = android.support.v7.b.a.a.a(resources, xmlresourceparser, context.getTheme());
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", context);
            return null;
        }
        return context;
    }

    private static ColorStateList d(Context context, int i)
    {
        Object obj = c;
        obj;
        JVM INSTR monitorenter ;
        SparseArray sparsearray = (SparseArray)b.get(context);
        if (sparsearray == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        a a1;
        if (sparsearray.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        a1 = (a)sparsearray.get(i);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        if (!a1.b.equals(context.getResources().getConfiguration()))
        {
            break MISSING_BLOCK_LABEL_71;
        }
        context = a1.a;
        obj;
        JVM INSTR monitorexit ;
        return context;
        sparsearray.remove(i);
        obj;
        JVM INSTR monitorexit ;
        return null;
        context;
        obj;
        JVM INSTR monitorexit ;
        throw context;
    }

    private static boolean e(Context context, int i)
    {
        context = context.getResources();
        TypedValue typedvalue = a();
        context.getValue(i, typedvalue, true);
        return typedvalue.type >= 28 && typedvalue.type <= 31;
    }

}
