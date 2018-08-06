// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.d.a.a;
import android.support.v4.h.c;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

// Referenced classes of package android.support.v7.view.menu:
//            j, o, u

public class h
    implements android.support.v4.d.a.a
{
    public static interface a
    {

        public abstract void a(h h1);

        public abstract boolean a(h h1, MenuItem menuitem);
    }

    public static interface b
    {

        public abstract boolean a(j j1);
    }


    private static final int d[] = {
        1, 4, 5, 3, 2, 0
    };
    CharSequence a;
    Drawable b;
    View c;
    private final Context e;
    private final Resources f;
    private boolean g;
    private boolean h;
    private a i;
    private ArrayList j;
    private ArrayList k;
    private boolean l;
    private ArrayList m;
    private ArrayList n;
    private boolean o;
    private int p;
    private android.view.ContextMenu.ContextMenuInfo q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private ArrayList w;
    private CopyOnWriteArrayList x;
    private j y;
    private boolean z;

    public h(Context context)
    {
        p = 0;
        r = false;
        s = false;
        t = false;
        u = false;
        v = false;
        w = new ArrayList();
        x = new CopyOnWriteArrayList();
        e = context;
        f = context.getResources();
        j = new ArrayList();
        k = new ArrayList();
        l = true;
        m = new ArrayList();
        n = new ArrayList();
        o = true;
        e(true);
    }

    private static int a(ArrayList arraylist, int i1)
    {
        for (int j1 = arraylist.size() - 1; j1 >= 0; j1--)
        {
            if (((j)arraylist.get(j1)).c() <= i1)
            {
                return j1 + 1;
            }
        }

        return 0;
    }

    private j a(int i1, int j1, int k1, int l1, CharSequence charsequence, int i2)
    {
        return new j(this, i1, j1, k1, l1, charsequence, i2);
    }

    private void a(int i1, CharSequence charsequence, int j1, Drawable drawable, View view)
    {
        Resources resources = d();
        if (view == null) goto _L2; else goto _L1
_L1:
        c = view;
        a = null;
        b = null;
_L4:
        b(false);
        return;
_L2:
        if (i1 > 0)
        {
            a = resources.getText(i1);
        } else
        if (charsequence != null)
        {
            a = charsequence;
        }
        if (j1 <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        b = android.support.v4.b.a.a(e(), j1);
_L6:
        c = null;
        if (true) goto _L4; else goto _L3
_L3:
        if (drawable == null) goto _L6; else goto _L5
_L5:
        b = drawable;
          goto _L6
    }

    private void a(int i1, boolean flag)
    {
        if (i1 >= 0 && i1 < j.size())
        {
            j.remove(i1);
            if (flag)
            {
                b(true);
                return;
            }
        }
    }

    private boolean a(u u1, o o1)
    {
        boolean flag = false;
        if (x.isEmpty())
        {
            return false;
        }
        if (o1 != null)
        {
            flag = o1.a(u1);
        }
        o1 = x.iterator();
        do
        {
            if (!o1.hasNext())
            {
                break;
            }
            WeakReference weakreference = (WeakReference)o1.next();
            o o2 = (o)weakreference.get();
            if (o2 == null)
            {
                x.remove(weakreference);
            } else
            if (!flag)
            {
                flag = o2.a(u1);
            }
        } while (true);
        return flag;
    }

    private void d(boolean flag)
    {
        if (x.isEmpty())
        {
            return;
        }
        g();
        for (Iterator iterator = x.iterator(); iterator.hasNext();)
        {
            WeakReference weakreference = (WeakReference)iterator.next();
            o o1 = (o)weakreference.get();
            if (o1 == null)
            {
                x.remove(weakreference);
            } else
            {
                o1.b(flag);
            }
        }

        h();
    }

    private void e(boolean flag)
    {
        boolean flag1 = true;
        if (flag && f.getConfiguration().keyboard != 1 && f.getBoolean(android.support.v7.a.a.b.abc_config_showMenuShortcutsWhenKeyboardPresent))
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        h = flag;
    }

    private static int f(int i1)
    {
        int j1 = (0xffff0000 & i1) >> 16;
        if (j1 < 0 || j1 >= d.length)
        {
            throw new IllegalArgumentException("order does not contain a valid category.");
        } else
        {
            return d[j1] << 16 | 0xffff & i1;
        }
    }

    public int a(int i1, int j1)
    {
        int l1 = size();
        int k1 = j1;
        if (j1 < 0)
        {
            k1 = 0;
        }
        for (; k1 < l1; k1++)
        {
            if (((j)j.get(k1)).getGroupId() == i1)
            {
                return k1;
            }
        }

        return -1;
    }

    public h a(int i1)
    {
        p = i1;
        return this;
    }

    protected h a(Drawable drawable)
    {
        a(0, null, 0, drawable, null);
        return this;
    }

    protected h a(View view)
    {
        a(0, null, 0, null, view);
        return this;
    }

    protected h a(CharSequence charsequence)
    {
        a(0, charsequence, 0, null, null);
        return this;
    }

    j a(int i1, KeyEvent keyevent)
    {
        ArrayList arraylist;
        arraylist = w;
        arraylist.clear();
        a(((List) (arraylist)), i1, keyevent);
        if (!arraylist.isEmpty()) goto _L2; else goto _L1
_L1:
        keyevent = null;
_L6:
        return keyevent;
_L2:
        android.view.KeyCharacterMap.KeyData keydata;
        int k1;
        int l1;
        int i2;
        boolean flag;
        l1 = keyevent.getMetaState();
        keydata = new android.view.KeyCharacterMap.KeyData();
        keyevent.getKeyData(keydata);
        i2 = arraylist.size();
        if (i2 == 1)
        {
            return (j)arraylist.get(0);
        }
        flag = b();
        k1 = 0;
_L9:
        if (k1 >= i2) goto _L4; else goto _L3
_L3:
        j j1 = (j)arraylist.get(k1);
        char c1;
        if (flag)
        {
            c1 = j1.getAlphabeticShortcut();
        } else
        {
            c1 = j1.getNumericShortcut();
        }
        if (c1 != keydata.meta[0])
        {
            break; /* Loop/switch isn't completed */
        }
        keyevent = j1;
        if ((l1 & 2) == 0) goto _L6; else goto _L5
_L5:
        if (c1 != keydata.meta[2])
        {
            break; /* Loop/switch isn't completed */
        }
        keyevent = j1;
        if ((l1 & 2) != 0) goto _L6; else goto _L7
_L7:
        if (!flag || c1 != '\b')
        {
            continue; /* Loop/switch isn't completed */
        }
        keyevent = j1;
        if (i1 == 67) goto _L6; else goto _L8
_L8:
        k1++;
          goto _L9
_L4:
        return null;
    }

    protected MenuItem a(int i1, int j1, int k1, CharSequence charsequence)
    {
        int l1 = f(k1);
        charsequence = a(i1, j1, k1, l1, charsequence, p);
        if (q != null)
        {
            charsequence.a(q);
        }
        j.add(a(j, l1), charsequence);
        b(true);
        return charsequence;
    }

    protected String a()
    {
        return "android:menu:actionviewstates";
    }

    public void a(Bundle bundle)
    {
        int j1 = size();
        int i1 = 0;
        SparseArray sparsearray;
        SparseArray sparsearray2;
        for (sparsearray = null; i1 < j1; sparsearray = sparsearray2)
        {
            MenuItem menuitem = getItem(i1);
            View view = menuitem.getActionView();
            sparsearray2 = sparsearray;
            if (view != null)
            {
                sparsearray2 = sparsearray;
                if (view.getId() != -1)
                {
                    SparseArray sparsearray1 = sparsearray;
                    if (sparsearray == null)
                    {
                        sparsearray1 = new SparseArray();
                    }
                    view.saveHierarchyState(sparsearray1);
                    sparsearray2 = sparsearray1;
                    if (menuitem.isActionViewExpanded())
                    {
                        bundle.putInt("android:menu:expandedactionview", menuitem.getItemId());
                        sparsearray2 = sparsearray1;
                    }
                }
            }
            if (menuitem.hasSubMenu())
            {
                ((u)menuitem.getSubMenu()).a(bundle);
            }
            i1++;
        }

        if (sparsearray != null)
        {
            bundle.putSparseParcelableArray(a(), sparsearray);
        }
    }

    public void a(a a1)
    {
        i = a1;
    }

    void a(j j1)
    {
        l = true;
        b(true);
    }

    public void a(o o1)
    {
        a(o1, e);
    }

    public void a(o o1, Context context)
    {
        x.add(new WeakReference(o1));
        o1.a(context, this);
        o = true;
    }

    void a(MenuItem menuitem)
    {
        int k1 = menuitem.getGroupId();
        int l1 = j.size();
        g();
        int i1 = 0;
        do
        {
            if (i1 >= l1)
            {
                break;
            }
            j j1 = (j)j.get(i1);
            if (j1.getGroupId() == k1 && j1.g() && j1.isCheckable())
            {
                boolean flag;
                if (j1 == menuitem)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                j1.b(flag);
            }
            i1++;
        } while (true);
        h();
    }

    void a(List list, int i1, KeyEvent keyevent)
    {
        boolean flag = b();
        int i2 = keyevent.getModifiers();
        android.view.KeyCharacterMap.KeyData keydata = new android.view.KeyCharacterMap.KeyData();
        if (keyevent.getKeyData(keydata) || i1 == 67)
        {
            int j2 = j.size();
            int k1 = 0;
            while (k1 < j2) 
            {
                j j1 = (j)j.get(k1);
                if (j1.hasSubMenu())
                {
                    ((h)j1.getSubMenu()).a(list, i1, keyevent);
                }
                char c1;
                int l1;
                if (flag)
                {
                    c1 = j1.getAlphabeticShortcut();
                } else
                {
                    c1 = j1.getNumericShortcut();
                }
                if (flag)
                {
                    l1 = j1.getAlphabeticModifiers();
                } else
                {
                    l1 = j1.getNumericModifiers();
                }
                if ((i2 & 0x1100f) == (l1 & 0x1100f))
                {
                    l1 = 1;
                } else
                {
                    l1 = 0;
                }
                if (l1 != 0 && c1 != 0 && (c1 == keydata.meta[0] || c1 == keydata.meta[2] || flag && c1 == '\b' && i1 == 67) && j1.isEnabled())
                {
                    list.add(j1);
                }
                k1++;
            }
        }
    }

    public final void a(boolean flag)
    {
        if (v)
        {
            return;
        }
        v = true;
        for (Iterator iterator = x.iterator(); iterator.hasNext();)
        {
            WeakReference weakreference = (WeakReference)iterator.next();
            o o1 = (o)weakreference.get();
            if (o1 == null)
            {
                x.remove(weakreference);
            } else
            {
                o1.a(this, flag);
            }
        }

        v = false;
    }

    boolean a(h h1, MenuItem menuitem)
    {
        return i != null && i.a(h1, menuitem);
    }

    public boolean a(MenuItem menuitem, int i1)
    {
        return a(menuitem, ((o) (null)), i1);
    }

    public boolean a(MenuItem menuitem, o o1, int i1)
    {
        Object obj;
        boolean flag1;
        boolean flag2;
        flag2 = false;
        obj = (j)menuitem;
        flag1 = flag2;
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (((j) (obj)).isEnabled()) goto _L4; else goto _L3
_L3:
        flag1 = flag2;
_L2:
        return flag1;
_L4:
        boolean flag;
        flag1 = ((j) (obj)).b();
        menuitem = ((j) (obj)).a();
        boolean flag3;
        if (menuitem != null && menuitem.e())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!((j) (obj)).n())
        {
            break; /* Loop/switch isn't completed */
        }
        flag3 = ((j) (obj)).expandActionView() | flag1;
        flag1 = flag3;
        if (flag3)
        {
            a(true);
            return flag3;
        }
        if (true) goto _L2; else goto _L5
_L5:
        if (((j) (obj)).hasSubMenu() || flag)
        {
            if ((i1 & 4) == 0)
            {
                a(false);
            }
            if (!((j) (obj)).hasSubMenu())
            {
                ((j) (obj)).a(new u(e(), this, ((j) (obj))));
            }
            obj = (u)((j) (obj)).getSubMenu();
            if (flag)
            {
                menuitem.a(((SubMenu) (obj)));
            }
            boolean flag4 = a(((u) (obj)), o1) | flag1;
            flag1 = flag4;
            if (!flag4)
            {
                a(true);
                return flag4;
            }
        } else
        {
            if ((i1 & 1) == 0)
            {
                a(true);
            }
            return flag1;
        }
        if (true) goto _L2; else goto _L6
_L6:
    }

    public MenuItem add(int i1)
    {
        return a(0, 0, 0, f.getString(i1));
    }

    public MenuItem add(int i1, int j1, int k1, int l1)
    {
        return a(i1, j1, k1, f.getString(l1));
    }

    public MenuItem add(int i1, int j1, int k1, CharSequence charsequence)
    {
        return a(i1, j1, k1, charsequence);
    }

    public MenuItem add(CharSequence charsequence)
    {
        return a(0, 0, 0, charsequence);
    }

    public int addIntentOptions(int i1, int j1, int k1, ComponentName componentname, Intent aintent[], Intent intent, int l1, 
            MenuItem amenuitem[])
    {
        PackageManager packagemanager = e.getPackageManager();
        List list = packagemanager.queryIntentActivityOptions(componentname, aintent, intent, 0);
        int i2;
        if (list != null)
        {
            i2 = list.size();
        } else
        {
            i2 = 0;
        }
        if ((l1 & 1) == 0)
        {
            removeGroup(i1);
        }
        l1 = 0;
        while (l1 < i2) 
        {
            ResolveInfo resolveinfo = (ResolveInfo)list.get(l1);
            if (resolveinfo.specificIndex < 0)
            {
                componentname = intent;
            } else
            {
                componentname = aintent[resolveinfo.specificIndex];
            }
            componentname = new Intent(componentname);
            componentname.setComponent(new ComponentName(resolveinfo.activityInfo.applicationInfo.packageName, resolveinfo.activityInfo.name));
            componentname = add(i1, j1, k1, resolveinfo.loadLabel(packagemanager)).setIcon(resolveinfo.loadIcon(packagemanager)).setIntent(componentname);
            if (amenuitem != null && resolveinfo.specificIndex >= 0)
            {
                amenuitem[resolveinfo.specificIndex] = componentname;
            }
            l1++;
        }
        return i2;
    }

    public SubMenu addSubMenu(int i1)
    {
        return addSubMenu(0, 0, 0, ((CharSequence) (f.getString(i1))));
    }

    public SubMenu addSubMenu(int i1, int j1, int k1, int l1)
    {
        return addSubMenu(i1, j1, k1, ((CharSequence) (f.getString(l1))));
    }

    public SubMenu addSubMenu(int i1, int j1, int k1, CharSequence charsequence)
    {
        charsequence = (j)a(i1, j1, k1, charsequence);
        u u1 = new u(e, this, charsequence);
        charsequence.a(u1);
        return u1;
    }

    public SubMenu addSubMenu(CharSequence charsequence)
    {
        return addSubMenu(0, 0, 0, charsequence);
    }

    public int b(int i1)
    {
        int k1 = size();
        for (int j1 = 0; j1 < k1; j1++)
        {
            if (((j)j.get(j1)).getItemId() == i1)
            {
                return j1;
            }
        }

        return -1;
    }

    public void b(Bundle bundle)
    {
        if (bundle != null)
        {
            SparseArray sparsearray = bundle.getSparseParcelableArray(a());
            int k1 = size();
            for (int i1 = 0; i1 < k1; i1++)
            {
                MenuItem menuitem = getItem(i1);
                View view = menuitem.getActionView();
                if (view != null && view.getId() != -1)
                {
                    view.restoreHierarchyState(sparsearray);
                }
                if (menuitem.hasSubMenu())
                {
                    ((u)menuitem.getSubMenu()).b(bundle);
                }
            }

            int j1 = bundle.getInt("android:menu:expandedactionview");
            if (j1 > 0)
            {
                bundle = findItem(j1);
                if (bundle != null)
                {
                    bundle.expandActionView();
                    return;
                }
            }
        }
    }

    void b(j j1)
    {
        o = true;
        b(true);
    }

    public void b(o o1)
    {
        Iterator iterator = x.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            WeakReference weakreference = (WeakReference)iterator.next();
            o o2 = (o)weakreference.get();
            if (o2 == null || o2 == o1)
            {
                x.remove(weakreference);
            }
        } while (true);
    }

    public void b(boolean flag)
    {
        if (!r)
        {
            if (flag)
            {
                l = true;
                o = true;
            }
            d(flag);
        } else
        {
            s = true;
            if (flag)
            {
                t = true;
                return;
            }
        }
    }

    boolean b()
    {
        return g;
    }

    public int c(int i1)
    {
        return a(i1, 0);
    }

    public void c(boolean flag)
    {
        z = flag;
    }

    public boolean c()
    {
        return h;
    }

    public boolean c(j j1)
    {
        boolean flag1 = false;
        if (!x.isEmpty())
        {
            g();
            Iterator iterator = x.iterator();
            boolean flag = false;
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                WeakReference weakreference = (WeakReference)iterator.next();
                o o1 = (o)weakreference.get();
                if (o1 == null)
                {
                    x.remove(weakreference);
                    continue;
                }
                flag1 = o1.a(this, j1);
                flag = flag1;
                if (!flag1)
                {
                    continue;
                }
                flag = flag1;
                break;
            } while (true);
            h();
            flag1 = flag;
            if (flag)
            {
                y = j1;
                return flag;
            }
        }
        return flag1;
    }

    public void clear()
    {
        if (y != null)
        {
            d(y);
        }
        j.clear();
        b(true);
    }

    public void clearHeader()
    {
        b = null;
        a = null;
        c = null;
        b(false);
    }

    public void close()
    {
        a(true);
    }

    Resources d()
    {
        return f;
    }

    protected h d(int i1)
    {
        a(i1, null, 0, null, null);
        return this;
    }

    public boolean d(j j1)
    {
        boolean flag = false;
        boolean flag2 = flag;
        if (!x.isEmpty())
        {
            if (y != j1)
            {
                flag2 = flag;
            } else
            {
                g();
                Iterator iterator = x.iterator();
                boolean flag1 = false;
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    WeakReference weakreference = (WeakReference)iterator.next();
                    o o1 = (o)weakreference.get();
                    if (o1 == null)
                    {
                        x.remove(weakreference);
                        continue;
                    }
                    flag2 = o1.b(this, j1);
                    flag1 = flag2;
                    if (!flag2)
                    {
                        continue;
                    }
                    flag1 = flag2;
                    break;
                } while (true);
                h();
                flag2 = flag1;
                if (flag1)
                {
                    y = null;
                    return flag1;
                }
            }
        }
        return flag2;
    }

    public Context e()
    {
        return e;
    }

    protected h e(int i1)
    {
        a(0, null, i1, null, null);
        return this;
    }

    public void f()
    {
        if (i != null)
        {
            i.a(this);
        }
    }

    public MenuItem findItem(int i1)
    {
        int j1;
        int k1;
        k1 = size();
        j1 = 0;
_L6:
        if (j1 >= k1) goto _L2; else goto _L1
_L1:
        Object obj = (j)j.get(j1);
        if (((j) (obj)).getItemId() != i1) goto _L4; else goto _L3
_L3:
        return ((MenuItem) (obj));
_L4:
        MenuItem menuitem;
        if (!((j) (obj)).hasSubMenu())
        {
            continue; /* Loop/switch isn't completed */
        }
        menuitem = ((j) (obj)).getSubMenu().findItem(i1);
        obj = menuitem;
        if (menuitem != null) goto _L3; else goto _L5
_L5:
        j1++;
          goto _L6
_L2:
        return null;
    }

    public void g()
    {
        if (!r)
        {
            r = true;
            s = false;
            t = false;
        }
    }

    public MenuItem getItem(int i1)
    {
        return (MenuItem)j.get(i1);
    }

    public void h()
    {
        r = false;
        if (s)
        {
            s = false;
            b(t);
        }
    }

    public boolean hasVisibleItems()
    {
        if (z)
        {
            return true;
        }
        int j1 = size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            if (((j)j.get(i1)).isVisible())
            {
                return true;
            }
        }

        return false;
    }

    public ArrayList i()
    {
        if (!l)
        {
            return k;
        }
        k.clear();
        int k1 = j.size();
        for (int i1 = 0; i1 < k1; i1++)
        {
            j j1 = (j)j.get(i1);
            if (j1.isVisible())
            {
                k.add(j1);
            }
        }

        l = false;
        o = true;
        return k;
    }

    public boolean isShortcutKey(int i1, KeyEvent keyevent)
    {
        return a(i1, keyevent) != null;
    }

    public void j()
    {
        ArrayList arraylist = i();
        if (!o)
        {
            return;
        }
        Iterator iterator = x.iterator();
        boolean flag = false;
        while (iterator.hasNext()) 
        {
            WeakReference weakreference = (WeakReference)iterator.next();
            o o1 = (o)weakreference.get();
            if (o1 == null)
            {
                x.remove(weakreference);
            } else
            {
                flag = o1.b() | flag;
            }
        }
        if (flag)
        {
            m.clear();
            n.clear();
            int k1 = arraylist.size();
            int i1 = 0;
            while (i1 < k1) 
            {
                j j1 = (j)arraylist.get(i1);
                if (j1.j())
                {
                    m.add(j1);
                } else
                {
                    n.add(j1);
                }
                i1++;
            }
        } else
        {
            m.clear();
            n.clear();
            n.addAll(i());
        }
        o = false;
    }

    public ArrayList k()
    {
        j();
        return m;
    }

    public ArrayList l()
    {
        j();
        return n;
    }

    public CharSequence m()
    {
        return a;
    }

    public Drawable n()
    {
        return b;
    }

    public View o()
    {
        return c;
    }

    public h p()
    {
        return this;
    }

    public boolean performIdentifierAction(int i1, int j1)
    {
        return a(findItem(i1), j1);
    }

    public boolean performShortcut(int i1, KeyEvent keyevent, int j1)
    {
        keyevent = a(i1, keyevent);
        boolean flag = false;
        if (keyevent != null)
        {
            flag = a(keyevent, j1);
        }
        if ((j1 & 2) != 0)
        {
            a(true);
        }
        return flag;
    }

    boolean q()
    {
        return u;
    }

    public j r()
    {
        return y;
    }

    public void removeGroup(int i1)
    {
        int k1 = c(i1);
        if (k1 >= 0)
        {
            int l1 = j.size();
            for (int j1 = 0; j1 < l1 - k1 && ((j)j.get(k1)).getGroupId() == i1; j1++)
            {
                a(k1, false);
            }

            b(true);
        }
    }

    public void removeItem(int i1)
    {
        a(b(i1), true);
    }

    public void setGroupCheckable(int i1, boolean flag, boolean flag1)
    {
        int l1 = j.size();
        for (int k1 = 0; k1 < l1; k1++)
        {
            j j1 = (j)j.get(k1);
            if (j1.getGroupId() == i1)
            {
                j1.a(flag1);
                j1.setCheckable(flag);
            }
        }

    }

    public void setGroupEnabled(int i1, boolean flag)
    {
        int l1 = j.size();
        for (int k1 = 0; k1 < l1; k1++)
        {
            j j1 = (j)j.get(k1);
            if (j1.getGroupId() == i1)
            {
                j1.setEnabled(flag);
            }
        }

    }

    public void setGroupVisible(int i1, boolean flag)
    {
        int l1 = j.size();
        int k1 = 0;
        boolean flag1 = false;
        for (; k1 < l1; k1++)
        {
            j j1 = (j)j.get(k1);
            if (j1.getGroupId() == i1 && j1.c(flag))
            {
                flag1 = true;
            }
        }

        if (flag1)
        {
            b(true);
        }
    }

    public void setQwertyMode(boolean flag)
    {
        g = flag;
        b(false);
    }

    public int size()
    {
        return j.size();
    }

}
