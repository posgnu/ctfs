// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.multidex:
//            a

private static final class 
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
