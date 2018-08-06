// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Process;
import android.support.v4.a.b;

public final class c
{

    public static int a(Context context, String s)
    {
        return a(context, s, Process.myPid(), Process.myUid(), context.getPackageName());
    }

    public static int a(Context context, String s, int i, int j, String s1)
    {
        if (context.checkPermission(s, i, j) != -1) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        String s2;
        s2 = b.a(s);
        if (s2 == null)
        {
            return 0;
        }
        s = s1;
        if (s1 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        s = context.getPackageManager().getPackagesForUid(j);
        if (s == null || s.length <= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        s = s[0];
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        return b.a(context, s2, s) == 0 ? 0 : -2;
    }
}
