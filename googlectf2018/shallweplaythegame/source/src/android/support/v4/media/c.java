// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.media.MediaMetadata;
import android.os.Parcel;

class c
{

    public static void a(Object obj, Parcel parcel, int i)
    {
        ((MediaMetadata)obj).writeToParcel(parcel, i);
    }
}
