// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class h
{

    public static File a(Context context)
    {
        String s;
        int i;
        s = (new StringBuilder()).append(".font").append(Process.myPid()).append("-").append(Process.myTid()).append("-").toString();
        i = 0;
_L3:
        if (i >= 100) goto _L2; else goto _L1
_L1:
        File file = new File(context.getCacheDir(), (new StringBuilder()).append(s).append(i).toString());
        boolean flag = file.createNewFile();
        if (flag)
        {
            return file;
        }
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        i++;
          goto _L3
_L2:
        return null;
    }

    public static ByteBuffer a(Context context, Resources resources, int i)
    {
        context = a(context);
        if (context == null)
        {
            return null;
        }
        boolean flag = a(((File) (context)), resources, i);
        if (!flag)
        {
            context.delete();
            return null;
        }
        resources = a(((File) (context)));
        context.delete();
        return resources;
        resources;
        context.delete();
        throw resources;
    }

    public static ByteBuffer a(Context context, CancellationSignal cancellationsignal, Uri uri)
    {
        Object obj;
        context = context.getContentResolver();
        long l;
        try
        {
            uri = context.openFileDescriptor(uri, "r", cancellationsignal);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        obj = new FileInputStream(uri.getFileDescriptor());
        context = ((FileInputStream) (obj)).getChannel();
        l = context.size();
        context = context.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, 0L, l);
        if (obj == null) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        ((FileInputStream) (obj)).close();
_L2:
        if (uri == null) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
        uri.close();
_L6:
        return context;
        context;
        try
        {
            throw new NullPointerException();
        }
        // Misplaced declaration of an exception variable
        catch (Context context) { }
        finally
        {
            context = null;
        }
        throw context;
        cancellationsignal;
        if (uri == null) goto _L10; else goto _L9
_L9:
        if (context == null) goto _L12; else goto _L11
_L11:
        uri.close();
_L10:
        throw cancellationsignal;
_L4:
        ((FileInputStream) (obj)).close();
          goto _L2
        context;
        throw new NullPointerException();
_L8:
        uri.close();
        return context;
        context;
        throw context;
        cancellationsignal;
_L18:
        if (obj == null) goto _L14; else goto _L13
_L13:
        if (context == null) goto _L16; else goto _L15
_L15:
        ((FileInputStream) (obj)).close();
_L14:
        throw cancellationsignal;
        obj;
        context.addSuppressed(((Throwable) (obj)));
        continue; /* Loop/switch isn't completed */
_L16:
        ((FileInputStream) (obj)).close();
        if (true) goto _L14; else goto _L17
_L17:
        uri;
        context.addSuppressed(uri);
          goto _L10
_L12:
        uri.close();
          goto _L10
        cancellationsignal;
        context = null;
          goto _L18
    }

    private static ByteBuffer a(File file)
    {
        Throwable throwable;
        Object obj;
        long l;
        try
        {
            obj = new FileInputStream(file);
        }
        // Misplaced declaration of an exception variable
        catch (File file)
        {
            return null;
        }
        file = ((FileInputStream) (obj)).getChannel();
        l = file.size();
        file = file.map(java.nio.channels.FileChannel.MapMode.READ_ONLY, 0L, l);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        if (true)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        ((FileInputStream) (obj)).close();
        return file;
        file;
        throw new NullPointerException();
        ((FileInputStream) (obj)).close();
        return file;
        throwable;
        throw throwable;
        file;
_L3:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        if (throwable == null)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        ((FileInputStream) (obj)).close();
_L1:
        throw file;
        obj;
        throwable.addSuppressed(((Throwable) (obj)));
          goto _L1
        ((FileInputStream) (obj)).close();
          goto _L1
        file;
        throwable = null;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        closeable;
    }

    public static boolean a(File file, Resources resources, int i)
    {
        Resources resources1 = null;
        resources = resources.openRawResource(i);
        resources1 = resources;
        boolean flag = a(file, ((InputStream) (resources)));
        a(((Closeable) (resources)));
        return flag;
        file;
        a(((Closeable) (resources1)));
        throw file;
    }

    public static boolean a(File file, InputStream inputstream)
    {
        Object obj = new FileOutputStream(file, false);
        file = ((File) (obj));
        byte abyte0[] = new byte[1024];
_L2:
        file = ((File) (obj));
        int i = inputstream.read(abyte0);
        if (i == -1)
        {
            break; /* Loop/switch isn't completed */
        }
        file = ((File) (obj));
        ((FileOutputStream) (obj)).write(abyte0, 0, i);
        if (true) goto _L2; else goto _L1
        file;
        inputstream = ((InputStream) (obj));
        obj = file;
_L6:
        file = inputstream;
        Log.e("TypefaceCompatUtil", (new StringBuilder()).append("Error copying resource contents to temp file: ").append(((IOException) (obj)).getMessage()).toString());
        a(((Closeable) (inputstream)));
        return false;
_L1:
        a(((Closeable) (obj)));
        return true;
        inputstream;
        file = null;
_L4:
        a(((Closeable) (file)));
        throw inputstream;
        inputstream;
        if (true) goto _L4; else goto _L3
_L3:
        obj;
        inputstream = null;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
