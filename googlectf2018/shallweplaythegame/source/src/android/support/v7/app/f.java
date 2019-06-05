// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.view.b;
import android.support.v7.view.g;
import android.support.v7.view.i;
import android.support.v7.view.menu.h;
import android.support.v7.widget.aw;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;

// Referenced classes of package android.support.v7.app:
//            e, a, d

abstract class f extends e
{
    class a extends i
    {

        final f a;

        public boolean dispatchKeyEvent(KeyEvent keyevent)
        {
            return a.a(keyevent) || super.dispatchKeyEvent(keyevent);
        }

        public boolean dispatchKeyShortcutEvent(KeyEvent keyevent)
        {
            return super.dispatchKeyShortcutEvent(keyevent) || a.a(keyevent.getKeyCode(), keyevent);
        }

        public void onContentChanged()
        {
        }

        public boolean onCreatePanelMenu(int i1, Menu menu)
        {
            if (i1 == 0 && !(menu instanceof h))
            {
                return false;
            } else
            {
                return super.onCreatePanelMenu(i1, menu);
            }
        }

        public boolean onMenuOpened(int i1, Menu menu)
        {
            super.onMenuOpened(i1, menu);
            a.b(i1, menu);
            return true;
        }

        public void onPanelClosed(int i1, Menu menu)
        {
            super.onPanelClosed(i1, menu);
            a.a(i1, menu);
        }

        public boolean onPreparePanel(int i1, View view, Menu menu)
        {
            h h1;
            boolean flag;
            if (menu instanceof h)
            {
                h1 = (h)menu;
            } else
            {
                h1 = null;
            }
            if (i1 == 0 && h1 == null)
            {
                flag = false;
            } else
            {
                if (h1 != null)
                {
                    h1.c(true);
                }
                boolean flag1 = super.onPreparePanel(i1, view, menu);
                flag = flag1;
                if (h1 != null)
                {
                    h1.c(false);
                    return flag1;
                }
            }
            return flag;
        }

        a(android.view.Window.Callback callback)
        {
            a = f.this;
            super(callback);
        }
    }


    private static boolean m;
    private static final boolean n;
    private static final int o[] = {
        0x1010054
    };
    final Context a;
    final Window b;
    final android.view.Window.Callback c;
    final android.view.Window.Callback d;
    final d e;
    android.support.v7.app.a f;
    MenuInflater g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    private CharSequence p;
    private boolean q;
    private boolean r;

    f(Context context, Window window, d d1)
    {
        a = context;
        b = window;
        e = d1;
        c = b.getCallback();
        if (c instanceof a)
        {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        d = a(c);
        b.setCallback(d);
        context = aw.a(context, null, o);
        window = context.b(0);
        if (window != null)
        {
            b.setBackgroundDrawable(window);
        }
        context.a();
    }

    public android.support.v7.app.a a()
    {
        l();
        return f;
    }

    abstract b a(android.support.v7.view.b.a a1);

    android.view.Window.Callback a(android.view.Window.Callback callback)
    {
        return new a(callback);
    }

    abstract void a(int i1, Menu menu);

    public final void a(CharSequence charsequence)
    {
        p = charsequence;
        b(charsequence);
    }

    abstract boolean a(int i1, KeyEvent keyevent);

    abstract boolean a(KeyEvent keyevent);

    public MenuInflater b()
    {
        if (g == null)
        {
            l();
            Context context;
            if (f != null)
            {
                context = f.b();
            } else
            {
                context = a;
            }
            g = new g(context);
        }
        return g;
    }

    abstract void b(CharSequence charsequence);

    abstract boolean b(int i1, Menu menu);

    public void c()
    {
        q = true;
    }

    public void c(Bundle bundle)
    {
    }

    public void d()
    {
        q = false;
    }

    public void g()
    {
        r = true;
    }

    public boolean i()
    {
        return false;
    }

    abstract void l();

    final android.support.v7.app.a m()
    {
        return f;
    }

    final Context n()
    {
        Context context = null;
        Object obj = a();
        if (obj != null)
        {
            context = ((android.support.v7.app.a) (obj)).b();
        }
        obj = context;
        if (context == null)
        {
            obj = a;
        }
        return ((Context) (obj));
    }

    public boolean o()
    {
        return false;
    }

    final boolean p()
    {
        return r;
    }

    final android.view.Window.Callback q()
    {
        return b.getCallback();
    }

    final CharSequence r()
    {
        if (c instanceof Activity)
        {
            return ((Activity)c).getTitle();
        } else
        {
            return p;
        }
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        n = flag;
        if (n && !m)
        {
            Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(Thread.getDefaultUncaughtExceptionHandler()) {

                final Thread.UncaughtExceptionHandler a;

                private boolean a(Throwable throwable)
                {
                    boolean flag1;
label0:
                    {
                        boolean flag2 = false;
                        flag1 = flag2;
                        if (!(throwable instanceof android.content.res.Resources.NotFoundException))
                        {
                            break label0;
                        }
                        throwable = throwable.getMessage();
                        flag1 = flag2;
                        if (throwable == null)
                        {
                            break label0;
                        }
                        if (!throwable.contains("drawable"))
                        {
                            flag1 = flag2;
                            if (!throwable.contains("Drawable"))
                            {
                                break label0;
                            }
                        }
                        flag1 = true;
                    }
                    return flag1;
                }

                public void uncaughtException(Thread thread, Throwable throwable)
                {
                    if (a(throwable))
                    {
                        android.content.res.Resources.NotFoundException notfoundexception = new android.content.res.Resources.NotFoundException((new StringBuilder()).append(throwable.getMessage()).append(". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.").toString());
                        notfoundexception.initCause(throwable.getCause());
                        notfoundexception.setStackTrace(throwable.getStackTrace());
                        a.uncaughtException(thread, notfoundexception);
                        return;
                    } else
                    {
                        a.uncaughtException(thread, throwable);
                        return;
                    }
                }

            
            {
                a = uncaughtexceptionhandler;
                super();
            }
            });
            m = true;
        }
    }
}
