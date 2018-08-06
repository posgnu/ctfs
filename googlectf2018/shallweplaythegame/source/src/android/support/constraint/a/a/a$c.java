// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.constraint.a.a;


// Referenced classes of package android.support.constraint.a.a:
//            a

public static final class  extends Enum
{

    public static final i a;
    public static final i b;
    public static final i c;
    public static final i d;
    public static final i e;
    public static final i f;
    public static final i g;
    public static final i h;
    public static final i i;
    private static final i j[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(android/support/constraint/a/a/a$c, s);
    }

    public static [] values()
    {
        return ([])j.clone();
    }

    static 
    {
        a = new <init>("NONE", 0);
        b = new <init>("LEFT", 1);
        c = new <init>("TOP", 2);
        d = new <init>("RIGHT", 3);
        e = new <init>("BOTTOM", 4);
        f = new <init>("BASELINE", 5);
        g = new <init>("CENTER", 6);
        h = new <init>("CENTER_X", 7);
        i = new <init>("CENTER_Y", 8);
        j = (new j[] {
            a, b, c, d, e, f, g, h, i
        });
    }

    private (String s, int k)
    {
        super(s, k);
    }
}
