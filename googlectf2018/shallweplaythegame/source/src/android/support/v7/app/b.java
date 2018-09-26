// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;

// Referenced classes of package android.support.v7.app:
//            l, AlertController

public class b extends l
    implements DialogInterface
{
    public static class a
    {

        private final AlertController.a a;
        private final int b;

        public Context a()
        {
            return a.a;
        }

        public a a(android.content.DialogInterface.OnKeyListener onkeylistener)
        {
            a.r = onkeylistener;
            return this;
        }

        public a a(Drawable drawable)
        {
            a.d = drawable;
            return this;
        }

        public a a(View view)
        {
            a.g = view;
            return this;
        }

        public a a(ListAdapter listadapter, android.content.DialogInterface.OnClickListener onclicklistener)
        {
            a.t = listadapter;
            a.u = onclicklistener;
            return this;
        }

        public a a(CharSequence charsequence)
        {
            a.f = charsequence;
            return this;
        }

        public b b()
        {
            b b1 = new b(a.a, b);
            a.a(b1.a);
            b1.setCancelable(a.o);
            if (a.o)
            {
                b1.setCanceledOnTouchOutside(true);
            }
            b1.setOnCancelListener(a.p);
            b1.setOnDismissListener(a.q);
            if (a.r != null)
            {
                b1.setOnKeyListener(a.r);
            }
            return b1;
        }

        public a(Context context)
        {
            this(context, b.a(context, 0));
        }

        public a(Context context, int i)
        {
            a = new AlertController.a(new ContextThemeWrapper(context, b.a(context, i)));
            b = i;
        }
    }


    final AlertController a = new AlertController(getContext(), this, getWindow());

    protected b(Context context, int i)
    {
        super(context, a(context, i));
    }

    static int a(Context context, int i)
    {
        if ((i >>> 24 & 0xff) >= 1)
        {
            return i;
        } else
        {
            TypedValue typedvalue = new TypedValue();
            context.getTheme().resolveAttribute(android.support.v7.a.a.a.alertDialogTheme, typedvalue, true);
            return typedvalue.resourceId;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a.a();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (a.a(i, keyevent))
        {
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if (a.b(i, keyevent))
        {
            return true;
        } else
        {
            return super.onKeyUp(i, keyevent);
        }
    }

    public void setTitle(CharSequence charsequence)
    {
        super.setTitle(charsequence);
        a.a(charsequence);
    }
}
