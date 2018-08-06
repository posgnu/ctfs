// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.graphics.Rect;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package android.support.v4.a:
//            x

class t
{

    public static Object a(Object obj)
    {
        Transition transition = null;
        if (obj != null)
        {
            transition = ((Transition)obj).clone();
        }
        return transition;
    }

    public static Object a(Object obj, Object obj1, Object obj2)
    {
        TransitionSet transitionset = new TransitionSet();
        if (obj != null)
        {
            transitionset.addTransition((Transition)obj);
        }
        if (obj1 != null)
        {
            transitionset.addTransition((Transition)obj1);
        }
        if (obj2 != null)
        {
            transitionset.addTransition((Transition)obj2);
        }
        return transitionset;
    }

    static String a(Map map, String s)
    {
        return b(map, s);
    }

    public static ArrayList a(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        int j = arraylist.size();
        for (int i = 0; i < j; i++)
        {
            View view = (View)arraylist.get(i);
            arraylist1.add(view.getTransitionName());
            view.setTransitionName(null);
        }

        return arraylist1;
    }

    public static void a(View view, Rect rect)
    {
        int ai[] = new int[2];
        view.getLocationOnScreen(ai);
        rect.set(ai[0], ai[1], ai[0] + view.getWidth(), ai[1] + view.getHeight());
    }

    public static void a(View view, ArrayList arraylist, ArrayList arraylist1, ArrayList arraylist2, Map map)
    {
        ArrayList arraylist3;
        int i;
        int k;
        k = arraylist1.size();
        arraylist3 = new ArrayList();
        i = 0;
_L2:
        String s;
        Object obj;
        if (i >= k)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        obj = (View)arraylist.get(i);
        s = ((View) (obj)).getTransitionName();
        arraylist3.add(s);
        if (s != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        int j;
        ((View) (obj)).setTransitionName(null);
        obj = (String)map.get(s);
        j = 0;
_L4:
        if (j < k)
        {
label0:
            {
                if (!((String) (obj)).equals(arraylist2.get(j)))
                {
                    break label0;
                }
                ((View)arraylist1.get(j)).setTransitionName(s);
            }
        }
          goto _L3
        j++;
          goto _L4
        x.a(view, new Runnable(k, arraylist1, arraylist2, arraylist, arraylist3) {

            final int a;
            final ArrayList b;
            final ArrayList c;
            final ArrayList d;
            final ArrayList e;

            public void run()
            {
                for (int l = 0; l < a; l++)
                {
                    ((View)b.get(l)).setTransitionName((String)c.get(l));
                    ((View)d.get(l)).setTransitionName((String)e.get(l));
                }

            }

            
            {
                a = i;
                b = arraylist;
                c = arraylist1;
                d = arraylist2;
                e = arraylist3;
                super();
            }
        });
        return;
          goto _L3
    }

    public static void a(View view, ArrayList arraylist, Map map)
    {
        x.a(view, new Runnable(arraylist, map) {

            final ArrayList a;
            final Map b;

            public void run()
            {
                int j = a.size();
                for (int i = 0; i < j; i++)
                {
                    View view1 = (View)a.get(i);
                    String s = view1.getTransitionName();
                    if (s != null)
                    {
                        view1.setTransitionName(t.a(b, s));
                    }
                }

            }

            
            {
                a = arraylist;
                b = map;
                super();
            }
        });
    }

    public static void a(ViewGroup viewgroup, Object obj)
    {
        TransitionManager.beginDelayedTransition(viewgroup, (Transition)obj);
    }

    public static void a(ViewGroup viewgroup, ArrayList arraylist, Map map)
    {
        x.a(viewgroup, new Runnable(arraylist, map) {

            final ArrayList a;
            final Map b;

            public void run()
            {
                int j = a.size();
                for (int i = 0; i < j; i++)
                {
                    View view = (View)a.get(i);
                    String s = view.getTransitionName();
                    view.setTransitionName((String)b.get(s));
                }

            }

            
            {
                a = arraylist;
                b = map;
                super();
            }
        });
    }

    public static void a(Object obj, Rect rect)
    {
        if (obj != null)
        {
            ((Transition)obj).setEpicenterCallback(new android.transition.Transition.EpicenterCallback(rect) {

                final Rect a;

                public Rect onGetEpicenter(Transition transition)
                {
                    if (a == null || a.isEmpty())
                    {
                        return null;
                    } else
                    {
                        return a;
                    }
                }

            
            {
                a = rect;
                super();
            }
            });
        }
    }

    public static void a(Object obj, View view)
    {
        if (view != null)
        {
            obj = (Transition)obj;
            Rect rect = new Rect();
            a(view, rect);
            ((Transition) (obj)).setEpicenterCallback(new android.transition.Transition.EpicenterCallback(rect) {

                final Rect a;

                public Rect onGetEpicenter(Transition transition)
                {
                    return a;
                }

            
            {
                a = rect;
                super();
            }
            });
        }
    }

    public static void a(Object obj, View view, ArrayList arraylist)
    {
        obj = (TransitionSet)obj;
        List list = ((TransitionSet) (obj)).getTargets();
        list.clear();
        int j = arraylist.size();
        for (int i = 0; i < j; i++)
        {
            a(list, (View)arraylist.get(i));
        }

        list.add(view);
        arraylist.add(view);
        a(obj, arraylist);
    }

    public static void a(Object obj, Object obj1, ArrayList arraylist, Object obj2, ArrayList arraylist1, Object obj3, ArrayList arraylist2)
    {
        ((Transition)obj).addListener(new android.transition.Transition.TransitionListener(obj1, arraylist, obj2, arraylist1, obj3, arraylist2) {

            final Object a;
            final ArrayList b;
            final Object c;
            final ArrayList d;
            final Object e;
            final ArrayList f;

            public void onTransitionCancel(Transition transition)
            {
            }

            public void onTransitionEnd(Transition transition)
            {
            }

            public void onTransitionPause(Transition transition)
            {
            }

            public void onTransitionResume(Transition transition)
            {
            }

            public void onTransitionStart(Transition transition)
            {
                if (a != null)
                {
                    t.b(a, b, null);
                }
                if (c != null)
                {
                    t.b(c, d, null);
                }
                if (e != null)
                {
                    t.b(e, f, null);
                }
            }

            
            {
                a = obj;
                b = arraylist;
                c = obj1;
                d = arraylist1;
                e = obj2;
                f = arraylist2;
                super();
            }
        });
    }

    public static void a(Object obj, ArrayList arraylist)
    {
        int i;
        i = 0;
        obj = (Transition)obj;
        if (obj != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!(obj instanceof TransitionSet))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (TransitionSet)obj;
        int k = ((TransitionSet) (obj)).getTransitionCount();
        while (i < k) 
        {
            a(((TransitionSet) (obj)).getTransitionAt(i), arraylist);
            i++;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (!a(((Transition) (obj))) && a(((Transition) (obj)).getTargets()))
        {
            int l = arraylist.size();
            int j = 0;
            while (j < l) 
            {
                ((Transition) (obj)).addTarget((View)arraylist.get(j));
                j++;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public static void a(Object obj, ArrayList arraylist, ArrayList arraylist1)
    {
        obj = (TransitionSet)obj;
        if (obj != null)
        {
            ((TransitionSet) (obj)).getTargets().clear();
            ((TransitionSet) (obj)).getTargets().addAll(arraylist1);
            b(obj, arraylist, arraylist1);
        }
    }

    public static void a(ArrayList arraylist, View view)
    {
label0:
        {
            if (view.getVisibility() == 0)
            {
                if (!(view instanceof ViewGroup))
                {
                    break label0;
                }
                view = (ViewGroup)view;
                if (view.isTransitionGroup())
                {
                    arraylist.add(view);
                } else
                {
                    int j = view.getChildCount();
                    int i = 0;
                    while (i < j) 
                    {
                        a(arraylist, view.getChildAt(i));
                        i++;
                    }
                }
            }
            return;
        }
        arraylist.add(view);
    }

    private static void a(List list, View view)
    {
        int k = list.size();
        if (!a(list, view, k))
        {
            list.add(view);
            int i = k;
            while (i < list.size()) 
            {
                view = (View)list.get(i);
                if (view instanceof ViewGroup)
                {
                    view = (ViewGroup)view;
                    int l = view.getChildCount();
                    for (int j = 0; j < l; j++)
                    {
                        View view1 = view.getChildAt(j);
                        if (!a(list, view1, k))
                        {
                            list.add(view1);
                        }
                    }

                }
                i++;
            }
        }
    }

    public static void a(Map map, View view)
    {
        if (view.getVisibility() == 0)
        {
            String s = view.getTransitionName();
            if (s != null)
            {
                map.put(s, view);
            }
            if (view instanceof ViewGroup)
            {
                view = (ViewGroup)view;
                int j = view.getChildCount();
                for (int i = 0; i < j; i++)
                {
                    a(map, view.getChildAt(i));
                }

            }
        }
    }

    private static boolean a(Transition transition)
    {
        return !a(transition.getTargetIds()) || !a(transition.getTargetNames()) || !a(transition.getTargetTypes());
    }

    private static boolean a(List list)
    {
        return list == null || list.isEmpty();
    }

    private static boolean a(List list, View view, int i)
    {
        boolean flag1 = false;
        int j = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (j < i)
                {
                    if (list.get(j) != view)
                    {
                        break label0;
                    }
                    flag = true;
                }
                return flag;
            }
            j++;
        } while (true);
    }

    public static Object b(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            TransitionSet transitionset = new TransitionSet();
            transitionset.addTransition((Transition)obj);
            return transitionset;
        }
    }

    public static Object b(Object obj, Object obj1, Object obj2)
    {
        Object obj3 = null;
        obj = (Transition)obj;
        obj1 = (Transition)obj1;
        obj2 = (Transition)obj2;
        if (obj != null && obj1 != null)
        {
            obj = (new TransitionSet()).addTransition(((Transition) (obj))).addTransition(((Transition) (obj1))).setOrdering(1);
        } else
        if (obj == null)
        {
            obj = obj3;
            if (obj1 != null)
            {
                obj = obj1;
            }
        }
        if (obj2 != null)
        {
            obj1 = new TransitionSet();
            if (obj != null)
            {
                ((TransitionSet) (obj1)).addTransition(((Transition) (obj)));
            }
            ((TransitionSet) (obj1)).addTransition(((Transition) (obj2)));
            return obj1;
        } else
        {
            return obj;
        }
    }

    private static String b(Map map, String s)
    {
        for (map = map.entrySet().iterator(); map.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)map.next();
            if (s.equals(entry.getValue()))
            {
                return (String)entry.getKey();
            }
        }

        return null;
    }

    public static void b(Object obj, View view)
    {
        if (obj != null)
        {
            ((Transition)obj).addTarget(view);
        }
    }

    public static void b(Object obj, View view, ArrayList arraylist)
    {
        ((Transition)obj).addListener(new android.transition.Transition.TransitionListener(view, arraylist) {

            final View a;
            final ArrayList b;

            public void onTransitionCancel(Transition transition)
            {
            }

            public void onTransitionEnd(Transition transition)
            {
                transition.removeListener(this);
                a.setVisibility(8);
                int j = b.size();
                for (int i = 0; i < j; i++)
                {
                    ((View)b.get(i)).setVisibility(0);
                }

            }

            public void onTransitionPause(Transition transition)
            {
            }

            public void onTransitionResume(Transition transition)
            {
            }

            public void onTransitionStart(Transition transition)
            {
            }

            
            {
                a = view;
                b = arraylist;
                super();
            }
        });
    }

    public static void b(Object obj, ArrayList arraylist, ArrayList arraylist1)
    {
        int i = 0;
        obj = (Transition)obj;
        if (obj instanceof TransitionSet)
        {
            obj = (TransitionSet)obj;
            for (int l = ((TransitionSet) (obj)).getTransitionCount(); i < l; i++)
            {
                b(((TransitionSet) (obj)).getTransitionAt(i), arraylist, arraylist1);
            }

        } else
        if (!a(((Transition) (obj))))
        {
            List list = ((Transition) (obj)).getTargets();
            if (list != null && list.size() == arraylist.size() && list.containsAll(arraylist))
            {
                int j;
                int i1;
                if (arraylist1 == null)
                {
                    j = 0;
                } else
                {
                    j = arraylist1.size();
                }
                for (i1 = 0; i1 < j; i1++)
                {
                    ((Transition) (obj)).addTarget((View)arraylist1.get(i1));
                }

                for (int k = arraylist.size() - 1; k >= 0; k--)
                {
                    ((Transition) (obj)).removeTarget((View)arraylist.get(k));
                }

            }
        }
    }

    public static void c(Object obj, View view)
    {
        if (obj != null)
        {
            ((Transition)obj).removeTarget(view);
        }
    }
}
