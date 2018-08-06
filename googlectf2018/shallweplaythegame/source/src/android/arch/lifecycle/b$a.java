// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.lifecycle;


// Referenced classes of package android.arch.lifecycle:
//            b

public static final class  extends Enum
{

    private static final ON_ANY $VALUES[];
    public static final ON_ANY ON_ANY;
    public static final ON_ANY ON_CREATE;
    public static final ON_ANY ON_DESTROY;
    public static final ON_ANY ON_PAUSE;
    public static final ON_ANY ON_RESUME;
    public static final ON_ANY ON_START;
    public static final ON_ANY ON_STOP;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(android/arch/lifecycle/b$a, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        ON_CREATE = new <init>("ON_CREATE", 0);
        ON_START = new <init>("ON_START", 1);
        ON_RESUME = new <init>("ON_RESUME", 2);
        ON_PAUSE = new <init>("ON_PAUSE", 3);
        ON_STOP = new <init>("ON_STOP", 4);
        ON_DESTROY = new <init>("ON_DESTROY", 5);
        ON_ANY = new <init>("ON_ANY", 6);
        $VALUES = (new .VALUES[] {
            ON_CREATE, ON_START, ON_RESUME, ON_PAUSE, ON_STOP, ON_DESTROY, ON_ANY
        });
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
