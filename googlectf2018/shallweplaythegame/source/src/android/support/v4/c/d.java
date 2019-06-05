// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.c;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

// Referenced classes of package android.support.v4.c:
//            g

class d extends g
{

    d()
    {
    }

    private File a(ParcelFileDescriptor parcelfiledescriptor)
    {
label0:
        {
            try
            {
                parcelfiledescriptor = Os.readlink((new StringBuilder()).append("/proc/self/fd/").append(parcelfiledescriptor.getFd()).toString());
                if (!OsConstants.S_ISREG(Os.stat(parcelfiledescriptor).st_mode))
                {
                    break label0;
                }
                parcelfiledescriptor = new File(parcelfiledescriptor);
            }
            // Misplaced declaration of an exception variable
            catch (ParcelFileDescriptor parcelfiledescriptor)
            {
                return null;
            }
            return parcelfiledescriptor;
        }
        return null;
    }

    public Typeface a(Context context, CancellationSignal cancellationsignal, android.support.v4.f.b.b ab[], int i)
    {
        Object obj;
        if (ab.length < 1)
        {
            return null;
        }
        ab = a(ab, i);
        obj = context.getContentResolver();
        try
        {
            ab = ((ContentResolver) (obj)).openFileDescriptor(ab.a(), "r", cancellationsignal);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        cancellationsignal = a(((ParcelFileDescriptor) (ab)));
        if (cancellationsignal == null) goto _L2; else goto _L1
_L1:
        if (cancellationsignal.canRead()) goto _L3; else goto _L2
_L2:
        obj = new FileInputStream(ab.getFileDescriptor());
        context = super.a(context, ((java.io.InputStream) (obj)));
        if (obj == null) goto _L5; else goto _L4
_L4:
        if (true) goto _L7; else goto _L6
_L6:
        ((FileInputStream) (obj)).close();
_L5:
        if (ab == null) goto _L9; else goto _L8
_L8:
        if (true) goto _L11; else goto _L10
_L10:
        ab.close();
_L9:
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
        if (ab == null) goto _L13; else goto _L12
_L12:
        if (context == null) goto _L15; else goto _L14
_L14:
        ab.close();
_L13:
        throw cancellationsignal;
_L7:
        ((FileInputStream) (obj)).close();
          goto _L5
        context;
        throw new NullPointerException();
_L11:
        ab.close();
          goto _L9
        context;
        throw context;
        cancellationsignal;
_L22:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_179;
        }
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        ((FileInputStream) (obj)).close();
_L16:
        throw cancellationsignal;
        obj;
        context.addSuppressed(((Throwable) (obj)));
          goto _L16
        ((FileInputStream) (obj)).close();
          goto _L16
_L3:
        context = Typeface.createFromFile(cancellationsignal);
        if (ab == null) goto _L18; else goto _L17
_L17:
        if (true) goto _L20; else goto _L19
_L19:
        ab.close();
_L18:
        return context;
        context;
        throw new NullPointerException();
_L20:
        ab.close();
        if (true) goto _L18; else goto _L21
_L21:
        ab;
        context.addSuppressed(ab);
          goto _L13
_L15:
        ab.close();
          goto _L13
        cancellationsignal;
        context = null;
          goto _L22
    }
}
