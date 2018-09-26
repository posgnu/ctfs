// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.view.View;

// Referenced classes of package android.support.v7.widget:
//            ap, ai

private class a
    implements android.view.OnClickListener
{

    final ap a;

    public void onClick(View view)
    {
        ((er)view).b().();
        int j = a.b.getChildCount();
        int i = 0;
        while (i < j) 
        {
            View view1 = a.b.getChildAt(i);
            boolean flag;
            if (view1 == view)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            view1.setSelected(flag);
            i++;
        }
    }

    er(ap ap1)
    {
        a = ap1;
        super();
    }
}
