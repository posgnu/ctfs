// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.ActionMode;
import android.view.Window;

// Referenced classes of package android.support.v7.app:
//            h, n, q, d

class i extends h
{
    class a extends f.a
    {

        final i c;

        final ActionMode a(android.view.ActionMode.Callback callback)
        {
            callback = new android.support.v7.view.f.a(c.a, callback);
            android.support.v7.view.b b1 = c.b(callback);
            if (b1 != null)
            {
                return callback.b(b1);
            } else
            {
                return null;
            }
        }

        public ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback)
        {
            if (c.o())
            {
                return a(callback);
            } else
            {
                return super.onWindowStartingActionMode(callback);
            }
        }

        a(android.view.Window.Callback callback)
        {
            c = i.this;
            super(i.this, callback);
        }
    }

    final class b
    {

        final i a;
        private q b;
        private boolean c;
        private BroadcastReceiver d;
        private IntentFilter e;

        final int a()
        {
            c = b.a();
            return !c ? 1 : 2;
        }

        final void b()
        {
            boolean flag = b.a();
            if (flag != c)
            {
                c = flag;
                a.i();
            }
        }

        final void c()
        {
            d();
            if (d == null)
            {
                d = new BroadcastReceiver(this) {

                    final b a;

                    public void onReceive(Context context, Intent intent)
                    {
                        a.b();
                    }

            
            {
                a = b1;
                super();
            }
                };
            }
            if (e == null)
            {
                e = new IntentFilter();
                e.addAction("android.intent.action.TIME_SET");
                e.addAction("android.intent.action.TIMEZONE_CHANGED");
                e.addAction("android.intent.action.TIME_TICK");
            }
            a.a.registerReceiver(d, e);
        }

        final void d()
        {
            if (d != null)
            {
                a.a.unregisterReceiver(d);
                d = null;
            }
        }

        b(q q1)
        {
            a = i.this;
            super();
            b = q1;
            c = q1.a();
        }
    }


    private int t;
    private boolean u;
    private boolean v;
    private b w;

    i(Context context, Window window, d d1)
    {
        super(context, window, d1);
        t = -100;
        v = true;
    }

    private boolean h(int j)
    {
        Resources resources;
        Configuration configuration;
        resources = a.getResources();
        configuration = resources.getConfiguration();
        int k = configuration.uiMode;
        if (j == 2)
        {
            j = 32;
        } else
        {
            j = 16;
        }
        if ((k & 0x30) == j) goto _L2; else goto _L1
_L1:
        if (!y()) goto _L4; else goto _L3
_L3:
        ((Activity)a).recreate();
_L5:
        return true;
_L4:
        configuration = new Configuration(configuration);
        android.util.DisplayMetrics displaymetrics = resources.getDisplayMetrics();
        configuration.uiMode = j | configuration.uiMode & 0xffffffcf;
        resources.updateConfiguration(configuration, displaymetrics);
        if (android.os.Build.VERSION.SDK_INT < 26)
        {
            n.a(resources);
        }
        if (true) goto _L5; else goto _L2
_L2:
        return false;
    }

    private int w()
    {
        if (t != -100)
        {
            return t;
        } else
        {
            return j();
        }
    }

    private void x()
    {
        if (w == null)
        {
            w = new b(q.a(a));
        }
    }

    private boolean y()
    {
        if (u && (a instanceof Activity))
        {
            PackageManager packagemanager = a.getPackageManager();
            int j;
            try
            {
                j = packagemanager.getActivityInfo(new ComponentName(a, a.getClass()), 0).configChanges;
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", namenotfoundexception);
                return true;
            }
            return (j & 0x200) == 0;
        } else
        {
            return false;
        }
    }

    android.view.Window.Callback a(android.view.Window.Callback callback)
    {
        return new a(callback);
    }

    public void a(Bundle bundle)
    {
        super.a(bundle);
        if (bundle != null && t == -100)
        {
            t = bundle.getInt("appcompat:local_night_mode", -100);
        }
    }

    public void c()
    {
        super.c();
        i();
    }

    public void c(Bundle bundle)
    {
        super.c(bundle);
        if (t != -100)
        {
            bundle.putInt("appcompat:local_night_mode", t);
        }
    }

    int d(int j)
    {
        switch (j)
        {
        default:
            return j;

        case 0: // '\0'
            x();
            return w.a();

        case -100: 
            return -1;
        }
    }

    public void d()
    {
        super.d();
        if (w != null)
        {
            w.d();
        }
    }

    public void g()
    {
        super.g();
        if (w != null)
        {
            w.d();
        }
    }

    public boolean i()
    {
        boolean flag = false;
        int j = w();
        int k = d(j);
        if (k != -1)
        {
            flag = h(k);
        }
        if (j == 0)
        {
            x();
            w.c();
        }
        u = true;
        return flag;
    }

    public boolean o()
    {
        return v;
    }
}
