// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.graphics.Typeface;
import android.widget.TextView;
import java.lang.ref.WeakReference;

// Referenced classes of package android.support.v4.f:
//            b

static final class c
    implements c
{

    final WeakReference a;
    final TextView b;
    final int c;

    public void a(Typeface typeface)
    {
        if ((TextView)a.get() != null)
        {
            b.setTypeface(typeface, c);
        }
    }

    public volatile void a(Object obj)
    {
        a((Typeface)obj);
    }

    ce(WeakReference weakreference, TextView textview, int i)
    {
        a = weakreference;
        b = textview;
        c = i;
        super();
    }
}
