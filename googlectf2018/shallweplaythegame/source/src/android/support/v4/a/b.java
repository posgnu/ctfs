// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.app.AppOpsManager;
import android.content.Context;

public final class b
{

    public static int a(Context context, String s, String s1)
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            return ((AppOpsManager)context.getSystemService(android/app/AppOpsManager)).noteProxyOp(s, s1);
        } else
        {
            return 1;
        }
    }

    public static String a(String s)
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            return AppOpsManager.permissionToOp(s);
        } else
        {
            return null;
        }
    }
}
