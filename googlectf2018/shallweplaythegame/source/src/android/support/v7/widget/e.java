// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

class android.support.v7.widget.e extends DataSetObservable
{
    public static final class a
        implements Comparable
    {

        public final ResolveInfo a;
        public float b;

        public int a(a a1)
        {
            return Float.floatToIntBits(a1.b) - Float.floatToIntBits(b);
        }

        public int compareTo(Object obj)
        {
            return a((a)obj);
        }

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                obj = (a)obj;
                if (Float.floatToIntBits(b) != Float.floatToIntBits(((a) (obj)).b))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            return Float.floatToIntBits(b) + 31;
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("[");
            stringbuilder.append("resolveInfo:").append(a.toString());
            stringbuilder.append("; weight:").append(new BigDecimal(b));
            stringbuilder.append("]");
            return stringbuilder.toString();
        }

        public a(ResolveInfo resolveinfo)
        {
            a = resolveinfo;
        }
    }

    public static interface b
    {

        public abstract void a(Intent intent, List list, List list1);
    }

    public static final class c
    {

        public final ComponentName a;
        public final long b;
        public final float c;

        public boolean equals(Object obj)
        {
            if (this != obj)
            {
                if (obj == null)
                {
                    return false;
                }
                if (getClass() != obj.getClass())
                {
                    return false;
                }
                obj = (c)obj;
                if (a == null)
                {
                    if (((c) (obj)).a != null)
                    {
                        return false;
                    }
                } else
                if (!a.equals(((c) (obj)).a))
                {
                    return false;
                }
                if (b != ((c) (obj)).b)
                {
                    return false;
                }
                if (Float.floatToIntBits(c) != Float.floatToIntBits(((c) (obj)).c))
                {
                    return false;
                }
            }
            return true;
        }

        public int hashCode()
        {
            int i1;
            if (a == null)
            {
                i1 = 0;
            } else
            {
                i1 = a.hashCode();
            }
            return ((i1 + 31) * 31 + (int)(b ^ b >>> 32)) * 31 + Float.floatToIntBits(c);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("[");
            stringbuilder.append("; activity:").append(a);
            stringbuilder.append("; time:").append(b);
            stringbuilder.append("; weight:").append(new BigDecimal(c));
            stringbuilder.append("]");
            return stringbuilder.toString();
        }

        public c(ComponentName componentname, long l1, float f1)
        {
            a = componentname;
            b = l1;
            c = f1;
        }

        public c(String s, long l1, float f1)
        {
            this(ComponentName.unflattenFromString(s), l1, f1);
        }
    }

    public static interface d
    {

        public abstract boolean a(android.support.v7.widget.e e1, Intent intent);
    }

    private final class e extends AsyncTask
    {

        final android.support.v7.widget.e a;

        public transient Void a(Object aobj[])
        {
            List list;
            Object obj1;
            int i1;
            i1 = 0;
            list = (List)aobj[0];
            obj1 = (String)aobj[1];
            aobj = a.b.openFileOutput(((String) (obj1)), 0);
            obj1 = Xml.newSerializer();
            int j1;
            ((XmlSerializer) (obj1)).setOutput(((java.io.OutputStream) (aobj)), null);
            ((XmlSerializer) (obj1)).startDocument("UTF-8", Boolean.valueOf(true));
            ((XmlSerializer) (obj1)).startTag(null, "historical-records");
            j1 = list.size();
_L2:
            if (i1 >= j1)
            {
                break; /* Loop/switch isn't completed */
            }
            c c1 = (c)list.remove(0);
            ((XmlSerializer) (obj1)).startTag(null, "historical-record");
            ((XmlSerializer) (obj1)).attribute(null, "activity", c1.a.flattenToString());
            ((XmlSerializer) (obj1)).attribute(null, "time", String.valueOf(c1.b));
            ((XmlSerializer) (obj1)).attribute(null, "weight", String.valueOf(c1.c));
            ((XmlSerializer) (obj1)).endTag(null, "historical-record");
            i1++;
            if (true) goto _L2; else goto _L1
            aobj;
            Log.e(android.support.v7.widget.e.a, (new StringBuilder()).append("Error writing historical record file: ").append(((String) (obj1))).toString(), ((Throwable) (aobj)));
_L3:
            return null;
_L1:
            ((XmlSerializer) (obj1)).endTag(null, "historical-records");
            ((XmlSerializer) (obj1)).endDocument();
            a.d = true;
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[])
                {
                    return null;
                }
                return null;
            }
              goto _L3
            Object obj;
            obj;
            Log.e(android.support.v7.widget.e.a, (new StringBuilder()).append("Error writing historical record file: ").append(a.c).toString(), ((Throwable) (obj)));
            a.d = true;
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[])
                {
                    return null;
                }
                return null;
            }
              goto _L3
            obj;
            Log.e(android.support.v7.widget.e.a, (new StringBuilder()).append("Error writing historical record file: ").append(a.c).toString(), ((Throwable) (obj)));
            a.d = true;
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[])
                {
                    return null;
                }
                return null;
            }
              goto _L3
            obj;
            Log.e(android.support.v7.widget.e.a, (new StringBuilder()).append("Error writing historical record file: ").append(a.c).toString(), ((Throwable) (obj)));
            a.d = true;
            if (aobj == null) goto _L3; else goto _L4
_L4:
            try
            {
                ((FileOutputStream) (aobj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object aobj[])
            {
                return null;
            }
            return null;
            obj;
            a.d = true;
            if (aobj != null)
            {
                try
                {
                    ((FileOutputStream) (aobj)).close();
                }
                // Misplaced declaration of an exception variable
                catch (Object aobj[]) { }
            }
            throw obj;
        }

        public Object doInBackground(Object aobj[])
        {
            return a(aobj);
        }

        e()
        {
            a = android.support.v7.widget.e.this;
            super();
        }
    }


    static final String a = android/support/v7/widget/e.getSimpleName();
    private static final Object e = new Object();
    private static final Map f = new HashMap();
    final Context b;
    final String c;
    boolean d;
    private final Object g;
    private final List h;
    private final List i;
    private Intent j;
    private b k;
    private int l;
    private boolean m;
    private boolean n;
    private boolean o;
    private d p;

    private boolean a(c c1)
    {
        boolean flag = i.add(c1);
        if (flag)
        {
            n = true;
            h();
            c();
            e();
            notifyChanged();
        }
        return flag;
    }

    private void c()
    {
        if (!m)
        {
            throw new IllegalStateException("No preceding call to #readHistoricalData");
        }
        if (n)
        {
            n = false;
            if (!TextUtils.isEmpty(c))
            {
                (new e()).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[] {
                    new ArrayList(i), c
                });
                return;
            }
        }
    }

    private void d()
    {
        boolean flag = f();
        boolean flag1 = g();
        h();
        if (flag | flag1)
        {
            e();
            notifyChanged();
        }
    }

    private boolean e()
    {
        if (k != null && j != null && !h.isEmpty() && !i.isEmpty())
        {
            k.a(j, h, Collections.unmodifiableList(i));
            return true;
        } else
        {
            return false;
        }
    }

    private boolean f()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (o)
        {
            flag = flag1;
            if (j != null)
            {
                o = false;
                h.clear();
                List list = b.getPackageManager().queryIntentActivities(j, 0);
                int j1 = list.size();
                for (int i1 = 0; i1 < j1; i1++)
                {
                    ResolveInfo resolveinfo = (ResolveInfo)list.get(i1);
                    h.add(new a(resolveinfo));
                }

                flag = true;
            }
        }
        return flag;
    }

    private boolean g()
    {
        if (d && n && !TextUtils.isEmpty(c))
        {
            d = false;
            m = true;
            i();
            return true;
        } else
        {
            return false;
        }
    }

    private void h()
    {
        int j1 = i.size() - l;
        if (j1 > 0)
        {
            n = true;
            int i1 = 0;
            while (i1 < j1) 
            {
                c c1 = (c)i.remove(0);
                i1++;
            }
        }
    }

    private void i()
    {
        Object obj;
        Object obj1;
        Exception exception;
        List list;
        int i1;
        try
        {
            obj = b.openFileInput(c);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return;
        }
        obj1 = Xml.newPullParser();
        ((XmlPullParser) (obj1)).setInput(((java.io.InputStream) (obj)), "UTF-8");
        i1 = 0;
_L1:
        if (i1 == 1 || i1 == 2)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        i1 = ((XmlPullParser) (obj1)).next();
          goto _L1
        if (!"historical-records".equals(((XmlPullParser) (obj1)).getName()))
        {
            throw new XmlPullParserException("Share records file does not start with historical-records tag.");
        }
          goto _L2
        obj1;
        Log.e(a, (new StringBuilder()).append("Error reading historical recrod file: ").append(c).toString(), ((Throwable) (obj1)));
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        ((FileInputStream) (obj)).close();
_L6:
        return;
_L2:
        list = i;
        list.clear();
_L8:
        i1 = ((XmlPullParser) (obj1)).next();
        if (i1 != 1) goto _L4; else goto _L3
_L3:
        if (obj == null) goto _L6; else goto _L5
_L5:
        try
        {
            ((FileInputStream) (obj)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
_L4:
        if (i1 == 3 || i1 == 4) goto _L8; else goto _L7
_L7:
        if (!"historical-record".equals(((XmlPullParser) (obj1)).getName()))
        {
            throw new XmlPullParserException("Share records file not well-formed.");
        }
        break MISSING_BLOCK_LABEL_229;
        obj1;
        Log.e(a, (new StringBuilder()).append("Error reading historical recrod file: ").append(c).toString(), ((Throwable) (obj1)));
        if (obj == null) goto _L6; else goto _L9
_L9:
        try
        {
            ((FileInputStream) (obj)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            return;
        }
        list.add(new c(((XmlPullParser) (obj1)).getAttributeValue(null, "activity"), Long.parseLong(((XmlPullParser) (obj1)).getAttributeValue(null, "time")), Float.parseFloat(((XmlPullParser) (obj1)).getAttributeValue(null, "weight"))));
          goto _L8
        exception;
        IOException ioexception;
        if (obj != null)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch (IOException ioexception1) { }
        }
        throw exception;
        ioexception;
    }

    public int a()
    {
        int i1;
        synchronized (g)
        {
            d();
            i1 = h.size();
        }
        return i1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int a(ResolveInfo resolveinfo)
    {
        Object obj = g;
        obj;
        JVM INSTR monitorenter ;
        List list;
        int j1;
        d();
        list = h;
        j1 = list.size();
        int i1 = 0;
_L2:
        if (i1 >= j1)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        if (((a)list.get(i1)).a != resolveinfo)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        obj;
        JVM INSTR monitorexit ;
        return i1;
        obj;
        JVM INSTR monitorexit ;
        return -1;
        resolveinfo;
        obj;
        JVM INSTR monitorexit ;
        throw resolveinfo;
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ResolveInfo a(int i1)
    {
        ResolveInfo resolveinfo;
        synchronized (g)
        {
            d();
            resolveinfo = ((a)h.get(i1)).a;
        }
        return resolveinfo;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Intent b(int i1)
    {
label0:
        {
            synchronized (g)
            {
                if (j != null)
                {
                    break label0;
                }
            }
            return null;
        }
        Object obj1;
        Intent intent;
        d();
        obj1 = (a)h.get(i1);
        obj1 = new ComponentName(((a) (obj1)).a.activityInfo.packageName, ((a) (obj1)).a.activityInfo.name);
        intent = new Intent(j);
        intent.setComponent(((ComponentName) (obj1)));
        if (p == null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        Intent intent1 = new Intent(intent);
        if (!p.a(this, intent1))
        {
            break MISSING_BLOCK_LABEL_121;
        }
        obj;
        JVM INSTR monitorexit ;
        return null;
        a(new c(((ComponentName) (obj1)), System.currentTimeMillis(), 1.0F));
        obj;
        JVM INSTR monitorexit ;
        return intent;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ResolveInfo b()
    {
        Object obj = g;
        obj;
        JVM INSTR monitorenter ;
        ResolveInfo resolveinfo;
        d();
        if (h.isEmpty())
        {
            break MISSING_BLOCK_LABEL_44;
        }
        resolveinfo = ((a)h.get(0)).a;
        return resolveinfo;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void c(int i1)
    {
        Object obj = g;
        obj;
        JVM INSTR monitorenter ;
        a a1;
        a a2;
        d();
        a1 = (a)h.get(i1);
        a2 = (a)h.get(0);
        if (a2 == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        float f1 = (a2.b - a1.b) + 5F;
_L1:
        a(new c(new ComponentName(a1.a.activityInfo.packageName, a1.a.activityInfo.name), System.currentTimeMillis(), f1));
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        f1 = 1.0F;
          goto _L1
    }

}
