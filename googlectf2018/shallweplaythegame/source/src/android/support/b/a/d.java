// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.support.v4.h.b.a;
import android.support.v4.h.b.b;
import android.support.v4.h.b.c;
import android.util.Xml;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package android.support.b.a:
//            g

public class d
{

    public static Interpolator a(Context context, int i)
    {
        if (android.os.Build.VERSION.SDK_INT < 21) goto _L2; else goto _L1
_L1:
        context = AnimationUtils.loadInterpolator(context, i);
_L4:
        return context;
_L2:
        Object obj;
        XmlResourceParser xmlresourceparser;
        Object obj1;
        obj = null;
        obj1 = null;
        xmlresourceparser = null;
        if (i != 0x10c000f)
        {
            break; /* Loop/switch isn't completed */
        }
        context = new a();
        if (false)
        {
            throw new NullPointerException();
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (i != 0x10c000d)
        {
            break; /* Loop/switch isn't completed */
        }
        context = new b();
        if (false)
        {
            throw new NullPointerException();
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (i != 0x10c000e)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        context = new c();
        if (true) goto _L4; else goto _L6
_L6:
        throw new NullPointerException();
        XmlResourceParser xmlresourceparser1 = context.getResources().getAnimation(i);
        xmlresourceparser = xmlresourceparser1;
        obj = xmlresourceparser1;
        obj1 = xmlresourceparser1;
        context = a(context, context.getResources(), context.getTheme(), ((XmlPullParser) (xmlresourceparser1)));
        obj = context;
        context = ((Context) (obj));
        if (xmlresourceparser1 != null)
        {
            xmlresourceparser1.close();
            return ((Interpolator) (obj));
        }
          goto _L4
        context;
        obj = xmlresourceparser;
        obj1 = new android.content.res.Resources.NotFoundException((new StringBuilder()).append("Can't load animation resource ID #0x").append(Integer.toHexString(i)).toString());
        obj = xmlresourceparser;
        ((android.content.res.Resources.NotFoundException) (obj1)).initCause(context);
        obj = xmlresourceparser;
        throw obj1;
        context;
        if (obj != null)
        {
            ((XmlResourceParser) (obj)).close();
        }
        throw context;
        IOException ioexception;
        ioexception;
        obj = obj1;
        context = new android.content.res.Resources.NotFoundException((new StringBuilder()).append("Can't load animation resource ID #0x").append(Integer.toHexString(i)).toString());
        obj = obj1;
        context.initCause(ioexception);
        obj = obj1;
        throw context;
    }

    private static Interpolator a(Context context, Resources resources, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser)
    {
        resources = null;
        int i = xmlpullparser.getDepth();
        do
        {
            int j = xmlpullparser.next();
            if (j == 3 && xmlpullparser.getDepth() <= i || j == 1)
            {
                break;
            }
            if (j == 2)
            {
                resources = Xml.asAttributeSet(xmlpullparser);
                theme = xmlpullparser.getName();
                if (theme.equals("linearInterpolator"))
                {
                    resources = new LinearInterpolator();
                } else
                if (theme.equals("accelerateInterpolator"))
                {
                    resources = new AccelerateInterpolator(context, resources);
                } else
                if (theme.equals("decelerateInterpolator"))
                {
                    resources = new DecelerateInterpolator(context, resources);
                } else
                if (theme.equals("accelerateDecelerateInterpolator"))
                {
                    resources = new AccelerateDecelerateInterpolator();
                } else
                if (theme.equals("cycleInterpolator"))
                {
                    resources = new CycleInterpolator(context, resources);
                } else
                if (theme.equals("anticipateInterpolator"))
                {
                    resources = new AnticipateInterpolator(context, resources);
                } else
                if (theme.equals("overshootInterpolator"))
                {
                    resources = new OvershootInterpolator(context, resources);
                } else
                if (theme.equals("anticipateOvershootInterpolator"))
                {
                    resources = new AnticipateOvershootInterpolator(context, resources);
                } else
                if (theme.equals("bounceInterpolator"))
                {
                    resources = new BounceInterpolator();
                } else
                if (theme.equals("pathInterpolator"))
                {
                    resources = new g(context, resources, xmlpullparser);
                } else
                {
                    throw new RuntimeException((new StringBuilder()).append("Unknown interpolator name: ").append(xmlpullparser.getName()).toString());
                }
            }
        } while (true);
        return resources;
    }
}
