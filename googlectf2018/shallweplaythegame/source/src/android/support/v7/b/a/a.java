// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package android.support.v7.b.a:
//            c

final class a
{

    private static int a(int i, float f)
    {
        return android.support.v4.c.a.b(i, Math.round((float)Color.alpha(i) * f));
    }

    public static ColorStateList a(Resources resources, XmlPullParser xmlpullparser, android.content.res.Resources.Theme theme)
    {
        AttributeSet attributeset = Xml.asAttributeSet(xmlpullparser);
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
            return a(resources, xmlpullparser, attributeset, theme);
        }
    }

    private static ColorStateList a(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        String s = xmlpullparser.getName();
        if (!s.equals("selector"))
        {
            throw new XmlPullParserException((new StringBuilder()).append(xmlpullparser.getPositionDescription()).append(": invalid color state list tag ").append(s).toString());
        } else
        {
            return b(resources, xmlpullparser, attributeset, theme);
        }
    }

    private static TypedArray a(Resources resources, android.content.res.Resources.Theme theme, AttributeSet attributeset, int ai[])
    {
        if (theme == null)
        {
            return resources.obtainAttributes(attributeset, ai);
        } else
        {
            return theme.obtainStyledAttributes(attributeset, ai, 0, 0);
        }
    }

    private static ColorStateList b(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        int i1 = xmlpullparser.getDepth() + 1;
        int ai[][] = new int[20][];
        int ai1[] = new int[ai.length];
        int j = 0;
        do
        {
            int i = xmlpullparser.next();
            if (i == 1)
            {
                break;
            }
            int k = xmlpullparser.getDepth();
            if (k < i1 && i == 3)
            {
                break;
            }
            if (i != 2 || k > i1 || !xmlpullparser.getName().equals("item"))
            {
                continue;
            }
            int ai2[] = a(resources, theme, attributeset, android.support.v7.a.j.ColorStateListItem);
            int j1 = ai2.getColor(android.support.v7.a.j.ColorStateListItem_android_color, -65281);
            float f = 1.0F;
            int k1;
            if (ai2.hasValue(android.support.v7.a.j.ColorStateListItem_android_alpha))
            {
                f = ai2.getFloat(android.support.v7.a.j.ColorStateListItem_android_alpha, 1.0F);
            } else
            if (ai2.hasValue(android.support.v7.a.j.ColorStateListItem_alpha))
            {
                f = ai2.getFloat(android.support.v7.a.j.ColorStateListItem_alpha, 1.0F);
            }
            ai2.recycle();
            i = 0;
            k1 = attributeset.getAttributeCount();
            ai2 = new int[k1];
            k = 0;
            while (k < k1) 
            {
                int l = attributeset.getAttributeNameResource(k);
                if (l != 0x10101a5 && l != 0x101031f && l != android.support.v7.a.a.alpha)
                {
                    if (!attributeset.getAttributeBooleanValue(k, false))
                    {
                        l = -l;
                    }
                    ai2[i] = l;
                    i++;
                }
                k++;
            }
            ai2 = StateSet.trimStateSet(ai2, i);
            i = a(j1, f);
            if (j != 0)
            {
                if (ai2.length != 0);
            }
            ai1 = c.a(ai1, j, i);
            ai = (int[][])c.a(ai, j, ai2);
            j++;
        } while (true);
        resources = new int[j];
        xmlpullparser = new int[j][];
        System.arraycopy(ai1, 0, resources, 0, j);
        System.arraycopy(ai, 0, xmlpullparser, 0, j);
        return new ColorStateList(xmlpullparser, resources);
    }
}
