// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;

// Referenced classes of package android.support.v4.media:
//            MediaDescriptionCompat

public static final class 
{

    private String a;
    private CharSequence b;
    private CharSequence c;
    private CharSequence d;
    private Bitmap e;
    private Uri f;
    private Bundle g;
    private Uri h;

    public  a(Bitmap bitmap)
    {
        e = bitmap;
        return this;
    }

    public e a(Uri uri)
    {
        f = uri;
        return this;
    }

    public f a(Bundle bundle)
    {
        g = bundle;
        return this;
    }

    public g a(CharSequence charsequence)
    {
        b = charsequence;
        return this;
    }

    public b a(String s)
    {
        a = s;
        return this;
    }

    public MediaDescriptionCompat a()
    {
        return new MediaDescriptionCompat(a, b, c, d, e, f, g, h);
    }

    public h b(Uri uri)
    {
        h = uri;
        return this;
    }

    public h b(CharSequence charsequence)
    {
        c = charsequence;
        return this;
    }

    public c c(CharSequence charsequence)
    {
        d = charsequence;
        return this;
    }

    public ()
    {
    }
}
