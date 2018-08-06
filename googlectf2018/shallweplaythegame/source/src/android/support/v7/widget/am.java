// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v7.view.menu.ListMenuItemView;
import android.support.v7.view.menu.g;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

// Referenced classes of package android.support.v7.widget:
//            aj, al, af

public class am extends aj
    implements al
{
    public static class a extends af
    {

        final int g;
        final int h;
        private al i;
        private MenuItem j;

        public volatile boolean a(MotionEvent motionevent, int k)
        {
            return super.a(motionevent, k);
        }

        public volatile boolean hasFocus()
        {
            return super.hasFocus();
        }

        public volatile boolean hasWindowFocus()
        {
            return super.hasWindowFocus();
        }

        public volatile boolean isFocused()
        {
            return super.isFocused();
        }

        public volatile boolean isInTouchMode()
        {
            return super.isInTouchMode();
        }

        public boolean onHoverEvent(MotionEvent motionevent)
        {
            if (i == null) goto _L2; else goto _L1
_L1:
            j j1;
            Object obj = getAdapter();
            MenuItem menuitem;
            int k;
            int l;
            if (obj instanceof HeaderViewListAdapter)
            {
                obj = (HeaderViewListAdapter)obj;
                k = ((HeaderViewListAdapter) (obj)).getHeadersCount();
                obj = (g)((HeaderViewListAdapter) (obj)).getWrappedAdapter();
            } else
            {
                k = 0;
                obj = (g)obj;
            }
            if (motionevent.getAction() == 10) goto _L4; else goto _L3
_L3:
            l = pointToPosition((int)motionevent.getX(), (int)motionevent.getY());
            if (l == -1) goto _L4; else goto _L5
_L5:
            k = l - k;
            if (k < 0 || k >= ((g) (obj)).getCount()) goto _L4; else goto _L6
_L6:
            j1 = ((g) (obj)).a(k);
_L8:
            menuitem = j;
            if (menuitem != j1)
            {
                obj = ((g) (obj)).a();
                if (menuitem != null)
                {
                    i.a(((h) (obj)), menuitem);
                }
                j = j1;
                if (j1 != null)
                {
                    i.b(((h) (obj)), j1);
                }
            }
_L2:
            return super.onHoverEvent(motionevent);
_L4:
            j1 = null;
            if (true) goto _L8; else goto _L7
_L7:
        }

        public boolean onKeyDown(int k, KeyEvent keyevent)
        {
            ListMenuItemView listmenuitemview = (ListMenuItemView)getSelectedView();
            if (listmenuitemview != null && k == g)
            {
                if (listmenuitemview.isEnabled() && listmenuitemview.getItemData().hasSubMenu())
                {
                    performItemClick(listmenuitemview, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listmenuitemview != null && k == h)
            {
                setSelection(-1);
                ((g)getAdapter()).a().a(false);
                return true;
            } else
            {
                return super.onKeyDown(k, keyevent);
            }
        }

        public void setHoverListener(al al1)
        {
            i = al1;
        }

        public a(Context context, boolean flag)
        {
            super(context, flag);
            context = context.getResources().getConfiguration();
            if (android.os.Build.VERSION.SDK_INT >= 17 && 1 == context.getLayoutDirection())
            {
                g = 21;
                h = 22;
                return;
            } else
            {
                g = 22;
                h = 21;
                return;
            }
        }
    }


    private static Method a;
    private al b;

    public am(Context context, AttributeSet attributeset, int i, int j)
    {
        super(context, attributeset, i, j);
    }

    af a(Context context, boolean flag)
    {
        context = new a(context, flag);
        context.setHoverListener(this);
        return context;
    }

    public void a(h h, MenuItem menuitem)
    {
        if (b != null)
        {
            b.a(h, menuitem);
        }
    }

    public void a(al al1)
    {
        b = al1;
    }

    public void a(Object obj)
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            g.setEnterTransition((Transition)obj);
        }
    }

    public void b(h h, MenuItem menuitem)
    {
        if (b != null)
        {
            b.b(h, menuitem);
        }
    }

    public void b(Object obj)
    {
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            g.setExitTransition((Transition)obj);
        }
    }

    public void c(boolean flag)
    {
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        a.invoke(g, new Object[] {
            Boolean.valueOf(flag)
        });
        return;
        Exception exception;
        exception;
        Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
        return;
    }

    static 
    {
        try
        {
            a = android/widget/PopupWindow.getDeclaredMethod("setTouchModal", new Class[] {
                Boolean.TYPE
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }
}
