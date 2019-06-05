// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.support.v4.b.a.a;
import android.support.v4.c.c;
import android.support.v4.c.h;
import android.support.v4.g.g;
import android.support.v4.g.j;
import android.support.v4.g.k;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

// Referenced classes of package android.support.v4.f:
//            c, a

public class android.support.v4.f.b
{
    public static class a
    {

        private final int a;
        private final b b[];

        public int a()
        {
            return a;
        }

        public b[] b()
        {
            return b;
        }

        public a(int i, b ab[])
        {
            a = i;
            b = ab;
        }
    }

    public static class b
    {

        private final Uri a;
        private final int b;
        private final int c;
        private final boolean d;
        private final int e;

        public Uri a()
        {
            return a;
        }

        public int b()
        {
            return b;
        }

        public int c()
        {
            return c;
        }

        public boolean d()
        {
            return d;
        }

        public int e()
        {
            return e;
        }

        public b(Uri uri, int i, int l, boolean flag, int i1)
        {
            a = (Uri)j.a(uri);
            b = i;
            c = l;
            d = flag;
            e = i1;
        }
    }


    private static final g a = new g(16);
    private static final android.support.v4.f.c b = new android.support.v4.f.c("fonts", 10, 10000);
    private static final Object c = new Object();
    private static final k d = new k();
    private static final Comparator e = new Comparator() {

        public int a(byte abyte0[], byte abyte1[])
        {
            boolean flag = false;
            if (abyte0.length == abyte1.length) goto _L2; else goto _L1
_L1:
            int i = abyte0.length - abyte1.length;
_L4:
            return i;
_L2:
            int j = 0;
            do
            {
                i = ((flag) ? 1 : 0);
                if (j >= abyte0.length)
                {
                    continue;
                }
                if (abyte0[j] != abyte1[j])
                {
                    return abyte0[j] - abyte1[j];
                }
                j++;
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
        }

        public int compare(Object obj, Object obj1)
        {
            return a((byte[])obj, (byte[])obj1);
        }

    };

    public static ProviderInfo a(PackageManager packagemanager, android.support.v4.f.a a1, Resources resources)
    {
        String s = a1.a();
        ProviderInfo providerinfo = packagemanager.resolveContentProvider(s, 0);
        if (providerinfo == null)
        {
            throw new android.content.pm.PackageManager.NameNotFoundException((new StringBuilder()).append("No package found for authority: ").append(s).toString());
        }
        if (!providerinfo.packageName.equals(a1.b()))
        {
            throw new android.content.pm.PackageManager.NameNotFoundException((new StringBuilder()).append("Found content provider ").append(s).append(", but package was not ").append(a1.b()).toString());
        }
        packagemanager = a(packagemanager.getPackageInfo(providerinfo.packageName, 64).signatures);
        Collections.sort(packagemanager, e);
        a1 = a(a1, resources);
        for (int i = 0; i < a1.size(); i++)
        {
            resources = new ArrayList((Collection)a1.get(i));
            Collections.sort(resources, e);
            if (a(((List) (packagemanager)), ((List) (resources))))
            {
                return providerinfo;
            }
        }

        return null;
    }

    static Typeface a(Context context, android.support.v4.f.a a1, int i)
    {
        return b(context, a1, i);
    }

    public static Typeface a(Context context, android.support.v4.f.a a1, TextView textview, int i, int j, int l)
    {
        String s;
label0:
        {
            s = (new StringBuilder()).append(a1.f()).append("-").append(l).toString();
            Typeface typeface = (Typeface)a.a(s);
            if (typeface != null)
            {
                return typeface;
            }
            if (i == 0)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (i != 0 && j == -1)
            {
                return b(context, a1, l);
            }
            context = new Callable(context, a1, l, s) {

                final Context a;
                final android.support.v4.f.a b;
                final int c;
                final String d;

                public Typeface a()
                {
                    Typeface typeface1 = android.support.v4.f.b.a(a, b, c);
                    if (typeface1 != null)
                    {
                        android.support.v4.f.b.a().a(d, typeface1);
                    }
                    return typeface1;
                }

                public Object call()
                {
                    return a();
                }

            
            {
                a = context;
                b = a1;
                c = i;
                d = s;
                super();
            }
            };
            if (i != 0)
            {
                try
                {
                    context = (Typeface)b.a(context, j);
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    return null;
                }
                return context;
            }
            textview = new c.a(new WeakReference(textview), textview, l) {

                final WeakReference a;
                final TextView b;
                final int c;

                public void a(Typeface typeface1)
                {
                    if ((TextView)a.get() != null)
                    {
                        b.setTypeface(typeface1, c);
                    }
                }

                public volatile void a(Object obj)
                {
                    a((Typeface)obj);
                }

            
            {
                a = weakreference;
                b = textview;
                c = i;
                super();
            }
            };
            synchronized (c)
            {
                if (!d.containsKey(s))
                {
                    break label0;
                }
                ((ArrayList)d.get(s)).add(textview);
            }
            return null;
        }
        ArrayList arraylist = new ArrayList();
        arraylist.add(textview);
        d.put(s, arraylist);
        a1;
        JVM INSTR monitorexit ;
        b.a(context, new c.a(s) {

            final String a;

            public void a(Typeface typeface1)
            {
                ArrayList arraylist1;
                synchronized (android.support.v4.f.b.b())
                {
                    arraylist1 = (ArrayList)android.support.v4.f.b.c().get(a);
                    android.support.v4.f.b.c().remove(a);
                }
                for (int i1 = 0; i1 < arraylist1.size(); i1++)
                {
                    ((c.a)arraylist1.get(i1)).a(typeface1);
                }

                break MISSING_BLOCK_LABEL_74;
                typeface1;
                obj;
                JVM INSTR monitorexit ;
                throw typeface1;
            }

            public volatile void a(Object obj)
            {
                a((Typeface)obj);
            }

            
            {
                a = s;
                super();
            }
        });
        return null;
        context;
        a1;
        JVM INSTR monitorexit ;
        throw context;
    }

    public static a a(Context context, CancellationSignal cancellationsignal, android.support.v4.f.a a1)
    {
        ProviderInfo providerinfo = a(context.getPackageManager(), a1, context.getResources());
        if (providerinfo == null)
        {
            return new a(1, null);
        } else
        {
            return new a(0, a(context, a1, providerinfo.authority, cancellationsignal));
        }
    }

    static g a()
    {
        return a;
    }

    private static List a(android.support.v4.f.a a1, Resources resources)
    {
        if (a1.d() != null)
        {
            return a1.d();
        } else
        {
            return android.support.v4.b.a.a.a(resources, a1.e());
        }
    }

    private static List a(Signature asignature[])
    {
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < asignature.length; i++)
        {
            arraylist.add(asignature[i].toByteArray());
        }

        return arraylist;
    }

    public static Map a(Context context, b ab[], CancellationSignal cancellationsignal)
    {
        HashMap hashmap = new HashMap();
        int j = ab.length;
        int i = 0;
        while (i < j) 
        {
            Object obj = ab[i];
            if (((b) (obj)).e() == 0)
            {
                obj = ((b) (obj)).a();
                if (!hashmap.containsKey(obj))
                {
                    hashmap.put(obj, h.a(context, cancellationsignal, ((Uri) (obj))));
                }
            }
            i++;
        }
        return Collections.unmodifiableMap(hashmap);
    }

    private static boolean a(List list, List list1)
    {
        if (list.size() == list1.size()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= list.size())
                {
                    break label1;
                }
                if (!Arrays.equals((byte[])list.get(i), (byte[])list1.get(i)))
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    static b[] a(Context context, android.support.v4.f.a a1, String s, CancellationSignal cancellationsignal)
    {
        ArrayList arraylist;
        Uri uri;
        Uri uri1;
        arraylist = new ArrayList();
        uri = (new android.net.Uri.Builder()).scheme("content").authority(s).build();
        uri1 = (new android.net.Uri.Builder()).scheme("content").authority(s).appendPath("file").build();
        if (android.os.Build.VERSION.SDK_INT <= 16) goto _L2; else goto _L1
_L1:
        context = context.getContentResolver();
        a1 = a1.c();
        context = context.query(uri, new String[] {
            "_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"
        }, "query = ?", new String[] {
            a1
        }, null, cancellationsignal);
_L20:
        if (context == null) goto _L4; else goto _L3
_L3:
        if (context.getCount() <= 0) goto _L4; else goto _L5
_L5:
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        i1 = context.getColumnIndex("result_code");
        s = new ArrayList();
        j1 = context.getColumnIndex("_id");
        k1 = context.getColumnIndex("file_id");
        l1 = context.getColumnIndex("font_ttc_index");
        i2 = context.getColumnIndex("font_weight");
        j2 = context.getColumnIndex("font_italic");
_L19:
        a1 = s;
        if (!context.moveToNext()) goto _L7; else goto _L6
_L6:
        if (i1 == -1) goto _L9; else goto _L8
_L8:
        int i = context.getInt(i1);
_L21:
        if (l1 == -1) goto _L11; else goto _L10
_L10:
        int j = context.getInt(l1);
_L22:
        if (k1 != -1) goto _L13; else goto _L12
_L12:
        a1 = ContentUris.withAppendedId(uri, context.getLong(j1));
_L23:
        if (i2 == -1) goto _L15; else goto _L14
_L14:
        int l = context.getInt(i2);
_L24:
        if (j2 == -1) goto _L17; else goto _L16
_L16:
        if (context.getInt(j2) != 1) goto _L17; else goto _L18
_L18:
        boolean flag = true;
_L25:
        s.add(new b(a1, j, l, flag, i));
          goto _L19
        s;
        a1 = context;
        context = s;
_L26:
        if (a1 != null)
        {
            a1.close();
        }
        throw context;
_L2:
        context = context.getContentResolver();
        a1 = a1.c();
        context = context.query(uri, new String[] {
            "_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"
        }, "query = ?", new String[] {
            a1
        }, null);
          goto _L20
_L9:
        i = 0;
          goto _L21
_L11:
        j = 0;
          goto _L22
_L13:
        a1 = ContentUris.withAppendedId(uri1, context.getLong(k1));
          goto _L23
_L15:
        l = 400;
          goto _L24
_L17:
        flag = false;
          goto _L25
_L4:
        a1 = arraylist;
_L7:
        if (context != null)
        {
            context.close();
        }
        return (b[])a1.toArray(new b[0]);
        context;
        a1 = null;
          goto _L26
    }

    private static Typeface b(Context context, android.support.v4.f.a a1, int i)
    {
        Object obj = null;
        a a2;
        try
        {
            a2 = a(context, ((CancellationSignal) (null)), a1);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        a1 = obj;
        if (a2.a() == 0)
        {
            a1 = android.support.v4.c.c.a(context, null, a2.b(), i);
        }
        return a1;
    }

    static Object b()
    {
        return c;
    }

    static k c()
    {
        return d;
    }

}
