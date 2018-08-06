// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;

// Referenced classes of package android.arch.lifecycle:
//            e, d, c

public class g extends Fragment
{
    static interface a
    {

        public abstract void a();

        public abstract void b();

        public abstract void c();
    }


    private a a;

    public g()
    {
    }

    public static void a(Activity activity)
    {
        activity = activity.getFragmentManager();
        if (activity.findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null)
        {
            activity.beginTransaction().add(new g(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            activity.executePendingTransactions();
        }
    }

    private void a(b.a a1)
    {
        Object obj = getActivity();
        if (obj instanceof e)
        {
            ((e)obj).b().a(a1);
        } else
        if (obj instanceof c)
        {
            obj = ((c)obj).a();
            if (obj instanceof d)
            {
                ((d)obj).a(a1);
                return;
            }
        }
    }

    private void a(a a1)
    {
        if (a1 != null)
        {
            a1.a();
        }
    }

    private void b(a a1)
    {
        if (a1 != null)
        {
            a1.b();
        }
    }

    private void c(a a1)
    {
        if (a1 != null)
        {
            a1.c();
        }
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        a(a);
        a(b.a.ON_CREATE);
    }

    public void onDestroy()
    {
        super.onDestroy();
        a(b.a.ON_DESTROY);
        a = null;
    }

    public void onPause()
    {
        super.onPause();
        a(b.a.ON_PAUSE);
    }

    public void onResume()
    {
        super.onResume();
        c(a);
        a(b.a.ON_RESUME);
    }

    public void onStart()
    {
        super.onStart();
        b(a);
        a(b.a.ON_START);
    }

    public void onStop()
    {
        super.onStop();
        a(b.a.ON_STOP);
    }
}
