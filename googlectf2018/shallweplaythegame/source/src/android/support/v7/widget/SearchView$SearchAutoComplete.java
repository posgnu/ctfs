// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;

// Referenced classes of package android.support.v7.widget:
//            f, SearchView

public static class getThreshold extends f
{

    final Runnable a;
    private int b;
    private SearchView c;
    private boolean d;

    private void a()
    {
        if (d)
        {
            ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(this, 0);
            d = false;
        }
    }

    static void a(d d1)
    {
        d1.a();
    }

    static void a(a a1, boolean flag)
    {
        a1.setImeVisibility(flag);
    }

    private int getSearchViewTextMinWidthDp()
    {
        Configuration configuration = getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int j = configuration.screenHeightDp;
        if (i >= 960 && j >= 720 && configuration.orientation == 2)
        {
            return 256;
        }
        return i < 600 && (i < 640 || j < 480) ? 160 : 192;
    }

    private void setImeVisibility(boolean flag)
    {
        InputMethodManager inputmethodmanager = (InputMethodManager)getContext().getSystemService("input_method");
        if (!flag)
        {
            d = false;
            removeCallbacks(a);
            inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
            return;
        }
        if (inputmethodmanager.isActive(this))
        {
            d = false;
            removeCallbacks(a);
            inputmethodmanager.showSoftInput(this, 0);
            return;
        } else
        {
            d = true;
            return;
        }
    }

    public boolean enoughToFilter()
    {
        return b <= 0 || super.enoughToFilter();
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        editorinfo = super.onCreateInputConnection(editorinfo);
        if (d)
        {
            removeCallbacks(a);
            post(a);
        }
        return editorinfo;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        android.util.DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        setMinWidth((int)TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), displaymetrics));
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        c.g();
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            if (keyevent.getAction() == 0 && keyevent.getRepeatCount() == 0)
            {
                android.view.AutoComplete autocomplete = getKeyDispatcherState();
                if (autocomplete != null)
                {
                    autocomplete.Tracking(keyevent, this);
                }
                return true;
            }
            if (keyevent.getAction() == 1)
            {
                android.view.AutoComplete autocomplete1 = getKeyDispatcherState();
                if (autocomplete1 != null)
                {
                    autocomplete1.eUpEvent(keyevent);
                }
                if (keyevent.isTracking() && !keyevent.isCanceled())
                {
                    c.clearFocus();
                    setImeVisibility(false);
                    return true;
                }
            }
        }
        return super.onKeyPreIme(i, keyevent);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag && c.hasFocus() && getVisibility() == 0)
        {
            d = true;
            if (SearchView.a(getContext()))
            {
                SearchView.i.getContext(this, true);
            }
        }
    }

    public void performCompletion()
    {
    }

    protected void replaceText(CharSequence charsequence)
    {
    }

    void setSearchView(SearchView searchview)
    {
        c = searchview;
    }

    public void setThreshold(int i)
    {
        super.setThreshold(i);
        b = i;
    }

    public _cls1.a(Context context)
    {
        this(context, null);
    }

    public <init>(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, android.support.v7.a.lete);
    }

    public <init>(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = new Runnable() {

            final SearchView.SearchAutoComplete a;

            public void run()
            {
                SearchView.SearchAutoComplete.a(a);
            }

            
            {
                a = SearchView.SearchAutoComplete.this;
                super();
            }
        };
        b = getThreshold();
    }
}
