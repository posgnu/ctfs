// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.d.a;

import android.content.res.ColorStateList;
import android.support.v4.h.c;
import android.view.MenuItem;
import android.view.View;

public interface b
    extends MenuItem
{

    public abstract b a(c c);

    public abstract b a(CharSequence charsequence);

    public abstract c a();

    public abstract b b(CharSequence charsequence);

    public abstract boolean collapseActionView();

    public abstract boolean expandActionView();

    public abstract View getActionView();

    public abstract int getAlphabeticModifiers();

    public abstract CharSequence getContentDescription();

    public abstract ColorStateList getIconTintList();

    public abstract android.graphics.PorterDuff.Mode getIconTintMode();

    public abstract int getNumericModifiers();

    public abstract CharSequence getTooltipText();

    public abstract boolean isActionViewExpanded();

    public abstract MenuItem setActionView(int i);

    public abstract MenuItem setActionView(View view);

    public abstract MenuItem setAlphabeticShortcut(char c, int i);

    public abstract MenuItem setIconTintList(ColorStateList colorstatelist);

    public abstract MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode);

    public abstract MenuItem setNumericShortcut(char c, int i);

    public abstract MenuItem setShortcut(char c, char c1, int i, int j);

    public abstract void setShowAsAction(int i);

    public abstract MenuItem setShowAsActionFlags(int i);
}
