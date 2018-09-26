// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import java.util.Comparator;

// Referenced classes of package android.support.v4.f:
//            b

static final class 
    implements Comparator
{

    public int a(byte abyte0[], byte abyte1[])
    {
        boolean flag = false;
        if (abyte0.length == abyte1.length) goto _L2; else goto _L1
_L1:
        int i = abyte0.length - abyte1.length;
_L4:
        return i;
_L2:
        int j = 0;
        do
        {
            i = ((flag) ? 1 : 0);
            if (j >= abyte0.length)
            {
                continue;
            }
            if (abyte0[j] != abyte1[j])
            {
                return abyte0[j] - abyte1[j];
            }
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int compare(Object obj, Object obj1)
    {
        return a((byte[])obj, (byte[])obj1);
    }

    ()
    {
    }
}
