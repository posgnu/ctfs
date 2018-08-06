// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.transition.Transition;
import java.util.ArrayList;

// Referenced classes of package android.support.v4.a:
//            t

static final class f
    implements android.transition.sition.TransitionListener
{

    final Object a;
    final ArrayList b;
    final Object c;
    final ArrayList d;
    final Object e;
    final ArrayList f;

    public void onTransitionCancel(Transition transition)
    {
    }

    public void onTransitionEnd(Transition transition)
    {
    }

    public void onTransitionPause(Transition transition)
    {
    }

    public void onTransitionResume(Transition transition)
    {
    }

    public void onTransitionStart(Transition transition)
    {
        if (a != null)
        {
            t.b(a, b, null);
        }
        if (c != null)
        {
            t.b(c, d, null);
        }
        if (e != null)
        {
            t.b(e, f, null);
        }
    }

    tion(Object obj, ArrayList arraylist, Object obj1, ArrayList arraylist1, Object obj2, ArrayList arraylist2)
    {
        a = obj;
        b = arraylist;
        c = obj1;
        d = arraylist1;
        e = obj2;
        f = arraylist2;
        super();
    }
}
