// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.support.v4.f.b;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;

// Referenced classes of package android.support.v4.c:
//            d

public class f extends d
{

    private static final Class a;
    private static final Constructor b;
    private static final Method c;
    private static final Method d;
    private static final Method e;
    private static final Method f;
    private static final Method g;

    public f()
    {
    }

    private static Typeface a(Object obj)
    {
        Object obj1 = Array.newInstance(a, 1);
        Array.set(obj1, 0, obj);
        obj = (Typeface)g.invoke(null, new Object[] {
            obj1, Integer.valueOf(-1), Integer.valueOf(-1)
        });
        return ((Typeface) (obj));
        obj;
_L2:
        throw new RuntimeException(((Throwable) (obj)));
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean a()
    {
        if (c == null)
        {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return c != null;
    }

    private static boolean a(Context context, Object obj, String s, int i, int j, int k)
    {
        boolean flag = ((Boolean)c.invoke(obj, new Object[] {
            context.getAssets(), s, Integer.valueOf(0), Boolean.valueOf(false), Integer.valueOf(i), Integer.valueOf(j), Integer.valueOf(k), null
        })).booleanValue();
        return flag;
        context;
_L2:
        throw new RuntimeException(context);
        context;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean a(Object obj, ByteBuffer bytebuffer, int i, int j, int k)
    {
        boolean flag = ((Boolean)d.invoke(obj, new Object[] {
            bytebuffer, Integer.valueOf(i), null, Integer.valueOf(j), Integer.valueOf(k)
        })).booleanValue();
        return flag;
        obj;
_L2:
        throw new RuntimeException(((Throwable) (obj)));
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static Object b()
    {
        Object obj = b.newInstance(new Object[0]);
        return obj;
        Object obj1;
        obj1;
_L2:
        throw new RuntimeException(((Throwable) (obj1)));
        obj1;
        continue; /* Loop/switch isn't completed */
        obj1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean b(Object obj)
    {
        boolean flag = ((Boolean)e.invoke(obj, new Object[0])).booleanValue();
        return flag;
        obj;
_L2:
        throw new RuntimeException(((Throwable) (obj)));
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static boolean c(Object obj)
    {
        boolean flag = ((Boolean)f.invoke(obj, new Object[0])).booleanValue();
        return flag;
        obj;
_L2:
        throw new RuntimeException(((Throwable) (obj)));
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Typeface a(Context context, Resources resources, int i, String s, int j)
    {
        if (!a())
        {
            return super.a(context, resources, i, s, j);
        }
        resources = ((Resources) (b()));
        if (!a(context, resources, s, 0, -1, -1))
        {
            c(resources);
            return null;
        }
        if (!b(resources))
        {
            return null;
        } else
        {
            return a(resources);
        }
    }

    public Typeface a(Context context, CancellationSignal cancellationsignal, android.support.v4.f.b.b ab[], int i)
    {
        if (ab.length >= 1) goto _L2; else goto _L1
_L1:
        context = null;
_L6:
        return context;
_L2:
        if (a()) goto _L4; else goto _L3
_L3:
        Object obj = a(ab, i);
        context = context.getContentResolver();
        android.support.v4.f.b.b b1;
        int j;
        int k;
        int l;
        int i1;
        try
        {
            ab = context.openFileDescriptor(((android.support.v4.f.b.b) (obj)).a(), "r", cancellationsignal);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        cancellationsignal = null;
        context = (new android.graphics.Typeface.Builder(ab.getFileDescriptor())).setWeight(((android.support.v4.f.b.b) (obj)).c()).setItalic(((android.support.v4.f.b.b) (obj)).d()).build();
        cancellationsignal = context;
        context = cancellationsignal;
        if (ab == null) goto _L6; else goto _L5
_L5:
        if (true)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        ab.close();
        return cancellationsignal;
        context;
        throw new NullPointerException();
        ab.close();
        return cancellationsignal;
        cancellationsignal;
        throw cancellationsignal;
        context;
_L9:
        if (ab == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        if (cancellationsignal == null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        ab.close();
_L7:
        throw context;
        ab;
        cancellationsignal.addSuppressed(ab);
          goto _L7
        ab.close();
          goto _L7
_L4:
        obj = android.support.v4.f.b.a(context, ab, cancellationsignal);
        cancellationsignal = ((CancellationSignal) (b()));
        i = 0;
        k = ab.length;
        j = 0;
        while (j < k) 
        {
            b1 = ab[j];
            context = (ByteBuffer)((Map) (obj)).get(b1.a());
            if (context != null)
            {
                l = b1.b();
                i1 = b1.c();
                if (b1.d())
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                if (!a(cancellationsignal, ((ByteBuffer) (context)), l, i1, i))
                {
                    c(cancellationsignal);
                    return null;
                }
                i = 1;
            }
            j++;
        }
        if (i == 0)
        {
            c(cancellationsignal);
            return null;
        }
        if (!b(cancellationsignal))
        {
            return null;
        } else
        {
            return a(cancellationsignal);
        }
        context;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public Typeface a(Context context, android.support.v4.b.a.a.b b1, Resources resources, int i)
    {
        if (!a())
        {
            return super.a(context, b1, resources, i);
        }
        resources = ((Resources) (b()));
        b1 = b1.a();
        int k = b1.length;
        int j;
        for (i = 0; i < k; i++)
        {
            android.support.v4.b.a.a.c c1 = b1[i];
            String s = c1.a();
            int l = c1.b();
            if (c1.c())
            {
                j = 1;
            } else
            {
                j = 0;
            }
            if (!a(context, resources, s, 0, l, j))
            {
                c(resources);
                return null;
            }
        }

        if (!b(resources))
        {
            return null;
        } else
        {
            return a(resources);
        }
    }

    static 
    {
        Method method = null;
        Object obj;
        Method method1;
        Method method2;
        Method method3;
        Constructor constructor;
        Class class1;
        Method method4;
        class1 = Class.forName("android.graphics.FontFamily");
        constructor = class1.getConstructor(new Class[0]);
        method3 = class1.getMethod("addFontFromAssetManager", new Class[] {
            android/content/res/AssetManager, java/lang/String, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, [Landroid/graphics/fonts/FontVariationAxis;
        });
        method1 = class1.getMethod("addFontFromBuffer", new Class[] {
            java/nio/ByteBuffer, Integer.TYPE, [Landroid/graphics/fonts/FontVariationAxis;, Integer.TYPE, Integer.TYPE
        });
        method2 = class1.getMethod("freeze", new Class[0]);
        obj = class1.getMethod("abortCreation", new Class[0]);
        method4 = android/graphics/Typeface.getDeclaredMethod("createFromFamiliesWithDefault", new Class[] {
            Array.newInstance(class1, 1).getClass(), Integer.TYPE, Integer.TYPE
        });
        method4.setAccessible(true);
        method = method2;
        method2 = method1;
        method1 = method;
        method = ((Method) (obj));
        obj = method4;
_L2:
        b = constructor;
        a = class1;
        c = method3;
        d = method2;
        e = method1;
        f = method;
        g = ((Method) (obj));
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
_L3:
        Log.e("TypefaceCompatApi26Impl", (new StringBuilder()).append("Unable to collect necessary methods for class ").append(classnotfoundexception.getClass().getName()).toString(), classnotfoundexception);
        classnotfoundexception = null;
        method1 = null;
        method2 = null;
        method3 = null;
        constructor = null;
        class1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        classnotfoundexception;
          goto _L3
    }
}
