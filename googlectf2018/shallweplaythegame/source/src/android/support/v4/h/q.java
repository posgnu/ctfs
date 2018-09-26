// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;

// Referenced classes of package android.support.v4.h:
//            l, k

public final class q
{
    static class a extends c
    {

        a()
        {
        }
    }

    static class b extends a
    {

        public void a(ViewParent viewparent, View view)
        {
            try
            {
                viewparent.onStopNestedScroll(view);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder()).append("ViewParent ").append(viewparent).append(" does not implement interface ").append("method onStopNestedScroll").toString(), view);
            }
        }

        public void a(ViewParent viewparent, View view, int i, int j, int k, int i1)
        {
            try
            {
                viewparent.onNestedScroll(view, i, j, k, i1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder()).append("ViewParent ").append(viewparent).append(" does not implement interface ").append("method onNestedScroll").toString(), view);
            }
        }

        public void a(ViewParent viewparent, View view, int i, int j, int ai[])
        {
            try
            {
                viewparent.onNestedPreScroll(view, i, j, ai);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder()).append("ViewParent ").append(viewparent).append(" does not implement interface ").append("method onNestedPreScroll").toString(), view);
            }
        }

        public boolean a(ViewParent viewparent, View view, float f, float f1)
        {
            boolean flag;
            try
            {
                flag = viewparent.onNestedPreFling(view, f, f1);
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder()).append("ViewParent ").append(viewparent).append(" does not implement interface ").append("method onNestedPreFling").toString(), view);
                return false;
            }
            return flag;
        }

        public boolean a(ViewParent viewparent, View view, float f, float f1, boolean flag)
        {
            try
            {
                flag = viewparent.onNestedFling(view, f, f1, flag);
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder()).append("ViewParent ").append(viewparent).append(" does not implement interface ").append("method onNestedFling").toString(), view);
                return false;
            }
            return flag;
        }

        public boolean a(ViewParent viewparent, View view, View view1, int i)
        {
            boolean flag;
            try
            {
                flag = viewparent.onStartNestedScroll(view, view1, i);
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder()).append("ViewParent ").append(viewparent).append(" does not implement interface ").append("method onStartNestedScroll").toString(), view);
                return false;
            }
            return flag;
        }

        public void b(ViewParent viewparent, View view, View view1, int i)
        {
            try
            {
                viewparent.onNestedScrollAccepted(view, view1, i);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                Log.e("ViewParentCompat", (new StringBuilder()).append("ViewParent ").append(viewparent).append(" does not implement interface ").append("method onNestedScrollAccepted").toString(), view);
            }
        }

        b()
        {
        }
    }

    static class c
    {

        public void a(ViewParent viewparent, View view)
        {
            if (viewparent instanceof k)
            {
                ((k)viewparent).onStopNestedScroll(view);
            }
        }

        public void a(ViewParent viewparent, View view, int i, int j, int i1, int j1)
        {
            if (viewparent instanceof k)
            {
                ((k)viewparent).onNestedScroll(view, i, j, i1, j1);
            }
        }

        public void a(ViewParent viewparent, View view, int i, int j, int ai[])
        {
            if (viewparent instanceof k)
            {
                ((k)viewparent).onNestedPreScroll(view, i, j, ai);
            }
        }

        public boolean a(ViewParent viewparent, View view, float f, float f1)
        {
            if (viewparent instanceof k)
            {
                return ((k)viewparent).onNestedPreFling(view, f, f1);
            } else
            {
                return false;
            }
        }

        public boolean a(ViewParent viewparent, View view, float f, float f1, boolean flag)
        {
            if (viewparent instanceof k)
            {
                return ((k)viewparent).onNestedFling(view, f, f1, flag);
            } else
            {
                return false;
            }
        }

        public boolean a(ViewParent viewparent, View view, View view1, int i)
        {
            if (viewparent instanceof k)
            {
                return ((k)viewparent).onStartNestedScroll(view, view1, i);
            } else
            {
                return false;
            }
        }

        public void b(ViewParent viewparent, View view, View view1, int i)
        {
            if (viewparent instanceof k)
            {
                ((k)viewparent).onNestedScrollAccepted(view, view1, i);
            }
        }

        c()
        {
        }
    }


    static final c a;

    public static void a(ViewParent viewparent, View view, int i)
    {
        if (viewparent instanceof l)
        {
            ((l)viewparent).a(view, i);
        } else
        if (i == 0)
        {
            a.a(viewparent, view);
            return;
        }
    }

    public static void a(ViewParent viewparent, View view, int i, int j, int k, int i1, int j1)
    {
        if (viewparent instanceof l)
        {
            ((l)viewparent).a(view, i, j, k, i1, j1);
        } else
        if (j1 == 0)
        {
            a.a(viewparent, view, i, j, k, i1);
            return;
        }
    }

    public static void a(ViewParent viewparent, View view, int i, int j, int ai[], int k)
    {
        if (viewparent instanceof l)
        {
            ((l)viewparent).a(view, i, j, ai, k);
        } else
        if (k == 0)
        {
            a.a(viewparent, view, i, j, ai);
            return;
        }
    }

    public static boolean a(ViewParent viewparent, View view, float f, float f1)
    {
        return a.a(viewparent, view, f, f1);
    }

    public static boolean a(ViewParent viewparent, View view, float f, float f1, boolean flag)
    {
        return a.a(viewparent, view, f, f1, flag);
    }

    public static boolean a(ViewParent viewparent, View view, View view1, int i, int j)
    {
        if (viewparent instanceof l)
        {
            return ((l)viewparent).a(view, view1, i, j);
        }
        if (j == 0)
        {
            return a.a(viewparent, view, view1, i);
        } else
        {
            return false;
        }
    }

    public static void b(ViewParent viewparent, View view, View view1, int i, int j)
    {
        if (viewparent instanceof l)
        {
            ((l)viewparent).b(view, view1, i, j);
        } else
        if (j == 0)
        {
            a.b(viewparent, view, view1, i);
            return;
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new a();
        } else
        {
            a = new c();
        }
    }
}
