// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.view.View;
import android.view.ViewGroup;

public class m
{

    private final ViewGroup a;
    private int b;

    public m(ViewGroup viewgroup)
    {
        a = viewgroup;
    }

    public int a()
    {
        return b;
    }

    public void a(View view)
    {
        a(view, 0);
    }

    public void a(View view, int i)
    {
        b = 0;
    }

    public void a(View view, View view1, int i)
    {
        a(view, view1, i, 0);
    }

    public void a(View view, View view1, int i, int j)
    {
        b = i;
    }
}
