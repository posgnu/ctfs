// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.g;

import java.util.ConcurrentModificationException;
import java.util.Map;

// Referenced classes of package android.support.v4.g:
//            c, a

public class k
{

    static Object b[];
    static int c;
    static Object d[];
    static int e;
    int f[];
    Object g[];
    int h;

    public k()
    {
        f = c.a;
        g = c.c;
        h = 0;
    }

    public k(int i)
    {
        if (i == 0)
        {
            f = c.a;
            g = c.c;
        } else
        {
            e(i);
        }
        h = 0;
    }

    private static int a(int ai[], int i, int j)
    {
        try
        {
            i = android.support.v4.g.c.a(ai, i, j);
        }
        // Misplaced declaration of an exception variable
        catch (int ai[])
        {
            throw new ConcurrentModificationException();
        }
        return i;
    }

    private static void a(int ai[], Object aobj[], int i)
    {
        if (ai.length != 8) goto _L2; else goto _L1
_L1:
        android/support/v4/g/a;
        JVM INSTR monitorenter ;
        if (e < 10)
        {
            aobj[0] = ((Object) (d));
            break MISSING_BLOCK_LABEL_24;
        }
          goto _L3
_L8:
        d = aobj;
        e++;
_L3:
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        return;
        ai;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        throw ai;
_L2:
        if (ai.length != 4) goto _L5; else goto _L4
_L4:
        android/support/v4/g/a;
        JVM INSTR monitorenter ;
        if (c >= 10) goto _L7; else goto _L6
_L6:
        aobj[0] = ((Object) (b));
        aobj[1] = ai;
        i = (i << 1) - 1;
        break MISSING_BLOCK_LABEL_134;
_L9:
        b = aobj;
        c++;
_L7:
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        return;
        ai;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        throw ai;
        aobj[1] = ai;
        i = (i << 1) - 1;
        while (i >= 2) 
        {
            aobj[i] = null;
            i--;
        }
          goto _L8
_L5:
        return;
        while (i >= 2) 
        {
            aobj[i] = null;
            i--;
        }
          goto _L9
    }

    private void e(int i)
    {
        if (i != 8) goto _L2; else goto _L1
_L1:
        android/support/v4/g/a;
        JVM INSTR monitorenter ;
        Object aobj[];
        if (d == null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        aobj = d;
        g = aobj;
        d = (Object[])(Object[])aobj[0];
        f = (int[])(int[])aobj[1];
        aobj[1] = null;
        aobj[0] = null;
        e--;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        return;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
_L4:
        f = new int[i];
        g = new Object[i << 1];
        return;
        Exception exception;
        exception;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (i != 4) goto _L4; else goto _L3
_L3:
        android/support/v4/g/a;
        JVM INSTR monitorenter ;
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        exception = ((Exception) (b));
        g = exception;
        b = (Object[])(Object[])exception[0];
        f = (int[])(int[])exception[1];
        exception[1] = null;
        exception[0] = null;
        c--;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        return;
        exception;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
        throw exception;
        android/support/v4/g/a;
        JVM INSTR monitorexit ;
          goto _L4
    }

    int a()
    {
        int i1 = h;
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        int i = -1;
_L4:
        return i;
_L2:
        int l;
        int j = a(f, i1, 0);
        i = j;
        if (j >= 0)
        {
            i = j;
            if (g[j << 1] != null)
            {
                for (l = j + 1; l < i1 && f[l] == 0; l++)
                {
                    if (g[l << 1] == null)
                    {
                        return l;
                    }
                }

                j--;
label0:
                do
                {
label1:
                    {
                        if (j < 0 || f[j] != 0)
                        {
                            break label1;
                        }
                        i = j;
                        if (g[j << 1] == null)
                        {
                            break label0;
                        }
                        j--;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return ~l;
    }

    public int a(Object obj)
    {
        if (obj == null)
        {
            return a();
        } else
        {
            return a(obj, obj.hashCode());
        }
    }

    int a(Object obj, int i)
    {
        int j1 = h;
        if (j1 != 0) goto _L2; else goto _L1
_L1:
        int j = -1;
_L4:
        return j;
_L2:
        int i1;
        int l = a(f, j1, i);
        j = l;
        if (l >= 0)
        {
            j = l;
            if (!obj.equals(g[l << 1]))
            {
                for (i1 = l + 1; i1 < j1 && f[i1] == i; i1++)
                {
                    if (obj.equals(g[i1 << 1]))
                    {
                        return i1;
                    }
                }

                l--;
label0:
                do
                {
label1:
                    {
                        if (l < 0 || f[l] != i)
                        {
                            break label1;
                        }
                        j = l;
                        if (obj.equals(g[l << 1]))
                        {
                            break label0;
                        }
                        l--;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return ~i1;
    }

    public Object a(int i, Object obj)
    {
        i = (i << 1) + 1;
        Object obj1 = g[i];
        g[i] = obj;
        return obj1;
    }

    public void a(int i)
    {
        int j = h;
        if (f.length < i)
        {
            int ai[] = f;
            Object aobj[] = g;
            e(i);
            if (h > 0)
            {
                System.arraycopy(ai, 0, f, 0, j);
                System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, j << 1);
            }
            a(ai, aobj, j);
        }
        if (h != j)
        {
            throw new ConcurrentModificationException();
        } else
        {
            return;
        }
    }

    int b(Object obj)
    {
        Object aobj[];
        int i;
        boolean flag;
        int j;
        i = 1;
        flag = true;
        j = h * 2;
        aobj = g;
        if (obj != null) goto _L2; else goto _L1
_L1:
        for (i = ((flag) ? 1 : 0); i < j; i += 2)
        {
            if (aobj[i] == null)
            {
                return i >> 1;
            }
        }

          goto _L3
_L4:
        i += 2;
_L2:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        if (obj.equals(aobj[i]))
        {
            return i >> 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return -1;
    }

    public Object b(int i)
    {
        return g[i << 1];
    }

    public Object c(int i)
    {
        return g[(i << 1) + 1];
    }

    public void clear()
    {
        if (h > 0)
        {
            int ai[] = f;
            Object aobj[] = g;
            int i = h;
            f = c.a;
            g = c.c;
            h = 0;
            a(ai, aobj, i);
        }
        if (h > 0)
        {
            throw new ConcurrentModificationException();
        } else
        {
            return;
        }
    }

    public boolean containsKey(Object obj)
    {
        return a(obj) >= 0;
    }

    public boolean containsValue(Object obj)
    {
        return b(obj) >= 0;
    }

    public Object d(int i)
    {
        int l = 8;
        Object obj = g[(i << 1) + 1];
        int i1 = h;
        if (i1 <= 1)
        {
            a(f, g, i1);
            f = c.a;
            g = c.c;
            i = 0;
        } else
        {
            int j = i1 - 1;
            if (f.length > 8 && h < f.length / 3)
            {
                if (i1 > 8)
                {
                    l = (i1 >> 1) + i1;
                }
                int ai[] = f;
                Object aobj[] = g;
                e(l);
                if (i1 != h)
                {
                    throw new ConcurrentModificationException();
                }
                if (i > 0)
                {
                    System.arraycopy(ai, 0, f, 0, i);
                    System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, i << 1);
                }
                if (i < j)
                {
                    System.arraycopy(ai, i + 1, f, i, j - i);
                    System.arraycopy(((Object) (aobj)), i + 1 << 1, ((Object) (g)), i << 1, j - i << 1);
                }
                i = j;
            } else
            {
                if (i < j)
                {
                    System.arraycopy(f, i + 1, f, i, j - i);
                    System.arraycopy(((Object) (g)), i + 1 << 1, ((Object) (g)), i << 1, j - i << 1);
                }
                g[j << 1] = null;
                g[(j << 1) + 1] = null;
                i = j;
            }
        }
        if (i1 != h)
        {
            throw new ConcurrentModificationException();
        } else
        {
            h = i;
            return obj;
        }
    }

    public boolean equals(Object obj)
    {
        if (this != obj) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (!(obj instanceof k)) goto _L4; else goto _L3
_L3:
        int i;
        obj = (k)obj;
        if (size() != ((k) (obj)).size())
        {
            return false;
        }
        i = 0;
_L5:
        Object obj1;
        Object obj2;
        Object obj3;
        if (i >= h)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj1 = b(i);
        obj2 = c(i);
        obj3 = ((k) (obj)).get(obj1);
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        if (obj3 != null)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        if (!((k) (obj)).containsKey(obj1))
        {
            break MISSING_BLOCK_LABEL_231;
        }
        break MISSING_BLOCK_LABEL_100;
        boolean flag;
        try
        {
            flag = obj2.equals(obj3);
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
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        if (!(obj instanceof Map))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (Map)obj;
        if (size() != ((Map) (obj)).size())
        {
            return false;
        }
        i = 0;
_L7:
        if (i >= h)
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = b(i);
        obj2 = c(i);
        obj3 = ((Map) (obj)).get(obj1);
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        if (obj3 != null)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        if (!((Map) (obj)).containsKey(obj1))
        {
            break MISSING_BLOCK_LABEL_233;
        }
        break MISSING_BLOCK_LABEL_214;
        boolean flag1;
        try
        {
            flag1 = obj2.equals(obj3);
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
        if (!flag1)
        {
            return false;
        }
        i++;
        if (true) goto _L7; else goto _L6
_L6:
        if (true) goto _L1; else goto _L8
_L8:
        return false;
        return false;
        return false;
    }

    public Object get(Object obj)
    {
        int i = a(obj);
        if (i >= 0)
        {
            return g[(i << 1) + 1];
        } else
        {
            return null;
        }
    }

    public int hashCode()
    {
        int ai[] = f;
        Object aobj[] = g;
        int j1 = h;
        int i = 1;
        int j = 0;
        int l = 0;
        while (j < j1) 
        {
            Object obj = aobj[i];
            int k1 = ai[j];
            int i1;
            if (obj == null)
            {
                i1 = 0;
            } else
            {
                i1 = obj.hashCode();
            }
            l += i1 ^ k1;
            j++;
            i += 2;
        }
        return l;
    }

    public boolean isEmpty()
    {
        return h <= 0;
    }

    public Object put(Object obj, Object obj1)
    {
        int l;
        byte byte0;
        int i1;
        int j1;
        byte0 = 8;
        i1 = h;
        int i;
        if (obj == null)
        {
            i = a();
            l = 0;
        } else
        {
            l = obj.hashCode();
            i = a(obj, l);
        }
        if (i >= 0)
        {
            i = (i << 1) + 1;
            obj = g[i];
            g[i] = obj1;
            return obj;
        }
        j1 = ~i;
        if (i1 < f.length)
        {
            break MISSING_BLOCK_LABEL_196;
        }
        if (i1 < 8) goto _L2; else goto _L1
_L1:
        int j = (i1 >> 1) + i1;
_L4:
        int ai[];
        Object aobj[];
        ai = f;
        aobj = g;
        e(j);
        if (i1 != h)
        {
            throw new ConcurrentModificationException();
        }
        break; /* Loop/switch isn't completed */
_L2:
        j = byte0;
        if (i1 < 4)
        {
            j = 4;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (f.length > 0)
        {
            System.arraycopy(ai, 0, f, 0, ai.length);
            System.arraycopy(((Object) (aobj)), 0, ((Object) (g)), 0, aobj.length);
        }
        a(ai, aobj, i1);
        if (j1 < i1)
        {
            System.arraycopy(f, j1, f, j1 + 1, i1 - j1);
            System.arraycopy(((Object) (g)), j1 << 1, ((Object) (g)), j1 + 1 << 1, h - j1 << 1);
        }
        if (i1 != h || j1 >= f.length)
        {
            throw new ConcurrentModificationException();
        } else
        {
            f[j1] = l;
            g[j1 << 1] = obj;
            g[(j1 << 1) + 1] = obj1;
            h = h + 1;
            return null;
        }
    }

    public Object remove(Object obj)
    {
        int i = a(obj);
        if (i >= 0)
        {
            return d(i);
        } else
        {
            return null;
        }
    }

    public int size()
    {
        return h;
    }

    public String toString()
    {
        if (isEmpty())
        {
            return "{}";
        }
        StringBuilder stringbuilder = new StringBuilder(h * 28);
        stringbuilder.append('{');
        int i = 0;
        while (i < h) 
        {
            if (i > 0)
            {
                stringbuilder.append(", ");
            }
            Object obj = b(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            stringbuilder.append('=');
            obj = c(i);
            if (obj != this)
            {
                stringbuilder.append(obj);
            } else
            {
                stringbuilder.append("(this Map)");
            }
            i++;
        }
        stringbuilder.append('}');
        return stringbuilder.toString();
    }
}
