// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.transition.Transition;
import android.view.View;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            t

static final class b
    implements android.transition.sition.TransitionListener
{

    final View a;
    final ArrayList b;

    public void onTransitionCancel(Transition transition)
    {
    }

    public void onTransitionEnd(Transition transition)
    {
        transition.removeListener(this);
        a.setVisibility(8);
        int j = b.size();
        for (int i = 0; i < j; i++)
        {
            ((View)b.get(i)).setVisibility(0);
        }

    }

    public void onTransitionPause(Transition transition)
    {
    }

    public void onTransitionResume(Transition transition)
    {
    }

    public void onTransitionStart(Transition transition)
    {
    }

    tion(View view, ArrayList arraylist)
    {
        a = view;
        b = arraylist;
        super();
    }
}
