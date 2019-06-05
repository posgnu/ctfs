// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.g;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package android.support.v4.g:
//            c, h

public final class b
    implements Collection, Set
{

    static Object a[];
    static int b;
    static Object c[];
    static int d;
    private static final int j[] = new int[0];
    private static final Object k[] = new Object[0];
    final boolean e;
    int f[];
    Object g[];
    int h;
    h i;

    public b()
    {
        this(0, false);
    }

    public b(int l, boolean flag)
    {
        e = flag;
        if (l == 0)
        {
            f = j;
            g = k;
        } else
        {
            d(l);
        }
        h = 0;
    }

    private int a()
    {
        int k1 = h;
        if (k1 != 0) goto _L2; else goto _L1
_L1:
        int l = -1;
_L4:
        return l;
_L2:
        int j1;
        int i1 = android.support.v4.g.c.a(f, k1, 0);
        l = i1;
        if (i1 >= 0)
        {
            l = i1;
            if (g[i1] != null)
            {
                for (j1 = i1 + 1; j1 < k1 && f[j1] == 0; j1++)
                {
                    if (g[j1] == null)
                    {
                        return j1;
                    }
                }

                i1--;
label0:
                do
                {
label1:
                    {
                        if (i1 < 0 || f[i1] != 0)
                        {
                            break label1;
                        }
                        l = i1;
                        if (g[i1] == null)
                        {
                            break label0;
                        }
                        i1--;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return ~j1;
    }

    private int a(Object obj, int l)
    {
        int l1 = h;
        if (l1 != 0) goto _L2; else goto _L1
_L1:
        int i1 = -1;
_L4:
        return i1;
_L2:
        int k1;
        int j1 = android.support.v4.g.c.a(f, l1, l);
        i1 = j1;
        if (j1 >= 0)
        {
            i1 = j1;
            if (!obj.equals(g[j1]))
            {
                for (k1 = j1 + 1; k1 < l1 && f[k1] == l; k1++)
                {
                    if (obj.equals(g[k1]))
                    {
                        return k1;
                    }
                }

                j1--;
label0:
                do
                {
label1:
                    {
                        if (j1 < 0 || f[j1] != l)
                        {
                            break label1;
                        }
                        i1 = j1;
                        if (obj.equals(g[j1]))
                        {
                            break label0;
                        }
                        j1--;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return ~k1;
    }

    private static void a(int ai[], Object aobj[], int l)
    {
        if (ai.length != 8) goto _L2; else goto _L1
_L1:
        android/support/v4/g/b;
        JVM INSTR monitorenter ;
        if (d < 10)
        {
            aobj[0] = ((Object) (c));
            break MISSING_BLOCK_LABEL_24;
        }
          goto _L3
_L8:
        c = aobj;
        d++;
_L3:
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        return;
        ai;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        throw ai;
_L2:
        if (ai.length != 4) goto _L5; else goto _L4
_L4:
        android/support/v4/g/b;
        JVM INSTR monitorenter ;
        if (b >= 10) goto _L7; else goto _L6
_L6:
        aobj[0] = ((Object) (a));
        aobj[1] = ai;
        l--;
        break MISSING_BLOCK_LABEL_130;
_L9:
        a = aobj;
        b++;
_L7:
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        return;
        ai;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        throw ai;
        aobj[1] = ai;
        l--;
        while (l >= 2) 
        {
            aobj[l] = null;
            l--;
        }
          goto _L8
_L5:
        return;
        while (l >= 2) 
        {
            aobj[l] = null;
            l--;
        }
          goto _L9
    }

    private h b()
    {
        if (i == null)
        {
            i = new h() {

                final b a;

                protected int a()
                {
                    return a.h;
                }

                protected int a(Object obj)
                {
                    return a.a(obj);
                }

                protected Object a(int l, int i1)
                {
                    return a.g[l];
                }

                protected Object a(int l, Object obj)
                {
                    throw new UnsupportedOperationException("not a map");
                }

                protected void a(int l)
                {
                    a.c(l);
                }

                protected void a(Object obj, Object obj1)
                {
                    a.add(obj);
                }

                protected int b(Object obj)
                {
                    return a.a(obj);
                }

                protected Map b()
                {
                    throw new UnsupportedOperationException("not a map");
                }

                protected void c()
                {
                    a.clear();
                }

            
            {
                a = b.this;
                super();
            }
            };
        }
        return i;
    }

    private void d(int l)
    {
        if (l != 8) goto _L2; else goto _L1
_L1:
        android/support/v4/g/b;
        JVM INSTR monitorenter ;
        Object aobj[];
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        aobj = c;
        g = aobj;
        c = (Object[])(Object[])aobj[0];
        f = (int[])(int[])aobj[1];
        aobj[1] = null;
        aobj[0] = null;
        d--;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        return;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
_L4:
        f = new int[l];
        g = new Object[l];
        return;
        Exception exception;
        exception;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (l != 4) goto _L4; else goto _L3
_L3:
        android/support/v4/g/b;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        exception = ((Exception) (a));
        g = exception;
        a = (Object[])(Object[])exception[0];
        f = (int[])(int[])exception[1];
        exception[1] = null;
        exception[0] = null;
        b--;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        return;
        exception;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
        throw exception;
        android/support/v4/g/b;
        JVM INSTR monitorexit ;
          goto _L4
    }

    public int a(Object obj)
    {
        if (obj == null)
        {
            return a();
        }
        int l;
        if (e)
        {
            l = System.identityHashCode(obj);
        } else
        {
            l = obj.hashCode();
        }
        return a(obj, l);
    }

    public void a(int l)
    {
        if (f.length < l)
        {
            int ai[] = f;
            Object aobj[] = g;
            d(l);
            if (h > 0)
            {
                System.arraycopy(ai, 0, f, 0, h);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, h);
            }
            a(ai, aobj, h);
        }
    }

    public boolean add(Object obj)
    {
        int j1;
        int k1;
        if (obj == null)
        {
            k1 = a();
            j1 = 0;
        } else
        {
            int l;
            if (e)
            {
                l = System.identityHashCode(obj);
            } else
            {
                l = obj.hashCode();
            }
            k1 = a(obj, l);
            j1 = l;
        }
        if (k1 >= 0)
        {
            return false;
        }
        k1 = ~k1;
        if (h >= f.length)
        {
            int ai[];
            Object aobj[];
            int i1;
            if (h >= 8)
            {
                i1 = h + (h >> 1);
            } else
            if (h >= 4)
            {
                i1 = 8;
            } else
            {
                i1 = 4;
            }
            ai = f;
            aobj = g;
            d(i1);
            if (f.length > 0)
            {
                System.arraycopy(ai, 0, f, 0, ai.length);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, aobj.length);
            }
            a(ai, aobj, h);
        }
        if (k1 < h)
        {
            System.arraycopy(f, k1, f, k1 + 1, h - k1);
            System.arraycopy(((Object) (g)), k1, ((Object) (g)), k1 + 1, h - k1);
        }
        f[k1] = j1;
        g[k1] = obj;
        h = h + 1;
        return true;
    }

    public boolean addAll(Collection collection)
    {
        a(h + collection.size());
        boolean flag = false;
        for (collection = collection.iterator(); collection.hasNext();)
        {
            flag |= add(collection.next());
        }

        return flag;
    }

    public Object b(int l)
    {
        return g[l];
    }

    public Object c(int l)
    {
        int i1 = 8;
        Object obj = g[l];
        if (h <= 1)
        {
            a(f, g, h);
            f = j;
            g = k;
            h = 0;
        } else
        if (f.length > 8 && h < f.length / 3)
        {
            if (h > 8)
            {
                i1 = h + (h >> 1);
            }
            int ai[] = f;
            Object aobj[] = g;
            d(i1);
            h = h - 1;
            if (l > 0)
            {
                System.arraycopy(ai, 0, f, 0, l);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, l);
            }
            if (l < h)
            {
                System.arraycopy(ai, l + 1, f, l, h - l);
                System.arraycopy(((Object) (aobj)), l + 1, ((Object) (g)), l, h - l);
                return obj;
            }
        } else
        {
            h = h - 1;
            if (l < h)
            {
                System.arraycopy(f, l + 1, f, l, h - l);
                System.arraycopy(((Object) (g)), l + 1, ((Object) (g)), l, h - l);
            }
            g[h] = null;
            return obj;
        }
        return obj;
    }

    public void clear()
    {
        if (h != 0)
        {
            a(f, g, h);
            f = j;
            g = k;
            h = 0;
        }
    }

    public boolean contains(Object obj)
    {
        return a(obj) >= 0;
    }

    public boolean containsAll(Collection collection)
    {
        for (collection = collection.iterator(); collection.hasNext();)
        {
            if (!contains(collection.next()))
            {
                return false;
            }
        }

        return true;
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
label0:
        {
            if (!(obj instanceof Set))
            {
                break label0;
            }
            obj = (Set)obj;
            if (size() != ((Set) (obj)).size())
            {
                return false;
            }
            int l = 0;
            do
            {
                boolean flag;
                try
                {
                    if (l >= h)
                    {
                        break;
                    }
                    flag = ((Set) (obj)).contains(b(l));
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    return false;
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    return false;
                }
                if (!flag)
                {
                    return false;
                }
                l++;
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
        return false;
    }

    public int hashCode()
    {
        int l = 0;
        int ai[] = f;
        int j1 = h;
        int i1 = 0;
        for (; l < j1; l++)
        {
            i1 += ai[l];
        }

        return i1;
    }

    public boolean isEmpty()
    {
        return h <= 0;
    }

    public Iterator iterator()
    {
        return b().e().iterator();
    }

    public boolean remove(Object obj)
    {
        int l = a(obj);
        if (l >= 0)
        {
            c(l);
            return true;
        } else
        {
            return false;
        }
    }

    public boolean removeAll(Collection collection)
    {
        boolean flag = false;
        for (collection = collection.iterator(); collection.hasNext();)
        {
            flag |= remove(collection.next());
        }

        return flag;
    }

    public boolean retainAll(Collection collection)
    {
        int l = h;
        boolean flag = false;
        for (l--; l >= 0; l--)
        {
            if (!collection.contains(g[l]))
            {
                c(l);
                flag = true;
            }
        }

        return flag;
    }

    public int size()
    {
        return h;
    }

    public Object[] toArray()
    {
        Object aobj[] = new Object[h];
        System.arraycopy(((Object) (g)), 0, ((Object) (aobj)), 0, h);
        return aobj;
    }

    public Object[] toArray(Object aobj[])
    {
        if (aobj.length < h)
        {
            aobj = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), h);
        }
        System.arraycopy(((Object) (g)), 0, ((Object) (aobj)), 0, h);
        if (aobj.length > h)
        {
            aobj[h] = null;
        }
        return aobj;
    }

    public String toString()
    {
        if (isEmpty())
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(h * 14);
        stringbuilder.append('{');
        int l = 0;
        while (l < h) 
        {
            if (l > 0)
            {
                stringbuilder.append(", ");
            }
            Object obj = b(l);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Set)");
            }
            l++;
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }

}
