// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;

// Referenced classes of package android.support.v4.media.session:
//            e

static final class ustomAction
{

    public static String a(Object obj)
    {
        return ((android.media.session.backState.CustomAction)obj).getAction();
    }

    public static CharSequence b(Object obj)
    {
        return ((android.media.session.backState.CustomAction)obj).getName();
    }

    public static int c(Object obj)
    {
        return ((android.media.session.backState.CustomAction)obj).getIcon();
    }

    public static Bundle d(Object obj)
    {
        return ((android.media.session.backState.CustomAction)obj).getExtras();
    }
}
