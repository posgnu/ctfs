// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h.a;

import android.graphics.Rect;
import android.view.accessibility.AccessibilityNodeInfo;

public class android.support.v4.h.a.a
{
    static class a extends i
    {

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

    static class c extends b
    {

        public String a(AccessibilityNodeInfo accessibilitynodeinfo)
        {
            return accessibilitynodeinfo.getViewIdResourceName();
        }

        c()
        {
        }
    }

    static class d extends c
    {

        d()
        {
        }
    }

    static class e extends d
    {

        e()
        {
        }
    }

    static class f extends e
    {

        f()
        {
        }
    }

    static class g extends f
    {

        g()
        {
        }
    }

    static class h extends g
    {

        h()
        {
        }
    }

    static class i
    {

        public String a(AccessibilityNodeInfo accessibilitynodeinfo)
        {
            return null;
        }

        i()
        {
        }
    }


    static final i a;
    public int b;
    private final AccessibilityNodeInfo c;

    private android.support.v4.h.a.a(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        b = -1;
        c = accessibilitynodeinfo;
    }

    public static android.support.v4.h.a.a a(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        return new android.support.v4.h.a.a(accessibilitynodeinfo);
    }

    private static String b(int i1)
    {
        switch (i1)
        {
        default:
            return "ACTION_UNKNOWN";

        case 1: // '\001'
            return "ACTION_FOCUS";

        case 2: // '\002'
            return "ACTION_CLEAR_FOCUS";

        case 4: // '\004'
            return "ACTION_SELECT";

        case 8: // '\b'
            return "ACTION_CLEAR_SELECTION";

        case 16: // '\020'
            return "ACTION_CLICK";

        case 32: // ' '
            return "ACTION_LONG_CLICK";

        case 64: // '@'
            return "ACTION_ACCESSIBILITY_FOCUS";

        case 128: 
            return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";

        case 256: 
            return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";

        case 512: 
            return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";

        case 1024: 
            return "ACTION_NEXT_HTML_ELEMENT";

        case 2048: 
            return "ACTION_PREVIOUS_HTML_ELEMENT";

        case 4096: 
            return "ACTION_SCROLL_FORWARD";

        case 8192: 
            return "ACTION_SCROLL_BACKWARD";

        case 65536: 
            return "ACTION_CUT";

        case 16384: 
            return "ACTION_COPY";

        case 32768: 
            return "ACTION_PASTE";

        case 131072: 
            return "ACTION_SET_SELECTION";
        }
    }

    public AccessibilityNodeInfo a()
    {
        return c;
    }

    public void a(int i1)
    {
        c.addAction(i1);
    }

    public void a(Rect rect)
    {
        c.getBoundsInParent(rect);
    }

    public void a(CharSequence charsequence)
    {
        c.setClassName(charsequence);
    }

    public void a(boolean flag)
    {
        c.setScrollable(flag);
    }

    public int b()
    {
        return c.getActions();
    }

    public void b(Rect rect)
    {
        c.getBoundsInScreen(rect);
    }

    public boolean c()
    {
        return c.isCheckable();
    }

    public boolean d()
    {
        return c.isChecked();
    }

    public boolean e()
    {
        return c.isFocusable();
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
        obj = (android.support.v4.h.a.a)obj;
        if (c != null)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (((android.support.v4.h.a.a) (obj)).c == null) goto _L1; else goto _L3
_L3:
        return false;
        if (c.equals(((android.support.v4.h.a.a) (obj)).c)) goto _L1; else goto _L4
_L4:
        return false;
    }

    public boolean f()
    {
        return c.isFocused();
    }

    public boolean g()
    {
        return c.isSelected();
    }

    public boolean h()
    {
        return c.isClickable();
    }

    public int hashCode()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return c.hashCode();
        }
    }

    public boolean i()
    {
        return c.isLongClickable();
    }

    public boolean j()
    {
        return c.isEnabled();
    }

    public boolean k()
    {
        return c.isPassword();
    }

    public boolean l()
    {
        return c.isScrollable();
    }

    public CharSequence m()
    {
        return c.getPackageName();
    }

    public CharSequence n()
    {
        return c.getClassName();
    }

    public CharSequence o()
    {
        return c.getText();
    }

    public CharSequence p()
    {
        return c.getContentDescription();
    }

    public String q()
    {
        return a.a(c);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        stringbuilder.append((new StringBuilder()).append("; boundsInParent: ").append(rect).toString());
        b(rect);
        stringbuilder.append((new StringBuilder()).append("; boundsInScreen: ").append(rect).toString());
        stringbuilder.append("; packageName: ").append(m());
        stringbuilder.append("; className: ").append(n());
        stringbuilder.append("; text: ").append(o());
        stringbuilder.append("; contentDescription: ").append(p());
        stringbuilder.append("; viewId: ").append(q());
        stringbuilder.append("; checkable: ").append(c());
        stringbuilder.append("; checked: ").append(d());
        stringbuilder.append("; focusable: ").append(e());
        stringbuilder.append("; focused: ").append(f());
        stringbuilder.append("; selected: ").append(g());
        stringbuilder.append("; clickable: ").append(h());
        stringbuilder.append("; longClickable: ").append(i());
        stringbuilder.append("; enabled: ").append(j());
        stringbuilder.append("; password: ").append(k());
        stringbuilder.append((new StringBuilder()).append("; scrollable: ").append(l()).toString());
        stringbuilder.append("; [");
        int i1 = b();
        do
        {
            if (i1 == 0)
            {
                break;
            }
            int k1 = 1 << Integer.numberOfTrailingZeros(i1);
            int j1 = i1 & ~k1;
            stringbuilder.append(b(k1));
            i1 = j1;
            if (j1 != 0)
            {
                stringbuilder.append(", ");
                i1 = j1;
            }
        } while (true);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 24)
        {
            a = new h();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 23)
        {
            a = new g();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 22)
        {
            a = new f();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            a = new e();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new d();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            a = new c();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 17)
        {
            a = new b();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new a();
        } else
        {
            a = new i();
        }
    }
}
