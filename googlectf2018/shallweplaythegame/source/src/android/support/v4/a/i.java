// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.arch.lifecycle.b;
import android.arch.lifecycle.d;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.g.k;
import android.support.v4.g.l;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package android.support.v4.a:
//            f, k, m, h, 
//            l, o

public class i extends f
{
    class a extends android.support.v4.a.l
    {

        final i a;

        public View a(int i1)
        {
            return a.findViewById(i1);
        }

        public void a(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
        {
            a.dump(s, filedescriptor, printwriter, as);
        }

        public boolean a()
        {
            Window window = a.getWindow();
            return window != null && window.peekDecorView() != null;
        }

        public boolean a(h h1)
        {
            return !a.isFinishing();
        }

        public LayoutInflater b()
        {
            return a.getLayoutInflater().cloneInContext(a);
        }

        public void b(h h1)
        {
            a.a(h1);
        }

        public void c()
        {
            a.d();
        }

        public boolean d()
        {
            return a.getWindow() != null;
        }

        public int e()
        {
            Window window = a.getWindow();
            if (window == null)
            {
                return 0;
            } else
            {
                return window.getAttributes().windowAnimations;
            }
        }

        public a()
        {
            a = i.this;
            super(i.this);
        }
    }

    static final class b
    {

        Object a;
        o b;
        k c;

        b()
        {
        }
    }


    final Handler c = new Handler() {

        final i a;

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 1 2: default 28
        //                       1 34
        //                       2 53;
               goto _L1 _L2 _L3
_L1:
            super.handleMessage(message);
_L5:
            return;
_L2:
            if (!a.g) goto _L5; else goto _L4
_L4:
            a.a(false);
            return;
_L3:
            a.b();
            a.d.n();
            return;
        }

            
            {
                a = i.this;
                super();
            }
    };
    final android.support.v4.a.k d = android.support.v4.a.k.a(new a());
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    int j;
    l k;

    public i()
    {
        g = true;
        h = true;
    }

    private static void a(m m1, android.arch.lifecycle.b.b b1)
    {
        m1 = m1.b().iterator();
        do
        {
            if (!m1.hasNext())
            {
                break;
            }
            h h1 = (h)m1.next();
            if (h1 != null)
            {
                h1.U.a(b1);
                a(h1.g(), b1);
            }
        } while (true);
    }

    public android.arch.lifecycle.b a()
    {
        return super.a();
    }

    final View a(View view, String s, Context context, AttributeSet attributeset)
    {
        return d.a(view, s, context, attributeset);
    }

    public void a(h h1)
    {
    }

    void a(boolean flag)
    {
        if (!h)
        {
            h = true;
            i = flag;
            c.removeMessages(1);
            e();
        } else
        if (flag)
        {
            d.o();
            d.c(true);
            return;
        }
    }

    protected boolean a(View view, Menu menu)
    {
        return super.onPreparePanel(0, view, menu);
    }

    protected void b()
    {
        d.h();
    }

    public Object c()
    {
        return null;
    }

    public void d()
    {
        invalidateOptionsMenu();
    }

    public void dump(String s, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        super.dump(s, filedescriptor, printwriter, as);
        printwriter.print(s);
        printwriter.print("Local FragmentActivity ");
        printwriter.print(Integer.toHexString(System.identityHashCode(this)));
        printwriter.println(" State:");
        String s1 = (new StringBuilder()).append(s).append("  ").toString();
        printwriter.print(s1);
        printwriter.print("mCreated=");
        printwriter.print(e);
        printwriter.print("mResumed=");
        printwriter.print(f);
        printwriter.print(" mStopped=");
        printwriter.print(g);
        printwriter.print(" mReallyStopped=");
        printwriter.println(h);
        d.a(s1, filedescriptor, printwriter, as);
        d.a().a(s, filedescriptor, printwriter, as);
    }

    void e()
    {
        d.c(i);
        d.k();
    }

    public m f()
    {
        return d.a();
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        d.b();
        int k1 = i1 >> 16;
        if (k1 != 0)
        {
            k1--;
            String s = (String)k.a(k1);
            k.c(k1);
            if (s == null)
            {
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
                return;
            }
            h h1 = d.a(s);
            if (h1 == null)
            {
                Log.w("FragmentActivity", (new StringBuilder()).append("Activity result no fragment exists for who: ").append(s).toString());
                return;
            } else
            {
                h1.a(0xffff & i1, j1, intent);
                return;
            }
        } else
        {
            super.onActivityResult(i1, j1, intent);
            return;
        }
    }

    public void onBackPressed()
    {
        m m1 = d.a();
        for (boolean flag = m1.c(); flag && android.os.Build.VERSION.SDK_INT <= 25 || !flag && m1.a();)
        {
            return;
        }

        super.onBackPressed();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        d.a(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        d.a(null);
        super.onCreate(bundle);
        Object obj = (b)getLastNonConfigurationInstance();
        if (obj != null)
        {
            d.a(((b) (obj)).c);
        }
        if (bundle != null)
        {
            android.os.Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            android.support.v4.a.k k1 = d;
            if (obj != null)
            {
                obj = ((b) (obj)).b;
            } else
            {
                obj = null;
            }
            k1.a(parcelable, ((o) (obj)));
            if (bundle.containsKey("android:support:next_request_index"))
            {
                j = bundle.getInt("android:support:next_request_index");
                obj = bundle.getIntArray("android:support:request_indicies");
                bundle = bundle.getStringArray("android:support:request_fragment_who");
                if (obj == null || bundle == null || obj.length != bundle.length)
                {
                    Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
                } else
                {
                    k = new l(obj.length);
                    int i1 = 0;
                    while (i1 < obj.length) 
                    {
                        k.b(obj[i1], bundle[i1]);
                        i1++;
                    }
                }
            }
        }
        if (k == null)
        {
            k = new l();
            j = 0;
        }
        d.e();
    }

    public boolean onCreatePanelMenu(int i1, Menu menu)
    {
        if (i1 == 0)
        {
            return super.onCreatePanelMenu(i1, menu) | d.a(menu, getMenuInflater());
        } else
        {
            return super.onCreatePanelMenu(i1, menu);
        }
    }

    public volatile View onCreateView(View view, String s, Context context, AttributeSet attributeset)
    {
        return super.onCreateView(view, s, context, attributeset);
    }

    public volatile View onCreateView(String s, Context context, AttributeSet attributeset)
    {
        return super.onCreateView(s, context, attributeset);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        a(false);
        d.l();
        d.p();
    }

    public void onLowMemory()
    {
        super.onLowMemory();
        d.m();
    }

    public boolean onMenuItemSelected(int i1, MenuItem menuitem)
    {
        if (super.onMenuItemSelected(i1, menuitem))
        {
            return true;
        }
        switch (i1)
        {
        default:
            return false;

        case 0: // '\0'
            return d.a(menuitem);

        case 6: // '\006'
            return d.b(menuitem);
        }
    }

    public void onMultiWindowModeChanged(boolean flag)
    {
        d.a(flag);
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        d.b();
    }

    public void onPanelClosed(int i1, Menu menu)
    {
        i1;
        JVM INSTR tableswitch 0 0: default 20
    //                   0 27;
           goto _L1 _L2
_L1:
        super.onPanelClosed(i1, menu);
        return;
_L2:
        d.b(menu);
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void onPause()
    {
        super.onPause();
        f = false;
        if (c.hasMessages(2))
        {
            c.removeMessages(2);
            b();
        }
        d.i();
    }

    public void onPictureInPictureModeChanged(boolean flag)
    {
        d.b(flag);
    }

    protected void onPostResume()
    {
        super.onPostResume();
        c.removeMessages(2);
        b();
        d.n();
    }

    public boolean onPreparePanel(int i1, View view, Menu menu)
    {
        if (i1 == 0 && menu != null)
        {
            return a(view, menu) | d.a(menu);
        } else
        {
            return super.onPreparePanel(i1, view, menu);
        }
    }

    public void onRequestPermissionsResult(int i1, String as[], int ai[])
    {
        String s;
label0:
        {
            int j1 = i1 >> 16 & 0xffff;
            if (j1 != 0)
            {
                j1--;
                s = (String)k.a(j1);
                k.c(j1);
                if (s != null)
                {
                    break label0;
                }
                Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
            }
            return;
        }
        h h1 = d.a(s);
        if (h1 == null)
        {
            Log.w("FragmentActivity", (new StringBuilder()).append("Activity result no fragment exists for who: ").append(s).toString());
            return;
        } else
        {
            h1.a(i1 & 0xffff, as, ai);
            return;
        }
    }

    protected void onResume()
    {
        super.onResume();
        c.sendEmptyMessage(2);
        f = true;
        d.n();
    }

    public final Object onRetainNonConfigurationInstance()
    {
        if (g)
        {
            a(true);
        }
        Object obj = c();
        o o = d.d();
        k k1 = d.r();
        if (o == null && k1 == null && obj == null)
        {
            return null;
        } else
        {
            b b1 = new b();
            b1.a = obj;
            b1.b = o;
            b1.c = k1;
            return b1;
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        a(f(), android.arch.lifecycle.b.b.c);
        android.os.Parcelable parcelable = d.c();
        if (parcelable != null)
        {
            bundle.putParcelable("android:support:fragments", parcelable);
        }
        if (k.b() > 0)
        {
            bundle.putInt("android:support:next_request_index", j);
            int ai[] = new int[k.b()];
            String as[] = new String[k.b()];
            for (int i1 = 0; i1 < k.b(); i1++)
            {
                ai[i1] = k.d(i1);
                as[i1] = (String)k.e(i1);
            }

            bundle.putIntArray("android:support:request_indicies", ai);
            bundle.putStringArray("android:support:request_fragment_who", as);
        }
    }

    protected void onStart()
    {
        super.onStart();
        g = false;
        h = false;
        c.removeMessages(1);
        if (!e)
        {
            e = true;
            d.f();
        }
        d.b();
        d.n();
        d.o();
        d.g();
        d.q();
    }

    public void onStateNotSaved()
    {
        d.b();
    }

    protected void onStop()
    {
        super.onStop();
        g = true;
        a(f(), android.arch.lifecycle.b.b.c);
        c.sendEmptyMessage(1);
        d.j();
    }

    public void startActivityForResult(Intent intent, int i1)
    {
        if (!b && i1 != -1)
        {
            a(i1);
        }
        super.startActivityForResult(intent, i1);
    }

    public volatile void startActivityForResult(Intent intent, int i1, Bundle bundle)
    {
        super.startActivityForResult(intent, i1, bundle);
    }

    public volatile void startIntentSenderForResult(IntentSender intentsender, int i1, Intent intent, int j1, int k1, int l1)
    {
        super.startIntentSenderForResult(intentsender, i1, intent, j1, k1, l1);
    }

    public volatile void startIntentSenderForResult(IntentSender intentsender, int i1, Intent intent, int j1, int k1, int l1, Bundle bundle)
    {
        super.startIntentSenderForResult(intentsender, i1, intent, j1, k1, l1, bundle);
    }
}
