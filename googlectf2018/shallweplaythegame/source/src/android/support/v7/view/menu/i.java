// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.support.v7.app.b;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.ListAdapter;

// Referenced classes of package android.support.v7.view.menu:
//            h, f, j

class i
    implements android.content.DialogInterface.OnClickListener, android.content.DialogInterface.OnDismissListener, android.content.DialogInterface.OnKeyListener, o.a
{

    f a;
    private h b;
    private b c;
    private o.a d;

    public i(h h1)
    {
        b = h1;
    }

    public void a()
    {
        if (c != null)
        {
            c.dismiss();
        }
    }

    public void a(IBinder ibinder)
    {
        Object obj = b;
        android.support.v7.app.b.a a1 = new android.support.v7.app.b.a(((h) (obj)).e());
        a = new f(a1.a(), android.support.v7.a.a.g.abc_list_menu_item_layout);
        a.a(this);
        b.a(a);
        a1.a(a.a(), this);
        View view = ((h) (obj)).o();
        if (view != null)
        {
            a1.a(view);
        } else
        {
            a1.a(((h) (obj)).n()).a(((h) (obj)).m());
        }
        a1.a(this);
        c = a1.b();
        c.setOnDismissListener(this);
        obj = c.getWindow().getAttributes();
        obj.type = 1003;
        if (ibinder != null)
        {
            obj.token = ibinder;
        }
        obj.flags = ((android.view.WindowManager.LayoutParams) (obj)).flags | 0x20000;
        c.show();
    }

    public void a(h h1, boolean flag)
    {
        if (flag || h1 == b)
        {
            a();
        }
        if (d != null)
        {
            d.a(h1, flag);
        }
    }

    public boolean a(h h1)
    {
        if (d != null)
        {
            return d.a(h1);
        } else
        {
            return false;
        }
    }

    public void onClick(DialogInterface dialoginterface, int k)
    {
        b.a((j)a.a().getItem(k), 0);
    }

    public void onDismiss(DialogInterface dialoginterface)
    {
        a.a(b, true);
    }

    public boolean onKey(DialogInterface dialoginterface, int k, KeyEvent keyevent)
    {
        if (k == 82 || k == 4)
        {
            if (keyevent.getAction() == 0 && keyevent.getRepeatCount() == 0)
            {
                dialoginterface = c.getWindow();
                if (dialoginterface != null)
                {
                    dialoginterface = dialoginterface.getDecorView();
                    if (dialoginterface != null)
                    {
                        dialoginterface = dialoginterface.getKeyDispatcherState();
                        if (dialoginterface != null)
                        {
                            dialoginterface.startTracking(keyevent, this);
                            return true;
                        }
                    }
                }
            } else
            if (keyevent.getAction() == 1 && !keyevent.isCanceled())
            {
                Object obj = c.getWindow();
                if (obj != null)
                {
                    obj = ((Window) (obj)).getDecorView();
                    if (obj != null)
                    {
                        obj = ((View) (obj)).getKeyDispatcherState();
                        if (obj != null && ((android.view.KeyEvent.DispatcherState) (obj)).isTracking(keyevent))
                        {
                            b.a(true);
                            dialoginterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return b.performShortcut(k, keyevent, 0);
    }
}
