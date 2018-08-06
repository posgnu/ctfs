// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h.a;

import android.view.accessibility.AccessibilityRecord;

public class e
{
    static class a extends c
    {

        public void a(AccessibilityRecord accessibilityrecord, int i)
        {
            accessibilityrecord.setMaxScrollX(i);
        }

        public void b(AccessibilityRecord accessibilityrecord, int i)
        {
            accessibilityrecord.setMaxScrollY(i);
        }

        a()
        {
        }
    }

    static class b extends a
    {

        b()
        {
        }
    }

    static class c
    {

        public void a(AccessibilityRecord accessibilityrecord, int i)
        {
        }

        public void b(AccessibilityRecord accessibilityrecord, int i)
        {
        }

        c()
        {
        }
    }


    private static final c a;
    private final AccessibilityRecord b;

    public static void a(AccessibilityRecord accessibilityrecord, int i)
    {
        a.a(accessibilityrecord, i);
    }

    public static void b(AccessibilityRecord accessibilityrecord, int i)
    {
        a.b(accessibilityrecord, i);
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        obj = (e)obj;
        if (b != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((e) (obj)).b == null) goto _L1; else goto _L3
_L3:
        return false;
        if (b.equals(((e) (obj)).b)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public int hashCode()
    {
        if (b == null)
        {
            return 0;
        } else
        {
            return b.hashCode();
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 15)
        {
            a = new a();
        } else
        {
            a = new c();
        }
    }
}
