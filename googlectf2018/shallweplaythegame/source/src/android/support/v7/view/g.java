// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.v4.d.a.a;
import android.support.v4.h.c;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.k;
import android.support.v7.widget.ae;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class g extends MenuInflater
{
    private static class a
        implements android.view.MenuItem.OnMenuItemClickListener
    {

        private static final Class a[] = {
            android/view/MenuItem
        };
        private Object b;
        private Method c;

        public boolean onMenuItemClick(MenuItem menuitem)
        {
            try
            {
                if (c.getReturnType() == Boolean.TYPE)
                {
                    return ((Boolean)c.invoke(b, new Object[] {
                        menuitem
                    })).booleanValue();
                }
                c.invoke(b, new Object[] {
                    menuitem
                });
            }
            // Misplaced declaration of an exception variable
            catch (MenuItem menuitem)
            {
                throw new RuntimeException(menuitem);
            }
            return true;
        }


        public a(Object obj, String s)
        {
            b = obj;
            Class class1 = obj.getClass();
            try
            {
                c = class1.getMethod(s, a);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                s = new InflateException((new StringBuilder()).append("Couldn't resolve menu item onClick handler ").append(s).append(" in class ").append(class1.getName()).toString());
            }
            s.initCause(((Throwable) (obj)));
            throw s;
        }
    }

    private class b
    {

        private String A;
        private String B;
        private CharSequence C;
        private CharSequence D;
        private ColorStateList E;
        private android.graphics.PorterDuff.Mode F;
        c a;
        final g b;
        private Menu c;
        private int d;
        private int e;
        private int f;
        private int g;
        private boolean h;
        private boolean i;
        private boolean j;
        private int k;
        private int l;
        private CharSequence m;
        private CharSequence n;
        private int o;
        private char p;
        private int q;
        private char r;
        private int s;
        private int t;
        private boolean u;
        private boolean v;
        private boolean w;
        private int x;
        private int y;
        private String z;

        private char a(String s1)
        {
            if (s1 == null)
            {
                return '\0';
            } else
            {
                return s1.charAt(0);
            }
        }

        private Object a(String s1, Class aclass[], Object aobj[])
        {
            try
            {
                aclass = b.e.getClassLoader().loadClass(s1).getConstructor(aclass);
                aclass.setAccessible(true);
                aclass = ((Class []) (aclass.newInstance(aobj)));
            }
            // Misplaced declaration of an exception variable
            catch (Class aclass[])
            {
                Log.w("SupportMenuInflater", (new StringBuilder()).append("Cannot instantiate class: ").append(s1).toString(), aclass);
                return null;
            }
            return aclass;
        }

        private void a(MenuItem menuitem)
        {
            boolean flag = true;
            Object obj = menuitem.setChecked(u).setVisible(v).setEnabled(w);
            boolean flag1;
            if (t >= 1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            ((MenuItem) (obj)).setCheckable(flag1).setTitleCondensed(n).setIcon(o);
            if (x >= 0)
            {
                menuitem.setShowAsAction(x);
            }
            if (B != null)
            {
                if (b.e.isRestricted())
                {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
                menuitem.setOnMenuItemClickListener(new a(b.a(), B));
            }
            if (menuitem instanceof j)
            {
                obj = (j)menuitem;
            }
            if (t >= 2)
            {
                if (menuitem instanceof j)
                {
                    ((j)menuitem).a(true);
                } else
                if (menuitem instanceof k)
                {
                    ((k)menuitem).a(true);
                }
            }
            if (z != null)
            {
                menuitem.setActionView((View)a(z, android.support.v7.view.g.a, b.c));
            } else
            {
                flag = false;
            }
            if (y > 0)
            {
                if (!flag)
                {
                    menuitem.setActionView(y);
                } else
                {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            if (a != null)
            {
                android.support.v4.h.g.a(menuitem, a);
            }
            android.support.v4.h.g.a(menuitem, C);
            android.support.v4.h.g.b(menuitem, D);
            android.support.v4.h.g.b(menuitem, p, q);
            android.support.v4.h.g.a(menuitem, r, s);
            if (F != null)
            {
                android.support.v4.h.g.a(menuitem, F);
            }
            if (E != null)
            {
                android.support.v4.h.g.a(menuitem, E);
            }
        }

        public void a()
        {
            d = 0;
            e = 0;
            f = 0;
            g = 0;
            h = true;
            i = true;
        }

        public void a(AttributeSet attributeset)
        {
            attributeset = b.e.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.MenuGroup);
            d = attributeset.getResourceId(android.support.v7.a.a.j.MenuGroup_android_id, 0);
            e = attributeset.getInt(android.support.v7.a.a.j.MenuGroup_android_menuCategory, 0);
            f = attributeset.getInt(android.support.v7.a.a.j.MenuGroup_android_orderInCategory, 0);
            g = attributeset.getInt(android.support.v7.a.a.j.MenuGroup_android_checkableBehavior, 0);
            h = attributeset.getBoolean(android.support.v7.a.a.j.MenuGroup_android_visible, true);
            i = attributeset.getBoolean(android.support.v7.a.a.j.MenuGroup_android_enabled, true);
            attributeset.recycle();
        }

        public void b()
        {
            j = true;
            a(c.add(d, k, l, m));
        }

        public void b(AttributeSet attributeset)
        {
            boolean flag = true;
            attributeset = b.e.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.MenuItem);
            k = attributeset.getResourceId(android.support.v7.a.a.j.MenuItem_android_id, 0);
            l = attributeset.getInt(android.support.v7.a.a.j.MenuItem_android_menuCategory, e) & 0xffff0000 | attributeset.getInt(android.support.v7.a.a.j.MenuItem_android_orderInCategory, f) & 0xffff;
            m = attributeset.getText(android.support.v7.a.a.j.MenuItem_android_title);
            n = attributeset.getText(android.support.v7.a.a.j.MenuItem_android_titleCondensed);
            o = attributeset.getResourceId(android.support.v7.a.a.j.MenuItem_android_icon, 0);
            p = a(attributeset.getString(android.support.v7.a.a.j.MenuItem_android_alphabeticShortcut));
            q = attributeset.getInt(android.support.v7.a.a.j.MenuItem_alphabeticModifiers, 4096);
            r = a(attributeset.getString(android.support.v7.a.a.j.MenuItem_android_numericShortcut));
            s = attributeset.getInt(android.support.v7.a.a.j.MenuItem_numericModifiers, 4096);
            int i1;
            if (attributeset.hasValue(android.support.v7.a.a.j.MenuItem_android_checkable))
            {
                if (attributeset.getBoolean(android.support.v7.a.a.j.MenuItem_android_checkable, false))
                {
                    i1 = 1;
                } else
                {
                    i1 = 0;
                }
                t = i1;
            } else
            {
                t = g;
            }
            u = attributeset.getBoolean(android.support.v7.a.a.j.MenuItem_android_checked, false);
            v = attributeset.getBoolean(android.support.v7.a.a.j.MenuItem_android_visible, h);
            w = attributeset.getBoolean(android.support.v7.a.a.j.MenuItem_android_enabled, i);
            x = attributeset.getInt(android.support.v7.a.a.j.MenuItem_showAsAction, -1);
            B = attributeset.getString(android.support.v7.a.a.j.MenuItem_android_onClick);
            y = attributeset.getResourceId(android.support.v7.a.a.j.MenuItem_actionLayout, 0);
            z = attributeset.getString(android.support.v7.a.a.j.MenuItem_actionViewClass);
            A = attributeset.getString(android.support.v7.a.a.j.MenuItem_actionProviderClass);
            if (A != null)
            {
                i1 = ((flag) ? 1 : 0);
            } else
            {
                i1 = 0;
            }
            if (i1 != 0 && y == 0 && z == null)
            {
                a = (c)a(A, g.b, b.d);
            } else
            {
                if (i1 != 0)
                {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                a = null;
            }
            C = attributeset.getText(android.support.v7.a.a.j.MenuItem_contentDescription);
            D = attributeset.getText(android.support.v7.a.a.j.MenuItem_tooltipText);
            if (attributeset.hasValue(android.support.v7.a.a.j.MenuItem_iconTintMode))
            {
                F = ae.a(attributeset.getInt(android.support.v7.a.a.j.MenuItem_iconTintMode, -1), F);
            } else
            {
                F = null;
            }
            if (attributeset.hasValue(android.support.v7.a.a.j.MenuItem_iconTint))
            {
                E = attributeset.getColorStateList(android.support.v7.a.a.j.MenuItem_iconTint);
            } else
            {
                E = null;
            }
            attributeset.recycle();
            j = false;
        }

        public SubMenu c()
        {
            j = true;
            SubMenu submenu = c.addSubMenu(d, k, l, m);
            a(submenu.getItem());
            return submenu;
        }

        public boolean d()
        {
            return j;
        }

        public b(Menu menu)
        {
            b = g.this;
            super();
            E = null;
            F = null;
            c = menu;
            a();
        }
    }


    static final Class a[] = {
        android/content/Context
    };
    static final Class b[] = a;
    final Object c[];
    final Object d[];
    Context e;
    private Object f;

    public g(Context context)
    {
        super(context);
        e = context;
        c = (new Object[] {
            context
        });
        d = c;
    }

    private Object a(Object obj)
    {
        while ((obj instanceof Activity) || !(obj instanceof ContextWrapper)) 
        {
            return obj;
        }
        return a(((ContextWrapper)obj).getBaseContext());
    }

    private void a(XmlPullParser xmlpullparser, AttributeSet attributeset, Menu menu)
    {
        b b1;
        int i;
        b1 = new b(menu);
        i = xmlpullparser.getEventType();
_L12:
        if (i != 2) goto _L2; else goto _L1
_L1:
        menu = xmlpullparser.getName();
        if (!menu.equals("menu")) goto _L4; else goto _L3
_L3:
        i = xmlpullparser.next();
_L13:
        int j;
        int k;
        menu = null;
        boolean flag = false;
        k = i;
        j = 0;
        i = ((flag) ? 1 : 0);
_L10:
        if (j != 0)
        {
            break MISSING_BLOCK_LABEL_378;
        }
        k;
        JVM INSTR tableswitch 1 3: default 100
    //                   1 368
    //                   2 163
    //                   3 250;
           goto _L5 _L6 _L7 _L8
_L5:
        break; /* Loop/switch isn't completed */
_L7:
        break; /* Loop/switch isn't completed */
_L14:
        k = xmlpullparser.next();
        if (true) goto _L10; else goto _L9
_L4:
        throw new RuntimeException((new StringBuilder()).append("Expecting menu, got ").append(menu).toString());
_L2:
        j = xmlpullparser.next();
        i = j;
        if (j != 1) goto _L12; else goto _L11
_L11:
        i = j;
          goto _L13
_L9:
        if (i == 0)
        {
            String s = xmlpullparser.getName();
            if (s.equals("group"))
            {
                b1.a(attributeset);
            } else
            if (s.equals("item"))
            {
                b1.b(attributeset);
            } else
            if (s.equals("menu"))
            {
                a(xmlpullparser, attributeset, ((Menu) (b1.c())));
            } else
            {
                menu = s;
                i = 1;
            }
        }
          goto _L14
_L8:
        String s1 = xmlpullparser.getName();
        if (i != 0 && s1.equals(menu))
        {
            menu = null;
            i = 0;
        } else
        if (s1.equals("group"))
        {
            b1.a();
        } else
        if (s1.equals("item"))
        {
            if (!b1.d())
            {
                if (b1.a != null && b1.a.e())
                {
                    b1.c();
                } else
                {
                    b1.b();
                }
            }
        } else
        if (s1.equals("menu"))
        {
            j = 1;
        }
          goto _L14
_L6:
        throw new RuntimeException("Unexpected end of document");
          goto _L13
    }

    Object a()
    {
        if (f == null)
        {
            f = a(e);
        }
        return f;
    }

    public void inflate(int i, Menu menu)
    {
        if (menu instanceof android.support.v4.d.a.a) goto _L2; else goto _L1
_L1:
        super.inflate(i, menu);
_L4:
        return;
_L2:
        XmlResourceParser xmlresourceparser;
        XmlResourceParser xmlresourceparser1;
        XmlResourceParser xmlresourceparser2;
        xmlresourceparser = null;
        xmlresourceparser2 = null;
        xmlresourceparser1 = null;
        XmlResourceParser xmlresourceparser3 = e.getResources().getLayout(i);
        xmlresourceparser1 = xmlresourceparser3;
        xmlresourceparser = xmlresourceparser3;
        xmlresourceparser2 = xmlresourceparser3;
        a(xmlresourceparser3, Xml.asAttributeSet(xmlresourceparser3), menu);
        if (xmlresourceparser3 != null)
        {
            xmlresourceparser3.close();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        menu;
        xmlresourceparser = xmlresourceparser1;
        throw new InflateException("Error inflating menu XML", menu);
        menu;
        if (xmlresourceparser != null)
        {
            xmlresourceparser.close();
        }
        throw menu;
        menu;
        xmlresourceparser = xmlresourceparser2;
        throw new InflateException("Error inflating menu XML", menu);
    }

}
