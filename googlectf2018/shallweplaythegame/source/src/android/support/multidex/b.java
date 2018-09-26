// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

// Referenced classes of package android.support.multidex:
//            c

final class b
    implements Closeable
{
    private static class a extends File
    {

        public long a;

        public a(File file, String s)
        {
            super(file, s);
            a = -1L;
        }
    }


    private final File a;
    private final long b;
    private final File c;
    private final RandomAccessFile d;
    private final FileChannel e;
    private final FileLock f;

    b(File file, File file1)
    {
        Log.i("MultiDex", (new StringBuilder()).append("MultiDexExtractor(").append(file.getPath()).append(", ").append(file1.getPath()).append(")").toString());
        a = file;
        c = file1;
        b = b(file);
        file = new File(file1, "MultiDex.lock");
        d = new RandomAccessFile(file, "rw");
        e = d.getChannel();
        try
        {
            Log.i("MultiDex", (new StringBuilder()).append("Blocking on lock ").append(file.getPath()).toString());
            f = e.lock();
            break MISSING_BLOCK_LABEL_142;
        }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        a(e);
        throw file;
        try
        {
            Log.i("MultiDex", (new StringBuilder()).append(file.getPath()).append(" locked").toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        // Misplaced declaration of an exception variable
        catch (File file) { }
        a(d);
        throw file;
    }

    private static long a(File file)
    {
        long l1 = file.lastModified();
        long l = l1;
        if (l1 == -1L)
        {
            l = l1 - 1L;
        }
        return l;
    }

    private static SharedPreferences a(Context context)
    {
        int i;
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        return context.getSharedPreferences("multidex.version", i);
    }

    private List a()
    {
        ArrayList arraylist;
        ZipFile zipfile;
        String s1;
        s1 = (new StringBuilder()).append(a.getName()).append(".classes").toString();
        b();
        arraylist = new ArrayList();
        zipfile = new ZipFile(a);
        Object obj = zipfile.getEntry((new StringBuilder()).append("classes").append(2).append(".dex").toString());
        int j = 2;
_L5:
        if (obj == null)
        {
            break; /* Loop/switch isn't completed */
        }
        a a1;
        String s = (new StringBuilder()).append(s1).append(j).append(".zip").toString();
        a1 = new a(c, s);
        arraylist.add(a1);
        Log.i("MultiDex", (new StringBuilder()).append("Extraction is needed for file ").append(a1).toString());
        boolean flag;
        int i;
        flag = false;
        i = 0;
_L2:
        if (i >= 3 || flag)
        {
            break MISSING_BLOCK_LABEL_379;
        }
        i++;
        a(zipfile, ((ZipEntry) (obj)), ((File) (a1)), s1);
        a1.a = b(a1);
        flag = true;
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append("Extraction ");
        Object obj1;
        if (flag)
        {
            obj1 = "succeeded";
        } else
        {
            obj1 = "failed";
        }
        Log.i("MultiDex", stringbuilder.append(((String) (obj1))).append(" '").append(a1.getAbsolutePath()).append("': length ").append(a1.length()).append(" - crc: ").append(a1.a).toString());
        if (flag) goto _L2; else goto _L1
_L1:
        a1.delete();
        if (a1.exists())
        {
            Log.w("MultiDex", (new StringBuilder()).append("Failed to delete corrupted secondary dex '").append(a1.getPath()).append("'").toString());
        }
          goto _L2
        obj1;
        Log.w("MultiDex", (new StringBuilder()).append("Failed to read crc from ").append(a1.getAbsolutePath()).toString(), ((Throwable) (obj1)));
        flag = false;
          goto _L3
        if (flag)
        {
            break MISSING_BLOCK_LABEL_438;
        }
        throw new IOException((new StringBuilder()).append("Could not create zip file ").append(a1.getAbsolutePath()).append(" for secondary dex (").append(j).append(")").toString());
        obj;
        IOException ioexception;
        try
        {
            zipfile.close();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            Log.w("MultiDex", "Failed to close resource", ((Throwable) (obj1)));
        }
        throw obj;
        j++;
        obj = zipfile.getEntry((new StringBuilder()).append("classes").append(j).append(".dex").toString());
        if (true) goto _L5; else goto _L4
_L4:
        try
        {
            zipfile.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            Log.w("MultiDex", "Failed to close resource", ioexception);
            return arraylist;
        }
        return arraylist;
    }

    private List a(Context context, String s)
    {
        Log.i("MultiDex", "loading existing secondary dex files");
        String s1 = (new StringBuilder()).append(a.getName()).append(".classes").toString();
        context = a(context);
        int j = context.getInt((new StringBuilder()).append(s).append("dex.number").toString(), 1);
        ArrayList arraylist = new ArrayList(j - 1);
        for (int i = 2; i <= j;)
        {
            Object obj = (new StringBuilder()).append(s1).append(i).append(".zip").toString();
            obj = new a(c, ((String) (obj)));
            if (((a) (obj)).isFile())
            {
                obj.a = b(((File) (obj)));
                long l = context.getLong((new StringBuilder()).append(s).append("dex.crc.").append(i).toString(), -1L);
                long l1 = context.getLong((new StringBuilder()).append(s).append("dex.time.").append(i).toString(), -1L);
                long l2 = ((a) (obj)).lastModified();
                if (l1 != l2 || l != ((a) (obj)).a)
                {
                    throw new IOException((new StringBuilder()).append("Invalid extracted dex: ").append(obj).append(" (key \"").append(s).append("\"), expected modification time: ").append(l1).append(", modification time: ").append(l2).append(", expected crc: ").append(l).append(", file crc: ").append(((a) (obj)).a).toString());
                }
                arraylist.add(obj);
                i++;
            } else
            {
                throw new IOException((new StringBuilder()).append("Missing extracted secondary dex file '").append(((a) (obj)).getPath()).append("'").toString());
            }
        }

        return arraylist;
    }

    private static void a(Context context, String s, long l, long l1, List list)
    {
        context = a(context).edit();
        context.putLong((new StringBuilder()).append(s).append("timestamp").toString(), l);
        context.putLong((new StringBuilder()).append(s).append("crc").toString(), l1);
        context.putInt((new StringBuilder()).append(s).append("dex.number").toString(), list.size() + 1);
        list = list.iterator();
        for (int i = 2; list.hasNext(); i++)
        {
            a a1 = (a)list.next();
            context.putLong((new StringBuilder()).append(s).append("dex.crc.").append(i).toString(), a1.a);
            context.putLong((new StringBuilder()).append(s).append("dex.time.").append(i).toString(), a1.lastModified());
        }

        context.commit();
    }

    private static void a(Closeable closeable)
    {
        try
        {
            closeable.close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Closeable closeable)
        {
            Log.w("MultiDex", "Failed to close resource", closeable);
        }
    }

    private static void a(ZipFile zipfile, ZipEntry zipentry, File file, String s)
    {
        zipfile = zipfile.getInputStream(zipentry);
        s = File.createTempFile((new StringBuilder()).append("tmp-").append(s).toString(), ".zip", file.getParentFile());
        Log.i("MultiDex", (new StringBuilder()).append("Extracting ").append(s.getPath()).toString());
        ZipOutputStream zipoutputstream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(s)));
        int i;
        ZipEntry zipentry1 = new ZipEntry("classes.dex");
        zipentry1.setTime(zipentry.getTime());
        zipoutputstream.putNextEntry(zipentry1);
        zipentry = new byte[16384];
        i = zipfile.read(zipentry);
_L1:
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        zipoutputstream.write(zipentry, 0, i);
        i = zipfile.read(zipentry);
          goto _L1
        zipoutputstream.closeEntry();
        zipoutputstream.close();
        if (!s.setReadOnly())
        {
            throw new IOException((new StringBuilder()).append("Failed to mark readonly \"").append(s.getAbsolutePath()).append("\" (tmp of \"").append(file.getAbsolutePath()).append("\")").toString());
        }
        break MISSING_BLOCK_LABEL_242;
        zipentry;
        a(((Closeable) (zipfile)));
        s.delete();
        throw zipentry;
        zipentry;
        zipoutputstream.close();
        throw zipentry;
        Log.i("MultiDex", (new StringBuilder()).append("Renaming to ").append(file.getPath()).toString());
        if (!s.renameTo(file))
        {
            throw new IOException((new StringBuilder()).append("Failed to rename \"").append(s.getAbsolutePath()).append("\" to \"").append(file.getAbsolutePath()).append("\"").toString());
        }
        a(((Closeable) (zipfile)));
        s.delete();
        return;
    }

    private static boolean a(Context context, File file, long l, String s)
    {
        context = a(context);
        return context.getLong((new StringBuilder()).append(s).append("timestamp").toString(), -1L) != a(file) || context.getLong((new StringBuilder()).append(s).append("crc").toString(), -1L) != l;
    }

    private static long b(File file)
    {
        long l1 = android.support.multidex.c.a(file);
        long l = l1;
        if (l1 == -1L)
        {
            l = l1 - 1L;
        }
        return l;
    }

    private void b()
    {
        File afile[] = c.listFiles(new FileFilter() {

            final b a;

            public boolean accept(File file1)
            {
                return !file1.getName().equals("MultiDex.lock");
            }

            
            {
                a = b.this;
                super();
            }
        });
        if (afile == null)
        {
            Log.w("MultiDex", (new StringBuilder()).append("Failed to list secondary dex dir content (").append(c.getPath()).append(").").toString());
        } else
        {
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
        }
    }

    List a(Context context, String s, boolean flag)
    {
        Log.i("MultiDex", (new StringBuilder()).append("MultiDexExtractor.load(").append(a.getPath()).append(", ").append(flag).append(", ").append(s).append(")").toString());
        if (!f.isValid())
        {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (flag || a(context, a, b, s)) goto _L2; else goto _L1
_L1:
        List list;
        try
        {
            list = a(context, s);
        }
        catch (IOException ioexception)
        {
            Log.w("MultiDex", "Failed to reload existing extracted secondary dex files, falling back to fresh extraction", ioexception);
            List list1 = a();
            a(context, s, a(a), b, list1);
            context = list1;
            continue; /* Loop/switch isn't completed */
        }
        context = list;
_L4:
        Log.i("MultiDex", (new StringBuilder()).append("load found ").append(context.size()).append(" secondary dex files").toString());
        return context;
_L2:
        List list2;
        if (flag)
        {
            Log.i("MultiDex", "Forced extraction must be performed.");
        } else
        {
            Log.i("MultiDex", "Detected that extraction must be performed.");
        }
        list2 = a();
        a(context, s, a(a), b, list2);
        context = list2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void close()
    {
        f.release();
        e.close();
        d.close();
    }
}
