// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            MediaControllerCompat, PlaybackStateCompat

private class  extends Handler
{

    boolean a;
    final b b;

    public void handleMessage(Message message)
    {
        if (!a)
        {
            return;
        }
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            b.b((String)message.obj, message.getData());
            return;

        case 2: // '\002'
            b.b((PlaybackStateCompat)message.obj);
            return;

        case 3: // '\003'
            b.b((MediaMetadataCompat)message.obj);
            return;

        case 5: // '\005'
            b.b((List)message.obj);
            return;

        case 6: // '\006'
            b.b((CharSequence)message.obj);
            return;

        case 11: // '\013'
            b.b(((Boolean)message.obj).booleanValue());
            return;

        case 9: // '\t'
            b.b(((Integer)message.obj).intValue());
            return;

        case 10: // '\n'
            b.b(((Boolean)message.obj).booleanValue());
            return;

        case 12: // '\f'
            b.b(((Integer)message.obj).intValue());
            return;

        case 7: // '\007'
            b.b((Bundle)message.obj);
            return;

        case 4: // '\004'
            b.b((b)message.obj);
            return;

        case 8: // '\b'
            b.b();
            return;
        }
    }
}
