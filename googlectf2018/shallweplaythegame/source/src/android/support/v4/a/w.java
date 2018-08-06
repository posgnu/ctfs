// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;

public final class w
{

    public static Intent a(Activity activity)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            Intent intent = activity.getParentActivityIntent();
            if (intent != null)
            {
                return intent;
            }
        }
        String s = b(activity);
        if (s == null)
        {
            return null;
        }
        ComponentName componentname = new ComponentName(activity, s);
        try
        {
            if (b(activity, componentname) == null)
            {
                return Intent.makeMainActivity(componentname);
            }
            activity = (new Intent()).setComponent(componentname);
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            Log.e("NavUtils", (new StringBuilder()).append("getParentActivityIntent: bad parentActivityName '").append(s).append("' in manifest").toString());
            return null;
        }
        return activity;
    }

    public static Intent a(Context context, ComponentName componentname)
    {
        String s = b(context, componentname);
        if (s == null)
        {
            return null;
        }
        componentname = new ComponentName(componentname.getPackageName(), s);
        if (b(context, componentname) == null)
        {
            return Intent.makeMainActivity(componentname);
        } else
        {
            return (new Intent()).setComponent(componentname);
        }
    }

    public static boolean a(Activity activity, Intent intent)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return activity.shouldUpRecreateTask(intent);
        }
        activity = activity.getIntent().getAction();
        return activity != null && !activity.equals("android.intent.action.MAIN");
    }

    public static String b(Activity activity)
    {
        try
        {
            activity = b(((Context) (activity)), activity.getComponentName());
        }
        // Misplaced declaration of an exception variable
        catch (Activity activity)
        {
            throw new IllegalArgumentException(activity);
        }
        return activity;
    }

    public static String b(Context context, ComponentName componentname)
    {
        Object obj = context.getPackageManager().getActivityInfo(componentname, 128);
        if (android.os.Build.VERSION.SDK_INT < 16) goto _L2; else goto _L1
_L1:
        componentname = ((ActivityInfo) (obj)).parentActivityName;
        if (componentname == null) goto _L2; else goto _L3
_L3:
        return componentname;
_L2:
        if (((ActivityInfo) (obj)).metaData == null)
        {
            return null;
        }
        obj = ((ActivityInfo) (obj)).metaData.getString("android.support.PARENT_ACTIVITY");
        if (obj == null)
        {
            return null;
        }
        componentname = ((ComponentName) (obj));
        if (((String) (obj)).charAt(0) == '.')
        {
            return (new StringBuilder()).append(context.getPackageName()).append(((String) (obj))).toString();
        }
        if (true) goto _L3; else goto _L4
_L4:
    }

    public static void b(Activity activity, Intent intent)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            activity.navigateUpTo(intent);
            return;
        } else
        {
            intent.addFlags(0x4000000);
            activity.startActivity(intent);
            activity.finish();
            return;
        }
    }
}
