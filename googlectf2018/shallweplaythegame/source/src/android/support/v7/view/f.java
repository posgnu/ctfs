// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.content.Context;
import android.support.v4.d.a.a;
import android.support.v4.d.a.b;
import android.support.v4.g.k;
import android.support.v7.view.menu.q;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.view:
//            b

public class f extends ActionMode
{
    public static class a
        implements b.a
    {

        final android.view.ActionMode.Callback a;
        final Context b;
        final ArrayList c = new ArrayList();
        final k d = new k();

        private Menu a(Menu menu)
        {
            Menu menu2 = (Menu)d.get(menu);
            Menu menu1 = menu2;
            if (menu2 == null)
            {
                menu1 = q.a(b, (android.support.v4.d.a.a)menu);
                d.put(menu, menu1);
            }
            return menu1;
        }

        public void a(android.support.v7.view.b b1)
        {
            a.onDestroyActionMode(b(b1));
        }

        public boolean a(android.support.v7.view.b b1, Menu menu)
        {
            return a.onCreateActionMode(b(b1), a(menu));
        }

        public boolean a(android.support.v7.view.b b1, MenuItem menuitem)
        {
            return a.onActionItemClicked(b(b1), q.a(b, (b)menuitem));
        }

        public ActionMode b(android.support.v7.view.b b1)
        {
            int j = c.size();
            for (int i = 0; i < j; i++)
            {
                f f1 = (f)c.get(i);
                if (f1 != null && f1.b == b1)
                {
                    return f1;
                }
            }

            b1 = new f(b, b1);
            c.add(b1);
            return b1;
        }

        public boolean b(android.support.v7.view.b b1, Menu menu)
        {
            return a.onPrepareActionMode(b(b1), a(menu));
        }

        public a(Context context, android.view.ActionMode.Callback callback)
        {
            b = context;
            a = callback;
        }
    }


    final Context a;
    final android.support.v7.view.b b;

    public f(Context context, android.support.v7.view.b b1)
    {
        a = context;
        b = b1;
    }

    public void finish()
    {
        b.c();
    }

    public View getCustomView()
    {
        return b.i();
    }

    public Menu getMenu()
    {
        return q.a(a, (android.support.v4.d.a.a)b.b());
    }

    public MenuInflater getMenuInflater()
    {
        return b.a();
    }

    public CharSequence getSubtitle()
    {
        return b.g();
    }

    public Object getTag()
    {
        return b.j();
    }

    public CharSequence getTitle()
    {
        return b.f();
    }

    public boolean getTitleOptionalHint()
    {
        return b.k();
    }

    public void invalidate()
    {
        b.d();
    }

    public boolean isTitleOptional()
    {
        return b.h();
    }

    public void setCustomView(View view)
    {
        b.a(view);
    }

    public void setSubtitle(int i)
    {
        b.b(i);
    }

    public void setSubtitle(CharSequence charsequence)
    {
        b.a(charsequence);
    }

    public void setTag(Object obj)
    {
        b.a(obj);
    }

    public void setTitle(int i)
    {
        b.a(i);
    }

    public void setTitle(CharSequence charsequence)
    {
        b.b(charsequence);
    }

    public void setTitleOptionalHint(boolean flag)
    {
        b.a(flag);
    }
}
