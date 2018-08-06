// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class g
{
    static class a
    {

        private static Method a;
        private static boolean b;

        public static IBinder a(Bundle bundle, String s)
        {
            if (!b)
            {
                try
                {
                    a = android/os/Bundle.getMethod("getIBinder", new Class[] {
                        java/lang/String
                    });
                    a.setAccessible(true);
                }
                catch (NoSuchMethodException nosuchmethodexception)
                {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", nosuchmethodexception);
                }
                b = true;
            }
            if (a == null) goto _L2; else goto _L1
_L1:
            bundle = (IBinder)a.invoke(bundle, new Object[] {
                s
            });
            return bundle;
            bundle;
_L4:
            Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", bundle);
            a = null;
_L2:
            return null;
            bundle;
            continue; /* Loop/switch isn't completed */
            bundle;
            if (true) goto _L4; else goto _L3
_L3:
        }
    }


    public static IBinder a(Bundle bundle, String s)
    {
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            return bundle.getBinder(s);
        } else
        {
            return a.a(bundle, s);
        }
    }
}
