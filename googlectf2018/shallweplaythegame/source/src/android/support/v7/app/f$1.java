// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;


// Referenced classes of package android.support.v7.app:
//            f

static final class a
    implements ad.UncaughtExceptionHandler
{

    final ad.UncaughtExceptionHandler a;

    private boolean a(Throwable throwable)
    {
        boolean flag;
label0:
        {
            boolean flag1 = false;
            flag = flag1;
            if (!(throwable instanceof android.content.res.urces.NotFoundException))
            {
                break label0;
            }
            throwable = throwable.getMessage();
            flag = flag1;
            if (throwable == null)
            {
                break label0;
            }
            if (!throwable.contains("drawable"))
            {
                flag = flag1;
                if (!throwable.contains("Drawable"))
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        if (a(throwable))
        {
            android.content.res.urces.NotFoundException notfoundexception = new android.content.res.urces.NotFoundException((new StringBuilder()).append(throwable.getMessage()).append(". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.").toString());
            notfoundexception.initCause(throwable.getCause());
            notfoundexception.setStackTrace(throwable.getStackTrace());
            a.uncaughtException(thread, notfoundexception);
            return;
        } else
        {
            a.uncaughtException(thread, throwable);
            return;
        }
    }

    (ad.UncaughtExceptionHandler uncaughtexceptionhandler)
    {
        a = uncaughtexceptionhandler;
        super();
    }
}
