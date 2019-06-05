// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import dalvik.system.DexFile;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

// Referenced classes of package android.support.multidex:
//            b

public final class android.support.multidex.a
{
    private static final class a
    {

        private static final int a = ".zip".length();
        private final a b;

        private static String a(File file)
        {
            File file1 = file.getParentFile();
            file = file.getName();
            return (new File(file1, (new StringBuilder()).append(file.substring(0, file.length() - a)).append(".dex").toString())).getPath();
        }

        static void a(ClassLoader classloader, List list)
        {
            classloader = ((ClassLoader) (android.support.multidex.a.a(classloader, "pathList").get(classloader)));
            list = ((List) ((new a()).a(list)));
            try
            {
                android.support.multidex.a.a(classloader, "dexElements", list);
                return;
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", nosuchfieldexception);
            }
            android.support.multidex.a.a(classloader, "pathElements", list);
        }

        private Object[] a(List list)
        {
            Object aobj[] = new Object[list.size()];
            for (int i = 0; i < aobj.length; i++)
            {
                File file = (File)list.get(i);
                aobj[i] = b.a(file, DexFile.loadDex(file.getPath(), a(file), 0));
            }

            return aobj;
        }


        private a()
        {
            Class class1 = Class.forName("dalvik.system.DexPathList$Element");
            Object obj;
            try
            {
                obj = new b(class1);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                try
                {
                    nosuchmethodexception = new c(class1);
                }
                catch (NoSuchMethodException nosuchmethodexception1)
                {
                    nosuchmethodexception1 = new d(class1);
                }
            }
            b = ((a) (obj));
        }
    }

    private static interface a.a
    {

        public abstract Object a(File file, DexFile dexfile);
    }

    private static class a.b
        implements a.a
    {

        private final Constructor a;

        public Object a(File file, DexFile dexfile)
        {
            return a.newInstance(new Object[] {
                file, new ZipFile(file), dexfile
            });
        }

        a.b(Class class1)
        {
            a = class1.getConstructor(new Class[] {
                java/io/File, java/util/zip/ZipFile, dalvik/system/DexFile
            });
            a.setAccessible(true);
        }
    }

    private static class a.c
        implements a.a
    {

        private final Constructor a;

        public Object a(File file, DexFile dexfile)
        {
            return a.newInstance(new Object[] {
                file, file, dexfile
            });
        }

        a.c(Class class1)
        {
            a = class1.getConstructor(new Class[] {
                java/io/File, java/io/File, dalvik/system/DexFile
            });
            a.setAccessible(true);
        }
    }

    private static class a.d
        implements a.a
    {

        private final Constructor a;

        public Object a(File file, DexFile dexfile)
        {
            return a.newInstance(new Object[] {
                file, Boolean.FALSE, file, dexfile
            });
        }

        a.d(Class class1)
        {
            a = class1.getConstructor(new Class[] {
                java/io/File, Boolean.TYPE, java/io/File, dalvik/system/DexFile
            });
            a.setAccessible(true);
        }
    }

    private static final class b
    {

        static void a(ClassLoader classloader, List list, File file)
        {
            Object obj = android.support.multidex.a.a(classloader, "pathList").get(classloader);
            ArrayList arraylist = new ArrayList();
            android.support.multidex.a.a(obj, "dexElements", a(obj, new ArrayList(list), file, arraylist));
            if (arraylist.size() > 0)
            {
                for (classloader = arraylist.iterator(); classloader.hasNext(); Log.w("MultiDex", "Exception in makeDexElement", (IOException)classloader.next())) { }
                list = android.support.multidex.a.a(obj, "dexElementsSuppressedExceptions");
                file = (IOException[])(IOException[])list.get(obj);
                if (file == null)
                {
                    classloader = (IOException[])arraylist.toArray(new IOException[arraylist.size()]);
                } else
                {
                    classloader = new IOException[arraylist.size() + file.length];
                    arraylist.toArray(classloader);
                    System.arraycopy(file, 0, classloader, arraylist.size(), file.length);
                }
                list.set(obj, classloader);
                classloader = new IOException("I/O exception during makeDexElement");
                classloader.initCause((Throwable)arraylist.get(0));
                throw classloader;
            } else
            {
                return;
            }
        }

        private static Object[] a(Object obj, ArrayList arraylist, File file, ArrayList arraylist1)
        {
            return (Object[])(Object[])android.support.multidex.a.a(obj, "makeDexElements", new Class[] {
                java/util/ArrayList, java/io/File, java/util/ArrayList
            }).invoke(obj, new Object[] {
                arraylist, file, arraylist1
            });
        }
    }

    private static final class c
    {

        static void a(ClassLoader classloader, List list)
        {
            int i = list.size();
            Field field = android.support.multidex.a.a(classloader, "path");
            StringBuilder stringbuilder = new StringBuilder((String)field.get(classloader));
            String as[] = new String[i];
            File afile[] = new File[i];
            ZipFile azipfile[] = new ZipFile[i];
            DexFile adexfile[] = new DexFile[i];
            for (list = list.listIterator(); list.hasNext();)
            {
                File file = (File)list.next();
                String s = file.getAbsolutePath();
                stringbuilder.append(':').append(s);
                int j = list.previousIndex();
                as[j] = s;
                afile[j] = file;
                azipfile[j] = new ZipFile(file);
                adexfile[j] = DexFile.loadDex(s, (new StringBuilder()).append(s).append(".dex").toString(), 0);
            }

            field.set(classloader, stringbuilder.toString());
            android.support.multidex.a.a(classloader, "mPaths", as);
            android.support.multidex.a.a(classloader, "mFiles", afile);
            android.support.multidex.a.a(classloader, "mZips", azipfile);
            android.support.multidex.a.a(classloader, "mDexs", adexfile);
        }
    }


    private static final Set a = new HashSet();
    private static final boolean b = a(System.getProperty("java.vm.version"));

    private static File a(Context context, File file, String s)
    {
        file = new File(file, "code_cache");
        a(file);
        context = file;
_L2:
        context = new File(context, s);
        a(((File) (context)));
        return context;
        file;
        context = new File(context.getFilesDir(), "code_cache");
        a(((File) (context)));
        if (true) goto _L2; else goto _L1
_L1:
    }

    static Field a(Object obj, String s)
    {
        return b(obj, s);
    }

    static Method a(Object obj, String s, Class aclass[])
    {
        return b(obj, s, aclass);
    }

    public static void a(Context context)
    {
        Log.i("MultiDex", "Installing application");
        if (b)
        {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
            return;
        }
        if (android.os.Build.VERSION.SDK_INT < 4)
        {
            throw new RuntimeException((new StringBuilder()).append("MultiDex installation failed. SDK ").append(android.os.Build.VERSION.SDK_INT).append(" is unsupported. Min SDK version is ").append(4).append(".").toString());
        }
        ApplicationInfo applicationinfo = b(context);
        if (applicationinfo == null)
        {
            try
            {
                Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                return;
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                Log.e("MultiDex", "MultiDex installation failure", context);
            }
            throw new RuntimeException((new StringBuilder()).append("MultiDex installation failed (").append(context.getMessage()).append(").").toString());
        }
        a(context, new File(applicationinfo.sourceDir), new File(applicationinfo.dataDir), "secondary-dexes", "", true);
        Log.i("MultiDex", "install done");
        return;
    }

    private static void a(Context context, File file, File file1, String s, String s1, boolean flag)
    {
label0:
        {
            synchronized (a)
            {
                if (!a.contains(file))
                {
                    break label0;
                }
            }
            return;
        }
        a.add(file);
        if (android.os.Build.VERSION.SDK_INT > 20)
        {
            Log.w("MultiDex", (new StringBuilder()).append("MultiDex is not guaranteed to work in SDK version ").append(android.os.Build.VERSION.SDK_INT).append(": SDK version higher than ").append(20).append(" should be backed by ").append("runtime with built-in multidex capabilty but it's not the ").append("case here: java.vm.version=\"").append(System.getProperty("java.vm.version")).append("\"").toString());
        }
        ClassLoader classloader = context.getClassLoader();
        if (classloader != null)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
        set;
        JVM INSTR monitorexit ;
        return;
        context;
        set;
        JVM INSTR monitorexit ;
        throw context;
        context;
        Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", context);
        set;
        JVM INSTR monitorexit ;
        return;
        c(context);
_L1:
        file1 = a(context, file1, s);
        s = new android.support.multidex.b(file, file1);
        file = null;
        List list = s.a(context, s1, false);
        a(classloader, file1, list);
_L2:
        s.close();
        context = file;
_L3:
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_262;
        }
        throw context;
        Object obj;
        obj;
        Log.w("MultiDex", "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning.", ((Throwable) (obj)));
          goto _L1
        obj;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        throw obj;
        context;
        try
        {
            s.close();
        }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        throw context;
        Log.w("MultiDex", "Failed to install extracted secondary dex files, retrying with forced extraction", ((Throwable) (obj)));
        a(classloader, file1, s.a(context, s1, true));
          goto _L2
        set;
        JVM INSTR monitorexit ;
        return;
        context;
          goto _L3
    }

    private static void a(File file)
    {
        file.mkdir();
        if (!file.isDirectory())
        {
            File file1 = file.getParentFile();
            if (file1 == null)
            {
                Log.e("MultiDex", (new StringBuilder()).append("Failed to create dir ").append(file.getPath()).append(". Parent file is null.").toString());
            } else
            {
                Log.e("MultiDex", (new StringBuilder()).append("Failed to create dir ").append(file.getPath()).append(". parent file is a dir ").append(file1.isDirectory()).append(", a file ").append(file1.isFile()).append(", exists ").append(file1.exists()).append(", readable ").append(file1.canRead()).append(", writable ").append(file1.canWrite()).toString());
            }
            throw new IOException((new StringBuilder()).append("Failed to create directory ").append(file.getPath()).toString());
        } else
        {
            return;
        }
    }

    private static void a(ClassLoader classloader, File file, List list)
    {
label0:
        {
            if (!list.isEmpty())
            {
                if (android.os.Build.VERSION.SDK_INT < 19)
                {
                    break label0;
                }
                b.a(classloader, list, file);
            }
            return;
        }
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a.a(classloader, list);
            return;
        } else
        {
            c.a(classloader, list);
            return;
        }
    }

    static void a(Object obj, String s, Object aobj[])
    {
        b(obj, s, aobj);
    }

    static boolean a(String s)
    {
        Matcher matcher;
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        matcher = Pattern.compile("(\\d+)\\.(\\d+)(\\.\\d+)?").matcher(s);
        flag = flag1;
        if (!matcher.matches())
        {
            break MISSING_BLOCK_LABEL_77;
        }
        int i;
        int j;
        i = Integer.parseInt(matcher.group(1));
        j = Integer.parseInt(matcher.group(2));
        if (i <= 2)
        {
            flag = flag1;
            if (i != 2)
            {
                break MISSING_BLOCK_LABEL_77;
            }
            flag = flag1;
            if (j < 1)
            {
                break MISSING_BLOCK_LABEL_77;
            }
        }
        flag = true;
_L2:
        StringBuilder stringbuilder = (new StringBuilder()).append("VM with version ").append(s);
        if (flag)
        {
            s = " has multidex support";
        } else
        {
            s = " does not have multidex support";
        }
        Log.i("MultiDex", stringbuilder.append(s).toString());
        return flag;
        NumberFormatException numberformatexception;
        numberformatexception;
        flag = flag1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static ApplicationInfo b(Context context)
    {
        try
        {
            context = context.getApplicationInfo();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", context);
            return null;
        }
        return context;
    }

    private static Field b(Object obj, String s)
    {
        Class class1 = obj.getClass();
_L2:
        if (class1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Field field;
        field = class1.getDeclaredField(s);
        if (!field.isAccessible())
        {
            field.setAccessible(true);
        }
        return field;
        NoSuchFieldException nosuchfieldexception;
        nosuchfieldexception;
        class1 = class1.getSuperclass();
        if (true) goto _L2; else goto _L1
_L1:
        throw new NoSuchFieldException((new StringBuilder()).append("Field ").append(s).append(" not found in ").append(obj.getClass()).toString());
    }

    private static transient Method b(Object obj, String s, Class aclass[])
    {
        Class class1 = obj.getClass();
_L2:
        if (class1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Method method;
        method = class1.getDeclaredMethod(s, aclass);
        if (!method.isAccessible())
        {
            method.setAccessible(true);
        }
        return method;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        class1 = class1.getSuperclass();
        if (true) goto _L2; else goto _L1
_L1:
        throw new NoSuchMethodException((new StringBuilder()).append("Method ").append(s).append(" with parameters ").append(Arrays.asList(aclass)).append(" not found in ").append(obj.getClass()).toString());
    }

    private static void b(Object obj, String s, Object aobj[])
    {
        s = b(obj, s);
        Object aobj1[] = (Object[])(Object[])s.get(obj);
        Object aobj2[] = (Object[])(Object[])Array.newInstance(((Object) (aobj1)).getClass().getComponentType(), aobj1.length + aobj.length);
        System.arraycopy(((Object) (aobj1)), 0, ((Object) (aobj2)), 0, aobj1.length);
        System.arraycopy(((Object) (aobj)), 0, ((Object) (aobj2)), aobj1.length, aobj.length);
        s.set(obj, ((Object) (aobj2)));
    }

    private static void c(Context context)
    {
        File afile[];
label0:
        {
            context = new File(context.getFilesDir(), "secondary-dexes");
            if (context.isDirectory())
            {
                Log.i("MultiDex", (new StringBuilder()).append("Clearing old secondary dex dir (").append(context.getPath()).append(").").toString());
                afile = context.listFiles();
                if (afile != null)
                {
                    break label0;
                }
                Log.w("MultiDex", (new StringBuilder()).append("Failed to list secondary dex dir content (").append(context.getPath()).append(").").toString());
            }
            return;
        }
        int j = afile.length;
        int i = 0;
        while (i < j) 
        {
            File file = afile[i];
            Log.i("MultiDex", (new StringBuilder()).append("Trying to delete old file ").append(file.getPath()).append(" of size ").append(file.length()).toString());
            if (!file.delete())
            {
                Log.w("MultiDex", (new StringBuilder()).append("Failed to delete old file ").append(file.getPath()).toString());
            } else
            {
                Log.i("MultiDex", (new StringBuilder()).append("Deleted old file ").append(file.getPath()).toString());
            }
            i++;
        }
        if (!context.delete())
        {
            Log.w("MultiDex", (new StringBuilder()).append("Failed to delete secondary dex dir ").append(context.getPath()).toString());
            return;
        } else
        {
            Log.i("MultiDex", (new StringBuilder()).append("Deleted old secondary dex dir ").append(context.getPath()).toString());
            return;
        }
    }

}
