// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;

class e
{
    static final class a
    {

        public static String a(Object obj)
        {
            return ((android.media.session.PlaybackState.CustomAction)obj).getAction();
        }

        public static CharSequence b(Object obj)
        {
            return ((android.media.session.PlaybackState.CustomAction)obj).getName();
        }

        public static int c(Object obj)
        {
            return ((android.media.session.PlaybackState.CustomAction)obj).getIcon();
        }

        public static Bundle d(Object obj)
        {
            return ((android.media.session.PlaybackState.CustomAction)obj).getExtras();
        }
    }


    public static int a(Object obj)
    {
        return ((PlaybackState)obj).getState();
    }

    public static long b(Object obj)
    {
        return ((PlaybackState)obj).getPosition();
    }

    public static long c(Object obj)
    {
        return ((PlaybackState)obj).getBufferedPosition();
    }

    public static float d(Object obj)
    {
        return ((PlaybackState)obj).getPlaybackSpeed();
    }

    public static long e(Object obj)
    {
        return ((PlaybackState)obj).getActions();
    }

    public static CharSequence f(Object obj)
    {
        return ((PlaybackState)obj).getErrorMessage();
    }

    public static long g(Object obj)
    {
        return ((PlaybackState)obj).getLastPositionUpdateTime();
    }

    public static List h(Object obj)
    {
        return ((PlaybackState)obj).getCustomActions();
    }

    public static long i(Object obj)
    {
        return ((PlaybackState)obj).getActiveQueueItemId();
    }
}
