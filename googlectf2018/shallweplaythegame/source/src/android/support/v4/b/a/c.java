// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.b.a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

public class c
{

    public static float a(TypedArray typedarray, XmlPullParser xmlpullparser, String s, int i, float f)
    {
        if (!a(xmlpullparser, s))
        {
            return f;
        } else
        {
            return typedarray.getFloat(i, f);
        }
    }

    public static int a(TypedArray typedarray, XmlPullParser xmlpullparser, String s, int i, int j)
    {
        if (!a(xmlpullparser, s))
        {
            return j;
        } else
        {
            return typedarray.getInt(i, j);
        }
    }

    public static TypedArray a(Resources resources, android.content.res.Resources.Theme theme, AttributeSet attributeset, int ai[])
    {
        if (theme == null)
        {
            return resources.obtainAttributes(attributeset, ai);
        } else
        {
            return theme.obtainStyledAttributes(attributeset, ai, 0, 0);
        }
    }

    public static String a(TypedArray typedarray, XmlPullParser xmlpullparser, String s, int i)
    {
        if (!a(xmlpullparser, s))
        {
            return null;
        } else
        {
            return typedarray.getString(i);
        }
    }

    public static boolean a(TypedArray typedarray, XmlPullParser xmlpullparser, String s, int i, boolean flag)
    {
        if (!a(xmlpullparser, s))
        {
            return flag;
        } else
        {
            return typedarray.getBoolean(i, flag);
        }
    }

    public static boolean a(XmlPullParser xmlpullparser, String s)
    {
        return xmlpullparser.getAttributeValue("http://schemas.android.com/apk/res/android", s) != null;
    }

    public static int b(TypedArray typedarray, XmlPullParser xmlpullparser, String s, int i, int j)
    {
        if (!a(xmlpullparser, s))
        {
            return j;
        } else
        {
            return typedarray.getColor(i, j);
        }
    }

    public static TypedValue b(TypedArray typedarray, XmlPullParser xmlpullparser, String s, int i)
    {
        if (!a(xmlpullparser, s))
        {
            return null;
        } else
        {
            return typedarray.peekValue(i);
        }
    }

    public static int c(TypedArray typedarray, XmlPullParser xmlpullparser, String s, int i, int j)
    {
        if (!a(xmlpullparser, s))
        {
            return j;
        } else
        {
            return typedarray.getResourceId(i, j);
        }
    }
}
