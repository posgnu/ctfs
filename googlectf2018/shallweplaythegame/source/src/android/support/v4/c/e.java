// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.support.v4.g.k;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

// Referenced classes of package android.support.v4.c:
//            g, h

class e extends g
{

    private static final Class a;
    private static final Constructor b;
    private static final Method c;
    private static final Method d;

    e()
    {
    }

    private static Typeface a(Object obj)
    {
        Object obj1 = Array.newInstance(a, 1);
        Array.set(obj1, 0, obj);
        obj = (Typeface)d.invoke(null, new Object[] {
            obj1
        });
        return ((Typeface) (obj));
        obj;
_L2:
        throw new RuntimeException(((Throwable) (obj)));
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static boolean a()
    {
        if (c == null)
        {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return c != null;
    }

    private static boolean a(Object obj, ByteBuffer bytebuffer, int i, int j, boolean flag)
    {
        flag = ((Boolean)c.invoke(obj, new Object[] {
            bytebuffer, Integer.valueOf(i), null, Integer.valueOf(j), Boolean.valueOf(flag)
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

    public Typeface a(Context context, CancellationSignal cancellationsignal, android.support.v4.f.b.b ab[], int i)
    {
        Object obj = b();
        k k1 = new k();
        int j = ab.length;
        for (i = 0; i < j; i++)
        {
            android.support.v4.f.b.b b1 = ab[i];
            android.net.Uri uri = b1.a();
            ByteBuffer bytebuffer1 = (ByteBuffer)k1.get(uri);
            ByteBuffer bytebuffer = bytebuffer1;
            if (bytebuffer1 == null)
            {
                bytebuffer = h.a(context, cancellationsignal, uri);
                k1.put(uri, bytebuffer);
            }
            if (!a(obj, bytebuffer, b1.b(), b1.c(), b1.d()))
            {
                return null;
            }
        }

        return a(obj);
    }

    public Typeface a(Context context, android.support.v4.b.a.a.b b1, Resources resources, int i)
    {
        Object obj = b();
        b1 = b1.a();
        int j = b1.length;
        for (i = 0; i < j; i++)
        {
            android.support.v4.b.a.a.c c1 = b1[i];
            if (!a(obj, h.a(context, resources, c1.d()), 0, c1.b(), c1.c()))
            {
                return null;
            }
        }

        return a(obj);
    }

    static 
    {
        Method method = null;
        Object obj;
        Constructor constructor;
        Class class1;
        Method method1;
        class1 = Class.forName("android.graphics.FontFamily");
        constructor = class1.getConstructor(new Class[0]);
        method1 = class1.getMethod("addFontWeightStyle", new Class[] {
            java/nio/ByteBuffer, Integer.TYPE, java/util/List, Integer.TYPE, Boolean.TYPE
        });
        obj = android/graphics/Typeface.getMethod("createFromFamiliesWithDefault", new Class[] {
            Array.newInstance(class1, 1).getClass()
        });
        method = method1;
_L2:
        b = constructor;
        a = class1;
        c = method;
        d = ((Method) (obj));
        return;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
_L3:
        Log.e("TypefaceCompatApi24Impl", classnotfoundexception.getClass().getName(), classnotfoundexception);
        classnotfoundexception = null;
        constructor = null;
        class1 = null;
        if (true) goto _L2; else goto _L1
_L1:
        classnotfoundexception;
          goto _L3
    }
}
