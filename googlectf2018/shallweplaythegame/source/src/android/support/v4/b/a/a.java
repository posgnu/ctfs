// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.b.a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class android.support.v4.b.a.a
{
    public static interface a
    {
    }

    public static final class b
        implements a
    {

        private final c a[];

        public c[] a()
        {
            return a;
        }

        public b(c ac[])
        {
            a = ac;
        }
    }

    public static final class c
    {

        private final String a;
        private int b;
        private boolean c;
        private int d;

        public String a()
        {
            return a;
        }

        public int b()
        {
            return b;
        }

        public boolean c()
        {
            return c;
        }

        public int d()
        {
            return d;
        }

        public c(String s, int i, boolean flag, int j)
        {
            a = s;
            b = i;
            c = flag;
            d = j;
        }
    }

    public static final class d
        implements a
    {

        private final android.support.v4.f.a a;
        private final int b;
        private final int c;

        public android.support.v4.f.a a()
        {
            return a;
        }

        public int b()
        {
            return c;
        }

        public int c()
        {
            return b;
        }

        public d(android.support.v4.f.a a1, int i, int j)
        {
            a = a1;
            c = i;
            b = j;
        }
    }


    public static a a(XmlPullParser xmlpullparser, Resources resources)
    {
        int i;
        do
        {
            i = xmlpullparser.next();
        } while (i != 2 && i != 1);
        if (i != 2)
        {
            throw new XmlPullParserException("No start tag found");
        } else
        {
            return b(xmlpullparser, resources);
        }
    }

    public static List a(Resources resources, int i)
    {
        ArrayList arraylist = null;
        Object obj = null;
        if (i != 0)
        {
            TypedArray typedarray = resources.obtainTypedArray(i);
            arraylist = obj;
            if (typedarray.length() > 0)
            {
                arraylist = new ArrayList();
                boolean flag;
                if (typedarray.getResourceId(0, 0) != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    for (i = 0; i < typedarray.length(); i++)
                    {
                        arraylist.add(a(resources.getStringArray(typedarray.getResourceId(i, 0))));
                    }

                } else
                {
                    arraylist.add(a(resources.getStringArray(i)));
                }
            }
            typedarray.recycle();
        }
        if (arraylist != null)
        {
            return arraylist;
        } else
        {
            return Collections.emptyList();
        }
    }

    private static List a(String as[])
    {
        ArrayList arraylist = new ArrayList();
        int j = as.length;
        for (int i = 0; i < j; i++)
        {
            arraylist.add(Base64.decode(as[i], 0));
        }

        return arraylist;
    }

    private static void a(XmlPullParser xmlpullparser)
    {
        int i = 1;
        do
        {
            if (i <= 0)
            {
                break;
            }
            switch (xmlpullparser.next())
            {
            case 2: // '\002'
                i++;
                break;

            case 3: // '\003'
                i--;
                break;
            }
        } while (true);
    }

    private static a b(XmlPullParser xmlpullparser, Resources resources)
    {
        xmlpullparser.require(2, null, "font-family");
        if (xmlpullparser.getName().equals("font-family"))
        {
            return c(xmlpullparser, resources);
        } else
        {
            a(xmlpullparser);
            return null;
        }
    }

    private static a c(XmlPullParser xmlpullparser, Resources resources)
    {
        Object obj = resources.obtainAttributes(Xml.asAttributeSet(xmlpullparser), android.support.a.a.FontFamily);
        String s = ((TypedArray) (obj)).getString(android.support.a.a.FontFamily_fontProviderAuthority);
        String s1 = ((TypedArray) (obj)).getString(android.support.a.a.FontFamily_fontProviderPackage);
        String s2 = ((TypedArray) (obj)).getString(android.support.a.a.FontFamily_fontProviderQuery);
        int i = ((TypedArray) (obj)).getResourceId(android.support.a.a.FontFamily_fontProviderCerts, 0);
        int j = ((TypedArray) (obj)).getInteger(android.support.a.a.FontFamily_fontProviderFetchStrategy, 1);
        int k = ((TypedArray) (obj)).getInteger(android.support.a.a.FontFamily_fontProviderFetchTimeout, 500);
        ((TypedArray) (obj)).recycle();
        if (s != null && s1 != null && s2 != null)
        {
            for (; xmlpullparser.next() != 3; a(xmlpullparser)) { }
            return new d(new android.support.v4.f.a(s, s1, s2, a(resources, i)), j, k);
        }
        obj = new ArrayList();
        do
        {
            if (xmlpullparser.next() == 3)
            {
                break;
            }
            if (xmlpullparser.getEventType() == 2)
            {
                if (xmlpullparser.getName().equals("font"))
                {
                    ((List) (obj)).add(d(xmlpullparser, resources));
                } else
                {
                    a(xmlpullparser);
                }
            }
        } while (true);
        if (((List) (obj)).isEmpty())
        {
            return null;
        } else
        {
            return new b((c[])((List) (obj)).toArray(new c[((List) (obj)).size()]));
        }
    }

    private static c d(XmlPullParser xmlpullparser, Resources resources)
    {
        boolean flag = true;
        resources = resources.obtainAttributes(Xml.asAttributeSet(xmlpullparser), android.support.a.a.FontFamilyFont);
        int i = resources.getInt(android.support.a.a.FontFamilyFont_fontWeight, 400);
        String s;
        int j;
        if (1 != resources.getInt(android.support.a.a.FontFamilyFont_fontStyle, 0))
        {
            flag = false;
        }
        j = resources.getResourceId(android.support.a.a.FontFamilyFont_font, 0);
        s = resources.getString(android.support.a.a.FontFamilyFont_font);
        resources.recycle();
        for (; xmlpullparser.next() != 3; a(xmlpullparser)) { }
        return new c(s, i, flag, j);
    }
}
