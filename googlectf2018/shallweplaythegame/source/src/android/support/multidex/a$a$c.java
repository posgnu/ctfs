// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.multidex;

import dalvik.system.DexFile;
import java.io.File;
import java.lang.reflect.Constructor;

// Referenced classes of package android.support.multidex:
//            a

private static class etAccessible
    implements etAccessible
{

    private final Constructor a;

    public Object a(File file, DexFile dexfile)
    {
        return a.newInstance(new Object[] {
            file, file, dexfile
        });
    }

    (Class class1)
    {
        a = class1.getConstructor(new Class[] {
            java/io/File, java/io/File, dalvik/system/DexFile
        });
        a.setAccessible(true);
    }
}
