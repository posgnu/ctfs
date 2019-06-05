// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.v4.b.a.c;
import android.support.v4.c.b;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package android.support.b.a:
//            a, d, f

public class e
{
    private static class a
        implements TypeEvaluator
    {

        private android.support.v4.c.b.b a[];

        public android.support.v4.c.b.b[] a(float f1, android.support.v4.c.b.b ab[], android.support.v4.c.b.b ab1[])
        {
            if (!b.a(ab, ab1))
            {
                throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
            }
            if (a == null || !b.a(a, ab))
            {
                a = b.a(ab);
            }
            for (int i = 0; i < ab.length; i++)
            {
                a[i].a(ab[i], ab1[i], f1);
            }

            return a;
        }

        public Object evaluate(float f1, Object obj, Object obj1)
        {
            return a(f1, (android.support.v4.c.b.b[])obj, (android.support.v4.c.b.b[])obj1);
        }

        private a()
        {
        }

    }


    private static int a(Resources resources, android.content.res.Resources.Theme theme, AttributeSet attributeset, XmlPullParser xmlpullparser)
    {
        boolean flag1 = false;
        resources = c.a(resources, theme, attributeset, android.support.b.a.a.j);
        theme = c.b(resources, xmlpullparser, "value", 0);
        boolean flag;
        byte byte0;
        if (theme != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        byte0 = flag1;
        if (flag)
        {
            byte0 = flag1;
            if (a(((TypedValue) (theme)).type))
            {
                byte0 = 3;
            }
        }
        resources.recycle();
        return byte0;
    }

    private static int a(TypedArray typedarray, int i, int j)
    {
label0:
        {
            boolean flag = false;
            TypedValue typedvalue = typedarray.peekValue(i);
            int k;
            int l;
            if (typedvalue != null)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            if (i != 0)
            {
                k = typedvalue.type;
            } else
            {
                k = 0;
            }
            typedarray = typedarray.peekValue(j);
            if (typedarray != null)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            if (j != 0)
            {
                l = ((TypedValue) (typedarray)).type;
            } else
            {
                l = 0;
            }
            if (i == 0 || !a(k))
            {
                i = ((flag) ? 1 : 0);
                if (j == 0)
                {
                    break label0;
                }
                i = ((flag) ? 1 : 0);
                if (!a(l))
                {
                    break label0;
                }
            }
            i = 3;
        }
        return i;
    }

    public static Animator a(Context context, int i)
    {
        if (android.os.Build.VERSION.SDK_INT >= 24)
        {
            return AnimatorInflater.loadAnimator(context, i);
        } else
        {
            return a(context, context.getResources(), context.getTheme(), i);
        }
    }

    public static Animator a(Context context, Resources resources, android.content.res.Resources.Theme theme, int i)
    {
        return a(context, resources, theme, i, 1.0F);
    }

    public static Animator a(Context context, Resources resources, android.content.res.Resources.Theme theme, int i, float f1)
    {
        XmlResourceParser xmlresourceparser;
        XmlResourceParser xmlresourceparser1;
        XmlResourceParser xmlresourceparser2;
        xmlresourceparser = null;
        xmlresourceparser2 = null;
        xmlresourceparser1 = null;
        XmlResourceParser xmlresourceparser3 = resources.getAnimation(i);
        xmlresourceparser1 = xmlresourceparser3;
        xmlresourceparser = xmlresourceparser3;
        xmlresourceparser2 = xmlresourceparser3;
        context = a(context, resources, theme, ((XmlPullParser) (xmlresourceparser3)), f1);
        if (xmlresourceparser3 != null)
        {
            xmlresourceparser3.close();
        }
        return context;
        context;
        xmlresourceparser = xmlresourceparser1;
        resources = new android.content.res.Resources.NotFoundException((new StringBuilder()).append("Can't load animation resource ID #0x").append(Integer.toHexString(i)).toString());
        xmlresourceparser = xmlresourceparser1;
        resources.initCause(context);
        xmlresourceparser = xmlresourceparser1;
        throw resources;
        context;
        if (xmlresourceparser != null)
        {
            xmlresourceparser.close();
        }
        throw context;
        context;
        xmlresourceparser = xmlresourceparser2;
        resources = new android.content.res.Resources.NotFoundException((new StringBuilder()).append("Can't load animation resource ID #0x").append(Integer.toHexString(i)).toString());
        xmlresourceparser = xmlresourceparser2;
        resources.initCause(context);
        xmlresourceparser = xmlresourceparser2;
        throw resources;
    }

    private static Animator a(Context context, Resources resources, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser, float f1)
    {
        return a(context, resources, theme, xmlpullparser, Xml.asAttributeSet(xmlpullparser), null, 0, f1);
    }

    private static Animator a(Context context, Resources resources, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser, AttributeSet attributeset, AnimatorSet animatorset, int i, float f1)
    {
        Object obj1 = null;
        ArrayList arraylist = null;
        int i1 = xmlpullparser.getDepth();
        do
        {
label0:
            {
                int j = xmlpullparser.next();
                if ((j != 3 || xmlpullparser.getDepth() > i1) && j != 1)
                {
                    if (j == 2)
                    {
                        Object obj = xmlpullparser.getName();
                        int k;
                        if (((String) (obj)).equals("objectAnimator"))
                        {
                            obj = a(context, resources, theme, attributeset, f1, xmlpullparser);
                            k = 0;
                        } else
                        if (((String) (obj)).equals("animator"))
                        {
                            obj = a(context, resources, theme, attributeset, null, f1, xmlpullparser);
                            k = 0;
                        } else
                        if (((String) (obj)).equals("set"))
                        {
                            obj = new AnimatorSet();
                            obj1 = c.a(resources, theme, attributeset, android.support.b.a.a.h);
                            k = c.a(((TypedArray) (obj1)), xmlpullparser, "ordering", 0, 0);
                            a(context, resources, theme, xmlpullparser, attributeset, (AnimatorSet)obj, k, f1);
                            ((TypedArray) (obj1)).recycle();
                            k = 0;
                        } else
                        if (((String) (obj)).equals("propertyValuesHolder"))
                        {
                            obj = a(context, resources, theme, xmlpullparser, Xml.asAttributeSet(xmlpullparser));
                            if (obj != null && obj1 != null && (obj1 instanceof ValueAnimator))
                            {
                                ((ValueAnimator)obj1).setValues(((PropertyValuesHolder []) (obj)));
                            }
                            k = 1;
                            obj = obj1;
                        } else
                        {
                            throw new RuntimeException((new StringBuilder()).append("Unknown animator name: ").append(xmlpullparser.getName()).toString());
                        }
                        obj1 = obj;
                        if (animatorset != null)
                        {
                            obj1 = obj;
                            if (k == 0)
                            {
                                if (arraylist == null)
                                {
                                    arraylist = new ArrayList();
                                }
                                arraylist.add(obj);
                                obj1 = obj;
                            }
                        }
                    }
                    continue;
                }
                if (animatorset != null && arraylist != null)
                {
                    context = new Animator[arraylist.size()];
                    resources = arraylist.iterator();
                    for (int l = 0; resources.hasNext(); l++)
                    {
                        context[l] = (Animator)resources.next();
                    }

                    if (i != 0)
                    {
                        break label0;
                    }
                    animatorset.playTogether(context);
                }
                return ((Animator) (obj1));
            }
            animatorset.playSequentially(context);
            return ((Animator) (obj1));
        } while (true);
    }

    private static Keyframe a(Keyframe keyframe, float f1)
    {
        if (keyframe.getType() == Float.TYPE)
        {
            return Keyframe.ofFloat(f1);
        }
        if (keyframe.getType() == Integer.TYPE)
        {
            return Keyframe.ofInt(f1);
        } else
        {
            return Keyframe.ofObject(f1);
        }
    }

    private static Keyframe a(Context context, Resources resources, android.content.res.Resources.Theme theme, AttributeSet attributeset, int i, XmlPullParser xmlpullparser)
    {
        float f1;
        int j;
        attributeset = c.a(resources, theme, attributeset, android.support.b.a.a.j);
        theme = null;
        f1 = c.a(attributeset, xmlpullparser, "fraction", 3, -1F);
        resources = c.b(attributeset, xmlpullparser, "value", 0);
        boolean flag;
        if (resources != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = i;
        if (i == 4)
        {
            if (flag && a(((TypedValue) (resources)).type))
            {
                j = 3;
            } else
            {
                j = 0;
            }
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        resources = theme;
        j;
        JVM INSTR tableswitch 0 3: default 108
    //                   0 155
    //                   1 174
    //                   2 110
    //                   3 174;
           goto _L3 _L4 _L5 _L6 _L5
_L6:
        break; /* Loop/switch isn't completed */
_L3:
        resources = theme;
_L8:
        i = c.c(attributeset, xmlpullparser, "interpolator", 1, 0);
        if (i > 0)
        {
            resources.setInterpolator(d.a(context, i));
        }
        attributeset.recycle();
        return resources;
_L4:
        resources = Keyframe.ofFloat(f1, c.a(attributeset, xmlpullparser, "value", 0, 0.0F));
        continue; /* Loop/switch isn't completed */
_L5:
        resources = Keyframe.ofInt(f1, c.a(attributeset, xmlpullparser, "value", 0, 0));
        continue; /* Loop/switch isn't completed */
_L2:
        if (j == 0)
        {
            resources = Keyframe.ofFloat(f1);
        } else
        {
            resources = Keyframe.ofInt(f1);
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static ObjectAnimator a(Context context, Resources resources, android.content.res.Resources.Theme theme, AttributeSet attributeset, float f1, XmlPullParser xmlpullparser)
    {
        ObjectAnimator objectanimator = new ObjectAnimator();
        a(context, resources, theme, attributeset, ((ValueAnimator) (objectanimator)), f1, xmlpullparser);
        return objectanimator;
    }

    private static PropertyValuesHolder a(Context context, Resources resources, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser, String s, int i)
    {
        ArrayList arraylist;
        int j;
        arraylist = null;
        j = i;
_L3:
        i = xmlpullparser.next();
        if (i == 3 || i == 1) goto _L2; else goto _L1
_L1:
        float f1;
        int k;
        int l;
        int i1;
        if (xmlpullparser.getName().equals("keyframe"))
        {
            i = j;
            if (j == 4)
            {
                i = a(resources, theme, Xml.asAttributeSet(xmlpullparser), xmlpullparser);
            }
            Keyframe keyframe = a(context, resources, theme, Xml.asAttributeSet(xmlpullparser), i, xmlpullparser);
            if (keyframe != null)
            {
                if (arraylist == null)
                {
                    arraylist = new ArrayList();
                }
                arraylist.add(keyframe);
            }
            xmlpullparser.next();
        } else
        {
            i = j;
        }
        j = i;
        if (true) goto _L3; else goto _L2
_L2:
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_434;
        }
        i = arraylist.size();
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_434;
        }
        context = (Keyframe)arraylist.get(0);
        resources = (Keyframe)arraylist.get(i - 1);
        f1 = resources.getFraction();
        if (f1 < 1.0F)
        {
            if (f1 < 0.0F)
            {
                resources.setFraction(1.0F);
            } else
            {
                arraylist.add(arraylist.size(), a(((Keyframe) (resources)), 1.0F));
                i++;
            }
        }
        f1 = context.getFraction();
        l = i;
        if (f1 != 0.0F)
        {
            if (f1 < 0.0F)
            {
                context.setFraction(0.0F);
                l = i;
            } else
            {
                arraylist.add(0, a(((Keyframe) (context)), 0.0F));
                l = i + 1;
            }
        }
        context = new Keyframe[l];
        arraylist.toArray(context);
        i = 0;
        if (i < l)
        {
            resources = context[i];
            if (resources.getFraction() < 0.0F)
            {
                if (i == 0)
                {
                    resources.setFraction(0.0F);
                } else
                {
label0:
                    {
                        if (i != l - 1)
                        {
                            break label0;
                        }
                        resources.setFraction(1.0F);
                    }
                }
            }
        } else
        {
            context = PropertyValuesHolder.ofKeyframe(s, context);
            if (j == 3)
            {
                context.setEvaluator(f.a());
            }
            return context;
        }
_L7:
        i++;
        break MISSING_BLOCK_LABEL_234;
        k = i + 1;
        i1 = i;
_L5:
label1:
        {
            if (k < l - 1 && context[k].getFraction() < 0.0F)
            {
                break label1;
            }
            a(((Keyframe []) (context)), context[i1 + 1].getFraction() - context[i - 1].getFraction(), i, i1);
        }
        break MISSING_BLOCK_LABEL_265;
        i1 = k;
        k++;
        if (true) goto _L5; else goto _L4
_L4:
        return null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static PropertyValuesHolder a(TypedArray typedarray, int i, int j, int k, String s)
    {
        android.support.v4.c.b.b ab[];
        android.support.v4.c.b.b ab1[];
        a a1;
        int l;
        boolean flag;
        boolean flag1;
        int i1;
        int j1;
        Object obj = typedarray.peekValue(j);
        if (obj != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            i1 = ((TypedValue) (obj)).type;
        } else
        {
            i1 = 0;
        }
        obj = typedarray.peekValue(k);
        if (obj != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            j1 = ((TypedValue) (obj)).type;
        } else
        {
            j1 = 0;
        }
        l = i;
        if (i == 4)
        {
            if (flag && a(i1) || flag1 && a(j1))
            {
                l = 3;
            } else
            {
                l = 0;
            }
        }
        if (l == 0)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (l != 2) goto _L2; else goto _L1
_L1:
        obj = typedarray.getString(j);
        typedarray = typedarray.getString(k);
        ab = b.b(((String) (obj)));
        ab1 = b.b(typedarray);
        if (ab == null && ab1 == null)
        {
            break MISSING_BLOCK_LABEL_692;
        }
        if (ab == null) goto _L4; else goto _L3
_L3:
        a1 = new a();
        if (ab1 == null) goto _L6; else goto _L5
_L5:
        if (!b.a(ab, ab1))
        {
            throw new InflateException((new StringBuilder()).append(" Can't morph from ").append(((String) (obj))).append(" to ").append(typedarray).toString());
        }
        s = PropertyValuesHolder.ofObject(s, a1, new Object[] {
            ab, ab1
        });
_L8:
        return s;
_L6:
        return PropertyValuesHolder.ofObject(s, a1, new Object[] {
            ab
        });
_L4:
        if (ab1 != null)
        {
            return PropertyValuesHolder.ofObject(s, new a(), new Object[] {
                ab1
            });
        }
        break MISSING_BLOCK_LABEL_692;
_L2:
        f f4 = null;
        if (l == 3)
        {
            f4 = f.a();
        }
        if (i != 0)
        {
            if (flag)
            {
                float f1;
                if (i1 == 5)
                {
                    f1 = typedarray.getDimension(j, 0.0F);
                } else
                {
                    f1 = typedarray.getFloat(j, 0.0F);
                }
                if (flag1)
                {
                    float f3;
                    if (j1 == 5)
                    {
                        f3 = typedarray.getDimension(k, 0.0F);
                    } else
                    {
                        f3 = typedarray.getFloat(k, 0.0F);
                    }
                    typedarray = PropertyValuesHolder.ofFloat(s, new float[] {
                        f1, f3
                    });
                } else
                {
                    typedarray = PropertyValuesHolder.ofFloat(s, new float[] {
                        f1
                    });
                }
            } else
            {
                float f2;
                if (j1 == 5)
                {
                    f2 = typedarray.getDimension(k, 0.0F);
                } else
                {
                    f2 = typedarray.getFloat(k, 0.0F);
                }
                typedarray = PropertyValuesHolder.ofFloat(s, new float[] {
                    f2
                });
            }
        } else
        if (flag)
        {
            if (i1 == 5)
            {
                i = (int)typedarray.getDimension(j, 0.0F);
            } else
            if (a(i1))
            {
                i = typedarray.getColor(j, 0);
            } else
            {
                i = typedarray.getInt(j, 0);
            }
            if (flag1)
            {
                if (j1 == 5)
                {
                    j = (int)typedarray.getDimension(k, 0.0F);
                } else
                if (a(j1))
                {
                    j = typedarray.getColor(k, 0);
                } else
                {
                    j = typedarray.getInt(k, 0);
                }
                typedarray = PropertyValuesHolder.ofInt(s, new int[] {
                    i, j
                });
            } else
            {
                typedarray = PropertyValuesHolder.ofInt(s, new int[] {
                    i
                });
            }
        } else
        if (flag1)
        {
            if (j1 == 5)
            {
                i = (int)typedarray.getDimension(k, 0.0F);
            } else
            if (a(j1))
            {
                i = typedarray.getColor(k, 0);
            } else
            {
                i = typedarray.getInt(k, 0);
            }
            typedarray = PropertyValuesHolder.ofInt(s, new int[] {
                i
            });
        } else
        {
            typedarray = null;
        }
        s = typedarray;
        if (typedarray == null) goto _L8; else goto _L7
_L7:
        s = typedarray;
        if (f4 == null) goto _L8; else goto _L9
_L9:
        typedarray.setEvaluator(f4);
        return typedarray;
        return null;
    }

    private static ValueAnimator a(Context context, Resources resources, android.content.res.Resources.Theme theme, AttributeSet attributeset, ValueAnimator valueanimator, float f1, XmlPullParser xmlpullparser)
    {
        TypedArray typedarray = c.a(resources, theme, attributeset, android.support.b.a.a.g);
        theme = c.a(resources, theme, attributeset, android.support.b.a.a.k);
        resources = valueanimator;
        if (valueanimator == null)
        {
            resources = new ValueAnimator();
        }
        a(((ValueAnimator) (resources)), typedarray, ((TypedArray) (theme)), f1, xmlpullparser);
        int i = c.c(typedarray, xmlpullparser, "interpolator", 0, 0);
        if (i > 0)
        {
            resources.setInterpolator(d.a(context, i));
        }
        typedarray.recycle();
        if (theme != null)
        {
            theme.recycle();
        }
        return resources;
    }

    private static void a(ValueAnimator valueanimator, TypedArray typedarray, int i, float f1, XmlPullParser xmlpullparser)
    {
        valueanimator = (ObjectAnimator)valueanimator;
        String s = c.a(typedarray, xmlpullparser, "pathData", 1);
        if (s != null)
        {
            String s1 = c.a(typedarray, xmlpullparser, "propertyXName", 2);
            xmlpullparser = c.a(typedarray, xmlpullparser, "propertyYName", 3);
            if (i != 2)
            {
                if (i != 4);
            }
            if (s1 == null && xmlpullparser == null)
            {
                throw new InflateException((new StringBuilder()).append(typedarray.getPositionDescription()).append(" propertyXName or propertyYName is needed for PathData").toString());
            } else
            {
                a(b.a(s), ((ObjectAnimator) (valueanimator)), 0.5F * f1, s1, ((String) (xmlpullparser)));
                return;
            }
        } else
        {
            valueanimator.setPropertyName(c.a(typedarray, xmlpullparser, "propertyName", 0));
            return;
        }
    }

    private static void a(ValueAnimator valueanimator, TypedArray typedarray, TypedArray typedarray1, float f1, XmlPullParser xmlpullparser)
    {
        long l = c.a(typedarray, xmlpullparser, "duration", 1, 300);
        long l1 = c.a(typedarray, xmlpullparser, "startOffset", 2, 0);
        int j = c.a(typedarray, xmlpullparser, "valueType", 7, 4);
        int k = j;
        if (c.a(xmlpullparser, "valueFrom"))
        {
            k = j;
            if (c.a(xmlpullparser, "valueTo"))
            {
                int i = j;
                if (j == 4)
                {
                    i = a(typedarray, 5, 6);
                }
                PropertyValuesHolder propertyvaluesholder = a(typedarray, i, 5, 6, "");
                k = i;
                if (propertyvaluesholder != null)
                {
                    valueanimator.setValues(new PropertyValuesHolder[] {
                        propertyvaluesholder
                    });
                    k = i;
                }
            }
        }
        valueanimator.setDuration(l);
        valueanimator.setStartDelay(l1);
        valueanimator.setRepeatCount(c.a(typedarray, xmlpullparser, "repeatCount", 3, 0));
        valueanimator.setRepeatMode(c.a(typedarray, xmlpullparser, "repeatMode", 4, 1));
        if (typedarray1 != null)
        {
            a(valueanimator, typedarray1, k, f1, xmlpullparser);
        }
    }

    private static void a(Path path, ObjectAnimator objectanimator, float f1, String s, String s1)
    {
        PathMeasure pathmeasure = new PathMeasure(path, false);
        float f2 = 0.0F;
        ArrayList arraylist = new ArrayList();
        arraylist.add(Float.valueOf(0.0F));
        float f3;
        do
        {
            f3 = f2 + pathmeasure.getLength();
            arraylist.add(Float.valueOf(f3));
            f2 = f3;
        } while (pathmeasure.nextContour());
        path = new PathMeasure(path, false);
        int k = Math.min(100, (int)(f3 / f1) + 1);
        float af1[] = new float[k];
        float af[] = new float[k];
        float af2[] = new float[2];
        int i = 0;
        f2 = f3 / (float)(k - 1);
        int j = 0;
        f1 = 0.0F;
        for (; j < k; j++)
        {
            path.getPosTan(f1, af2, null);
            path.getPosTan(f1, af2, null);
            af1[j] = af2[0];
            af[j] = af2[1];
            f1 += f2;
            if (i + 1 < arraylist.size() && f1 > ((Float)arraylist.get(i + 1)).floatValue())
            {
                f1 -= ((Float)arraylist.get(i + 1)).floatValue();
                i++;
                path.nextContour();
            }
        }

        path = null;
        arraylist = null;
        if (s != null)
        {
            path = PropertyValuesHolder.ofFloat(s, af1);
        }
        s = arraylist;
        if (s1 != null)
        {
            s = PropertyValuesHolder.ofFloat(s1, af);
        }
        if (path == null)
        {
            objectanimator.setValues(new PropertyValuesHolder[] {
                s
            });
            return;
        }
        if (s == null)
        {
            objectanimator.setValues(new PropertyValuesHolder[] {
                path
            });
            return;
        } else
        {
            objectanimator.setValues(new PropertyValuesHolder[] {
                path, s
            });
            return;
        }
    }

    private static void a(Keyframe akeyframe[], float f1, int i, int j)
    {
        f1 /= (j - i) + 2;
        for (; i <= j; i++)
        {
            akeyframe[i].setFraction(akeyframe[i - 1].getFraction() + f1);
        }

    }

    private static boolean a(int i)
    {
        return i >= 28 && i <= 31;
    }

    private static PropertyValuesHolder[] a(Context context, Resources resources, android.content.res.Resources.Theme theme, XmlPullParser xmlpullparser, AttributeSet attributeset)
    {
        ArrayList arraylist = null;
        do
        {
            int i = xmlpullparser.getEventType();
            if (i == 3 || i == 1)
            {
                break;
            }
            if (i != 2)
            {
                xmlpullparser.next();
            } else
            {
                if (xmlpullparser.getName().equals("propertyValuesHolder"))
                {
                    TypedArray typedarray = c.a(resources, theme, attributeset, android.support.b.a.a.i);
                    String s = c.a(typedarray, xmlpullparser, "propertyName", 3);
                    int j = c.a(typedarray, xmlpullparser, "valueType", 2, 4);
                    PropertyValuesHolder propertyvaluesholder = a(context, resources, theme, xmlpullparser, s, j);
                    if (propertyvaluesholder == null)
                    {
                        propertyvaluesholder = a(typedarray, j, 0, 1, s);
                    }
                    if (propertyvaluesholder != null)
                    {
                        if (arraylist == null)
                        {
                            arraylist = new ArrayList();
                        }
                        arraylist.add(propertyvaluesholder);
                    }
                    typedarray.recycle();
                }
                xmlpullparser.next();
            }
        } while (true);
        context = null;
        if (arraylist != null)
        {
            int l = arraylist.size();
            context = new PropertyValuesHolder[l];
            for (int k = 0; k < l; k++)
            {
                context[k] = (PropertyValuesHolder)arraylist.get(k);
            }

        }
        return context;
    }
}
