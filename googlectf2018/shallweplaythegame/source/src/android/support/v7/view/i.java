// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class i
    implements android.view.Window.Callback
{

    final android.view.Window.Callback e;

    public i(android.view.Window.Callback callback)
    {
        if (callback == null)
        {
            throw new IllegalArgumentException("Window callback may not be null");
        } else
        {
            e = callback;
            return;
        }
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionevent)
    {
        return e.dispatchGenericMotionEvent(motionevent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        return e.dispatchKeyEvent(keyevent);
    }

    public boolean dispatchKeyShortcutEvent(KeyEvent keyevent)
    {
        return e.dispatchKeyShortcutEvent(keyevent);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        return e.dispatchPopulateAccessibilityEvent(accessibilityevent);
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        return e.dispatchTouchEvent(motionevent);
    }

    public boolean dispatchTrackballEvent(MotionEvent motionevent)
    {
        return e.dispatchTrackballEvent(motionevent);
    }

    public void onActionModeFinished(ActionMode actionmode)
    {
        e.onActionModeFinished(actionmode);
    }

    public void onActionModeStarted(ActionMode actionmode)
    {
        e.onActionModeStarted(actionmode);
    }

    public void onAttachedToWindow()
    {
        e.onAttachedToWindow();
    }

    public void onContentChanged()
    {
        e.onContentChanged();
    }

    public boolean onCreatePanelMenu(int j, Menu menu)
    {
        return e.onCreatePanelMenu(j, menu);
    }

    public View onCreatePanelView(int j)
    {
        return e.onCreatePanelView(j);
    }

    public void onDetachedFromWindow()
    {
        e.onDetachedFromWindow();
    }

    public boolean onMenuItemSelected(int j, MenuItem menuitem)
    {
        return e.onMenuItemSelected(j, menuitem);
    }

    public boolean onMenuOpened(int j, Menu menu)
    {
        return e.onMenuOpened(j, menu);
    }

    public void onPanelClosed(int j, Menu menu)
    {
        e.onPanelClosed(j, menu);
    }

    public void onPointerCaptureChanged(boolean flag)
    {
        e.onPointerCaptureChanged(flag);
    }

    public boolean onPreparePanel(int j, View view, Menu menu)
    {
        return e.onPreparePanel(j, view, menu);
    }

    public void onProvideKeyboardShortcuts(List list, Menu menu, int j)
    {
        e.onProvideKeyboardShortcuts(list, menu, j);
    }

    public boolean onSearchRequested()
    {
        return e.onSearchRequested();
    }

    public boolean onSearchRequested(SearchEvent searchevent)
    {
        return e.onSearchRequested(searchevent);
    }

    public void onWindowAttributesChanged(android.view.WindowManager.LayoutParams layoutparams)
    {
        e.onWindowAttributesChanged(layoutparams);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        e.onWindowFocusChanged(flag);
    }

    public ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback)
    {
        return e.onWindowStartingActionMode(callback);
    }

    public ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback, int j)
    {
        return e.onWindowStartingActionMode(callback, j);
    }
}
