// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.g.a;
import android.support.v4.h.p;
import android.support.v7.view.d;
import android.support.v7.widget.aa;
import android.support.v7.widget.at;
import android.support.v7.widget.f;
import android.support.v7.widget.h;
import android.support.v7.widget.i;
import android.support.v7.widget.j;
import android.support.v7.widget.n;
import android.support.v7.widget.q;
import android.support.v7.widget.t;
import android.support.v7.widget.u;
import android.support.v7.widget.v;
import android.support.v7.widget.x;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

class m
{
    private static class a
        implements android.view.View.OnClickListener
    {

        private final View a;
        private final String b;
        private Method c;
        private Context d;

        private void a(Context context, String s)
        {
_L2:
            if (context == null)
            {
                break; /* Loop/switch isn't completed */
            }
            if (context.isRestricted())
            {
                break MISSING_BLOCK_LABEL_48;
            }
            s = context.getClass().getMethod(b, new Class[] {
                android/view/View
            });
            if (s != null)
            {
                try
                {
                    c = s;
                    d = context;
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (String s) { }
            }
            if (context instanceof ContextWrapper)
            {
                context = ((ContextWrapper)context).getBaseContext();
            } else
            {
                context = null;
            }
            if (true) goto _L2; else goto _L1
_L1:
            int k = a.getId();
            if (k == -1)
            {
                context = "";
            } else
            {
                context = (new StringBuilder()).append(" with id '").append(a.getContext().getResources().getResourceEntryName(k)).append("'").toString();
            }
            throw new IllegalStateException((new StringBuilder()).append("Could not find method ").append(b).append("(View) in a parent or ancestor Context for android:onClick ").append("attribute defined on view ").append(a.getClass()).append(context).toString());
        }

        public void onClick(View view)
        {
            if (c == null)
            {
                a(a.getContext(), b);
            }
            try
            {
                c.invoke(d, new Object[] {
                    view
                });
                return;
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", view);
            }
            // Misplaced declaration of an exception variable
            catch (View view)
            {
                throw new IllegalStateException("Could not execute method for android:onClick", view);
            }
        }

        public a(View view, String s)
        {
            a = view;
            b = s;
        }
    }


    private static final Class a[] = {
        android/content/Context, android/util/AttributeSet
    };
    private static final int b[] = {
        0x101026f
    };
    private static final String c[] = {
        "android.widget.", "android.view.", "android.webkit."
    };
    private static final Map d = new android.support.v4.g.a();
    private final Object e[] = new Object[2];

    m()
    {
    }

    private static Context a(Context context, AttributeSet attributeset, boolean flag, boolean flag1)
    {
label0:
        {
            attributeset = context.obtainStyledAttributes(attributeset, android.support.v7.a.a.j.View, 0, 0);
            int k;
            int l;
            if (flag)
            {
                k = attributeset.getResourceId(android.support.v7.a.a.j.View_android_theme, 0);
            } else
            {
                k = 0;
            }
            l = k;
            if (flag1)
            {
                l = k;
                if (k == 0)
                {
                    k = attributeset.getResourceId(android.support.v7.a.a.j.View_theme, 0);
                    l = k;
                    if (k != 0)
                    {
                        Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
                        l = k;
                    }
                }
            }
            attributeset.recycle();
            attributeset = context;
            if (l == 0)
            {
                break label0;
            }
            if (context instanceof d)
            {
                attributeset = context;
                if (((d)context).a() == l)
                {
                    break label0;
                }
            }
            attributeset = new d(context, l);
        }
        return attributeset;
    }

    private View a(Context context, String s, AttributeSet attributeset)
    {
        String s1;
        s1 = s;
        if (s.equals("view"))
        {
            s1 = attributeset.getAttributeValue(null, "class");
        }
        e[0] = context;
        e[1] = attributeset;
        if (-1 == s1.indexOf('.'))
        {
            int k = 0;
            do
            {
                try
                {
                    if (k >= c.length)
                    {
                        break;
                    }
                    s = a(context, s1, c[k]);
                }
                // Misplaced declaration of an exception variable
                catch (Context context)
                {
                    e[0] = null;
                    e[1] = null;
                    return null;
                }
                finally
                {
                    e[0] = null;
                }
                if (s != null)
                {
                    e[0] = null;
                    e[1] = null;
                    return s;
                }
                k++;
            } while (true);
            e[0] = null;
            e[1] = null;
            return null;
        }
        context = a(context, s1, ((String) (null)));
        e[0] = null;
        e[1] = null;
        return context;
        e[1] = null;
        throw context;
    }

    private View a(Context context, String s, String s1)
    {
        Object obj;
        Constructor constructor;
        constructor = (Constructor)d.get(s);
        obj = constructor;
        if (constructor != null) goto _L2; else goto _L1
_L1:
        try
        {
            obj = context.getClassLoader();
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return null;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        context = (new StringBuilder()).append(s1).append(s).toString();
_L3:
        obj = ((ClassLoader) (obj)).loadClass(context).asSubclass(android/view/View).getConstructor(a);
        d.put(s, obj);
_L2:
        ((Constructor) (obj)).setAccessible(true);
        context = (View)((Constructor) (obj)).newInstance(e);
        return context;
        context = s;
          goto _L3
    }

    private void a(View view, AttributeSet attributeset)
    {
        Object obj = view.getContext();
        if (!(obj instanceof ContextWrapper) || android.os.Build.VERSION.SDK_INT >= 15 && !p.n(view))
        {
            return;
        }
        attributeset = ((Context) (obj)).obtainStyledAttributes(attributeset, b);
        obj = attributeset.getString(0);
        if (obj != null)
        {
            view.setOnClickListener(new a(view, ((String) (obj))));
        }
        attributeset.recycle();
    }

    public final View a(View view, String s, Context context, AttributeSet attributeset, boolean flag, boolean flag1, boolean flag2, 
            boolean flag3)
    {
label0:
        {
            Object obj;
            byte byte0;
            if (flag && view != null)
            {
                obj = view.getContext();
            } else
            {
                obj = context;
            }
            if (!flag1)
            {
                view = ((View) (obj));
                if (!flag2)
                {
                    break label0;
                }
            }
            view = a(((Context) (obj)), attributeset, flag1, flag2);
        }
        obj = view;
        if (flag3)
        {
            obj = at.a(view);
        }
        view = null;
        byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 13: default 176
    //                   -1946472170: 447
    //                   -1455429095: 399
    //                   -1346021293: 431
    //                   -938935918: 277
    //                   -937446323: 352
    //                   -658531749: 463
    //                   -339785223: 337
    //                   776382189: 383
    //                   1125864064: 292
    //                   1413872058: 415
    //                   1601505219: 367
    //                   1666676343: 322
    //                   2001146706: 307;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14
_L1:
        byte0;
        JVM INSTR tableswitch 0 12: default 244
    //                   0 479
    //                   1 494
    //                   2 509
    //                   3 524
    //                   4 539
    //                   5 554
    //                   6 569
    //                   7 584
    //                   8 599
    //                   9 614
    //                   10 629
    //                   11 644
    //                   12 659;
           goto _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28
_L15:
        if (view == null && context != obj)
        {
            view = a(((Context) (obj)), s, attributeset);
        }
        if (view != null)
        {
            a(view, attributeset);
        }
        return view;
_L5:
        if (s.equals("TextView"))
        {
            byte0 = 0;
        }
          goto _L1
_L10:
        if (s.equals("ImageView"))
        {
            byte0 = 1;
        }
          goto _L1
_L14:
        if (s.equals("Button"))
        {
            byte0 = 2;
        }
          goto _L1
_L13:
        if (s.equals("EditText"))
        {
            byte0 = 3;
        }
          goto _L1
_L8:
        if (s.equals("Spinner"))
        {
            byte0 = 4;
        }
          goto _L1
_L6:
        if (s.equals("ImageButton"))
        {
            byte0 = 5;
        }
          goto _L1
_L12:
        if (s.equals("CheckBox"))
        {
            byte0 = 6;
        }
          goto _L1
_L9:
        if (s.equals("RadioButton"))
        {
            byte0 = 7;
        }
          goto _L1
_L3:
        if (s.equals("CheckedTextView"))
        {
            byte0 = 8;
        }
          goto _L1
_L11:
        if (s.equals("AutoCompleteTextView"))
        {
            byte0 = 9;
        }
          goto _L1
_L4:
        if (s.equals("MultiAutoCompleteTextView"))
        {
            byte0 = 10;
        }
          goto _L1
_L2:
        if (s.equals("RatingBar"))
        {
            byte0 = 11;
        }
          goto _L1
_L7:
        if (s.equals("SeekBar"))
        {
            byte0 = 12;
        }
          goto _L1
_L16:
        view = new aa(((Context) (obj)), attributeset);
          goto _L15
_L17:
        view = new android.support.v7.widget.p(((Context) (obj)), attributeset);
          goto _L15
_L18:
        view = new h(((Context) (obj)), attributeset);
          goto _L15
_L19:
        view = new android.support.v7.widget.m(((Context) (obj)), attributeset);
          goto _L15
_L20:
        view = new x(((Context) (obj)), attributeset);
          goto _L15
_L21:
        view = new n(((Context) (obj)), attributeset);
          goto _L15
_L22:
        view = new i(((Context) (obj)), attributeset);
          goto _L15
_L23:
        view = new t(((Context) (obj)), attributeset);
          goto _L15
_L24:
        view = new j(((Context) (obj)), attributeset);
          goto _L15
_L25:
        view = new f(((Context) (obj)), attributeset);
          goto _L15
_L26:
        view = new q(((Context) (obj)), attributeset);
          goto _L15
_L27:
        view = new u(((Context) (obj)), attributeset);
          goto _L15
_L28:
        view = new v(((Context) (obj)), attributeset);
          goto _L15
    }

}
