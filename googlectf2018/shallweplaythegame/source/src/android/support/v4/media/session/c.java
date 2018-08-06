// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;

class android.support.v4.media.session.c
{
    public static interface a
    {

        public abstract void a();

        public abstract void a(int i, int j, int k, int l, int i1);

        public abstract void a(Bundle bundle);

        public abstract void a(CharSequence charsequence);

        public abstract void a(Object obj);

        public abstract void a(String s, Bundle bundle);

        public abstract void a(List list);

        public abstract void b(Object obj);
    }

    static class b extends android.media.session.MediaController.Callback
    {

        protected final a a;

        public void onAudioInfoChanged(android.media.session.MediaController.PlaybackInfo playbackinfo)
        {
            a.a(playbackinfo.getPlaybackType(), c.b(playbackinfo), playbackinfo.getVolumeControl(), playbackinfo.getMaxVolume(), playbackinfo.getCurrentVolume());
        }

        public void onExtrasChanged(Bundle bundle)
        {
            a.a(bundle);
        }

        public void onMetadataChanged(MediaMetadata mediametadata)
        {
            a.b(mediametadata);
        }

        public void onPlaybackStateChanged(PlaybackState playbackstate)
        {
            a.a(playbackstate);
        }

        public void onQueueChanged(List list)
        {
            a.a(list);
        }

        public void onQueueTitleChanged(CharSequence charsequence)
        {
            a.a(charsequence);
        }

        public void onSessionDestroyed()
        {
            a.a();
        }

        public void onSessionEvent(String s, Bundle bundle)
        {
            a.a(s, bundle);
        }

        public b(a a1)
        {
            a = a1;
        }
    }

    public static class c
    {

        private static int a(AudioAttributes audioattributes)
        {
            byte byte0 = 3;
            if ((audioattributes.getFlags() & 1) != 1) goto _L2; else goto _L1
_L1:
            byte0 = 7;
_L4:
            return byte0;
_L2:
            if ((audioattributes.getFlags() & 4) == 4)
            {
                return 6;
            }
            switch (audioattributes.getUsage())
            {
            default:
                return 3;

            case 2: // '\002'
                return 0;

            case 13: // '\r'
                return 1;

            case 3: // '\003'
                return 8;

            case 4: // '\004'
                return 4;

            case 6: // '\006'
                return 2;

            case 5: // '\005'
            case 7: // '\007'
            case 8: // '\b'
            case 9: // '\t'
            case 10: // '\n'
                return 5;

            case 1: // '\001'
            case 11: // '\013'
            case 12: // '\f'
            case 14: // '\016'
                break;
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public static AudioAttributes a(Object obj)
        {
            return ((android.media.session.MediaController.PlaybackInfo)obj).getAudioAttributes();
        }

        public static int b(Object obj)
        {
            return a(a(obj));
        }
    }


    public static Object a(a a1)
    {
        return new b(a1);
    }
}
