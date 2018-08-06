// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.view.b;
import android.util.TypedValue;
import android.view.View;

// Referenced classes of package android.support.v7.app:
//            d, e

public class l extends Dialog
    implements d
{

    private e a;

    public l(Context context, int i)
    {
        super(context, a(context, i));
        a().a(null);
        a().i();
    }

    private static int a(Context context, int i)
    {
        int j = i;
        if (i == 0)
        {
            TypedValue typedvalue = new TypedValue();
            context.getTheme().resolveAttribute(android.support.v7.a.a.a.dialogTheme, typedvalue, true);
            j = typedvalue.resourceId;
        }
        return j;
    }

    public e a()
    {
        if (a == null)
        {
            a = e.a(this, this);
        }
        return a;
    }

    public b a(android.support.v7.view.b.a a1)
    {
        return null;
    }

    public void a(b b1)
    {
    }

    public boolean a(int i)
    {
        return a().c(i);
    }

    public void addContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        a().b(view, layoutparams);
    }

    public void b(b b1)
    {
    }

    public View findViewById(int i)
    {
        return a().a(i);
    }

    public void invalidateOptionsMenu()
    {
        a().f();
    }

    protected void onCreate(Bundle bundle)
    {
        a().h();
        super.onCreate(bundle);
        a().a(bundle);
    }

    protected void onStop()
    {
        super.onStop();
        a().d();
    }

    public void setContentView(int i)
    {
        a().b(i);
    }

    public void setContentView(View view)
    {
        a().a(view);
    }

    public void setContentView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        a().a(view, layoutparams);
    }

    public void setTitle(int i)
    {
        super.setTitle(i);
        a().a(getContext().getString(i));
    }

    public void setTitle(CharSequence charsequence)
    {
        super.setTitle(charsequence);
        a().a(charsequence);
    }
}
