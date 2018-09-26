// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.res.Resources;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

class n
{

    private static Field a;
    private static boolean b;
    private static Class c;
    private static boolean d;
    private static Field e;
    private static boolean f;
    private static Field g;
    private static boolean h;

    static boolean a(Resources resources)
    {
        if (android.os.Build.VERSION.SDK_INT >= 24)
        {
            return d(resources);
        }
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            return c(resources);
        }
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            return b(resources);
        } else
        {
            return false;
        }
    }

    private static boolean a(Object obj)
    {
        if (!d)
        {
            try
            {
                c = Class.forName("android.content.res.ThemedResourceCache");
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", classnotfoundexception);
            }
            d = true;
        }
        if (c == null)
        {
            return false;
        }
        if (!f)
        {
            try
            {
                e = c.getDeclaredField("mUnthemedEntries");
                e.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", nosuchfieldexception);
            }
            f = true;
        }
        if (e == null)
        {
            return false;
        }
        try
        {
            obj = (LongSparseArray)e.get(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", ((Throwable) (obj)));
            obj = null;
        }
        if (obj != null)
        {
            ((LongSparseArray) (obj)).clear();
            return true;
        } else
        {
            return false;
        }
    }

    private static boolean b(Resources resources)
    {
        if (!b)
        {
            try
            {
                a = android/content/res/Resources.getDeclaredField("mDrawableCache");
                a.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", nosuchfieldexception);
            }
            b = true;
        }
        if (a != null)
        {
            try
            {
                resources = (Map)a.get(resources);
            }
            // Misplaced declaration of an exception variable
            catch (Resources resources)
            {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", resources);
                resources = null;
            }
            if (resources != null)
            {
                resources.clear();
                return true;
            }
        }
        return false;
    }

    private static boolean c(Resources resources)
    {
        boolean flag;
        flag = true;
        if (!b)
        {
            try
            {
                a = android/content/res/Resources.getDeclaredField("mDrawableCache");
                a.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", nosuchfieldexception);
            }
            b = true;
        }
        if (a == null) goto _L2; else goto _L1
_L1:
        resources = ((Resources) (a.get(resources)));
_L4:
        if (resources == null)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
        resources;
        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", resources);
_L2:
        resources = null;
        if (true) goto _L4; else goto _L3
_L3:
        if (resources == null || !a(resources))
        {
            flag = false;
        }
        return flag;
    }

    private static boolean d(Resources resources)
    {
        boolean flag;
        flag = true;
        if (!h)
        {
            try
            {
                g = android/content/res/Resources.getDeclaredField("mResourcesImpl");
                g.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", nosuchfieldexception);
            }
            h = true;
        }
        if (g != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        try
        {
            resources = ((Resources) (g.get(resources)));
        }
        // Misplaced declaration of an exception variable
        catch (Resources resources)
        {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", resources);
            resources = null;
        }
        if (resources == null) goto _L1; else goto _L3
_L3:
        if (!b)
        {
            try
            {
                a = resources.getClass().getDeclaredField("mDrawableCache");
                a.setAccessible(true);
            }
            catch (NoSuchFieldException nosuchfieldexception1)
            {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", nosuchfieldexception1);
            }
            b = true;
        }
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        resources = ((Resources) (a.get(resources)));
_L4:
        if (resources == null || !a(resources))
        {
            flag = false;
        }
        return flag;
        resources;
        Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", resources);
        resources = null;
          goto _L4
    }
}
