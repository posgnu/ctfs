// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.arch.lifecycle;


public abstract class android.arch.lifecycle.b
{
    public static final class a extends Enum
    {

        private static final a $VALUES[];
        public static final a ON_ANY;
        public static final a ON_CREATE;
        public static final a ON_DESTROY;
        public static final a ON_PAUSE;
        public static final a ON_RESUME;
        public static final a ON_START;
        public static final a ON_STOP;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(android/arch/lifecycle/b$a, s);
        }

        public static a[] values()
        {
            return (a[])$VALUES.clone();
        }

        static 
        {
            ON_CREATE = new a("ON_CREATE", 0);
            ON_START = new a("ON_START", 1);
            ON_RESUME = new a("ON_RESUME", 2);
            ON_PAUSE = new a("ON_PAUSE", 3);
            ON_STOP = new a("ON_STOP", 4);
            ON_DESTROY = new a("ON_DESTROY", 5);
            ON_ANY = new a("ON_ANY", 6);
            $VALUES = (new a[] {
                ON_CREATE, ON_START, ON_RESUME, ON_PAUSE, ON_STOP, ON_DESTROY, ON_ANY
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        private static final b f[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(android/arch/lifecycle/b$b, s);
        }

        public static b[] values()
        {
            return (b[])f.clone();
        }

        static 
        {
            a = new b("DESTROYED", 0);
            b = new b("INITIALIZED", 1);
            c = new b("CREATED", 2);
            d = new b("STARTED", 3);
            e = new b("RESUMED", 4);
            f = (new b[] {
                a, b, c, d, e
            });
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }


    public android.arch.lifecycle.b()
    {
    }
}
