// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.util.AttributeSet;
import android.view.View;

// Referenced classes of package android.support.v4.a:
//            aa

abstract class e extends aa
{

    boolean a;

    e()
    {
    }

    static void a(int i)
    {
        if ((0xffff0000 & i) != 0)
        {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        } else
        {
            return;
        }
    }

    abstract View a(View view, String s, Context context, AttributeSet attributeset);

    public View onCreateView(View view, String s, Context context, AttributeSet attributeset)
    {
        View view2 = a(view, s, context, attributeset);
        View view1 = view2;
        if (view2 == null)
        {
            view1 = super.onCreateView(view, s, context, attributeset);
        }
        return view1;
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset)
    {
        View view1 = a(null, s, context, attributeset);
        View view = view1;
        if (view1 == null)
        {
            view = super.onCreateView(s, context, attributeset);
        }
        return view;
    }

    public void startIntentSenderForResult(IntentSender intentsender, int i, Intent intent, int j, int k, int l)
    {
        if (!a && i != -1)
        {
            a(i);
        }
        super.startIntentSenderForResult(intentsender, i, intent, j, k, l);
    }
}
