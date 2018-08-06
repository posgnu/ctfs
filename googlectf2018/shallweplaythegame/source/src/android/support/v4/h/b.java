// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.os.Bundle;
import android.support.v4.h.a.a;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

public class android.support.v4.h.b
{
    static class a extends b
    {

        public android.support.v4.h.a.b a(android.view.View.AccessibilityDelegate accessibilitydelegate, View view)
        {
            accessibilitydelegate = accessibilitydelegate.getAccessibilityNodeProvider(view);
            if (accessibilitydelegate != null)
            {
                return new android.support.v4.h.a.b(accessibilitydelegate);
            } else
            {
                return null;
            }
        }

        public android.view.View.AccessibilityDelegate a(android.support.v4.h.b b1)
        {
            return new android.view.View.AccessibilityDelegate(this, b1) {

                final android.support.v4.h.b a;
                final a b;

                public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
                {
                    return a.b(view, accessibilityevent);
                }

                public AccessibilityNodeProvider getAccessibilityNodeProvider(View view)
                {
                    view = a.a(view);
                    if (view != null)
                    {
                        return (AccessibilityNodeProvider)view.a();
                    } else
                    {
                        return null;
                    }
                }

                public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
                {
                    a.d(view, accessibilityevent);
                }

                public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilitynodeinfo)
                {
                    a.a(view, android.support.v4.h.a.a.a(accessibilitynodeinfo));
                }

                public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
                {
                    a.c(view, accessibilityevent);
                }

                public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
                {
                    return a.a(viewgroup, view, accessibilityevent);
                }

                public boolean performAccessibilityAction(View view, int i, Bundle bundle)
                {
                    return a.a(view, i, bundle);
                }

                public void sendAccessibilityEvent(View view, int i)
                {
                    a.a(view, i);
                }

                public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityevent)
                {
                    a.a(view, accessibilityevent);
                }

            
            {
                b = a1;
                a = b1;
                super();
            }
            };
        }

        public boolean a(android.view.View.AccessibilityDelegate accessibilitydelegate, View view, int i, Bundle bundle)
        {
            return accessibilitydelegate.performAccessibilityAction(view, i, bundle);
        }

        a()
        {
        }
    }

    static class b
    {

        public android.support.v4.h.a.b a(android.view.View.AccessibilityDelegate accessibilitydelegate, View view)
        {
            return null;
        }

        public android.view.View.AccessibilityDelegate a(android.support.v4.h.b b1)
        {
            return new android.view.View.AccessibilityDelegate(this, b1) {

                final android.support.v4.h.b a;
                final b b;

                public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
                {
                    return a.b(view, accessibilityevent);
                }

                public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
                {
                    a.d(view, accessibilityevent);
                }

                public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilitynodeinfo)
                {
                    a.a(view, android.support.v4.h.a.a.a(accessibilitynodeinfo));
                }

                public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
                {
                    a.c(view, accessibilityevent);
                }

                public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
                {
                    return a.a(viewgroup, view, accessibilityevent);
                }

                public void sendAccessibilityEvent(View view, int i)
                {
                    a.a(view, i);
                }

                public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityevent)
                {
                    a.a(view, accessibilityevent);
                }

            
            {
                b = b1;
                a = b2;
                super();
            }
            };
        }

        public boolean a(android.view.View.AccessibilityDelegate accessibilitydelegate, View view, int i, Bundle bundle)
        {
            return false;
        }

        b()
        {
        }
    }


    private static final b b;
    private static final android.view.View.AccessibilityDelegate c = new android.view.View.AccessibilityDelegate();
    final android.view.View.AccessibilityDelegate a;

    public android.support.v4.h.b()
    {
        a = b.a(this);
    }

    public android.support.v4.h.a.b a(View view)
    {
        return b.a(c, view);
    }

    android.view.View.AccessibilityDelegate a()
    {
        return a;
    }

    public void a(View view, int i)
    {
        c.sendAccessibilityEvent(view, i);
    }

    public void a(View view, android.support.v4.h.a.a a1)
    {
        c.onInitializeAccessibilityNodeInfo(view, a1.a());
    }

    public void a(View view, AccessibilityEvent accessibilityevent)
    {
        c.sendAccessibilityEventUnchecked(view, accessibilityevent);
    }

    public boolean a(View view, int i, Bundle bundle)
    {
        return b.a(c, view, i, bundle);
    }

    public boolean a(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        return c.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
    }

    public boolean b(View view, AccessibilityEvent accessibilityevent)
    {
        return c.dispatchPopulateAccessibilityEvent(view, accessibilityevent);
    }

    public void c(View view, AccessibilityEvent accessibilityevent)
    {
        c.onPopulateAccessibilityEvent(view, accessibilityevent);
    }

    public void d(View view, AccessibilityEvent accessibilityevent)
    {
        c.onInitializeAccessibilityEvent(view, accessibilityevent);
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            b = new a();
        } else
        {
            b = new b();
        }
    }
}
