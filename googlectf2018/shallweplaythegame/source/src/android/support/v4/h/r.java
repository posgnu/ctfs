// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.h;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

// Referenced classes of package android.support.v4.h:
//            s, u

public final class r
{
    static class a
        implements s
    {

        r a;
        boolean b;

        public void a(View view)
        {
            b = false;
            if (a.c > -1)
            {
                view.setLayerType(2, null);
            }
            if (a.a != null)
            {
                Runnable runnable = a.a;
                a.a = null;
                runnable.run();
            }
            Object obj = view.getTag(0x7e000000);
            if (obj instanceof s)
            {
                obj = (s)obj;
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                ((s) (obj)).a(view);
            }
        }

        public void b(View view)
        {
            if (a.c > -1)
            {
                view.setLayerType(a.c, null);
                a.c = -1;
            }
            if (android.os.Build.VERSION.SDK_INT >= 16 || !b)
            {
                if (a.b != null)
                {
                    Runnable runnable = a.b;
                    a.b = null;
                    runnable.run();
                }
                Object obj = view.getTag(0x7e000000);
                if (obj instanceof s)
                {
                    obj = (s)obj;
                } else
                {
                    obj = null;
                }
                if (obj != null)
                {
                    ((s) (obj)).b(view);
                }
                b = true;
            }
        }

        public void c(View view)
        {
            Object obj = view.getTag(0x7e000000);
            if (obj instanceof s)
            {
                obj = (s)obj;
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                ((s) (obj)).c(view);
            }
        }

        a(r r1)
        {
            a = r1;
        }
    }


    Runnable a;
    Runnable b;
    int c;
    private WeakReference d;

    r(View view)
    {
        a = null;
        b = null;
        c = -1;
        d = new WeakReference(view);
    }

    private void a(View view, s s)
    {
        if (s != null)
        {
            view.animate().setListener(new AnimatorListenerAdapter(s, view) {

                final s a;
                final View b;
                final r c;

                public void onAnimationCancel(Animator animator)
                {
                    a.c(b);
                }

                public void onAnimationEnd(Animator animator)
                {
                    a.b(b);
                }

                public void onAnimationStart(Animator animator)
                {
                    a.a(b);
                }

            
            {
                c = r.this;
                a = s1;
                b = view;
                super();
            }
            });
            return;
        } else
        {
            view.animate().setListener(null);
            return;
        }
    }

    public long a()
    {
        View view = (View)d.get();
        if (view != null)
        {
            return view.animate().getDuration();
        } else
        {
            return 0L;
        }
    }

    public r a(float f)
    {
        View view = (View)d.get();
        if (view != null)
        {
            view.animate().alpha(f);
        }
        return this;
    }

    public r a(long l)
    {
        View view = (View)d.get();
        if (view != null)
        {
            view.animate().setDuration(l);
        }
        return this;
    }

    public r a(s s)
    {
        View view;
label0:
        {
            view = (View)d.get();
            if (view != null)
            {
                if (android.os.Build.VERSION.SDK_INT < 16)
                {
                    break label0;
                }
                a(view, s);
            }
            return this;
        }
        view.setTag(0x7e000000, s);
        a(view, ((s) (new a(this))));
        return this;
    }

    public r a(u u)
    {
        View view = (View)d.get();
        if (view != null && android.os.Build.VERSION.SDK_INT >= 19)
        {
            android.animation.ValueAnimator.AnimatorUpdateListener animatorupdatelistener = null;
            if (u != null)
            {
                animatorupdatelistener = new android.animation.ValueAnimator.AnimatorUpdateListener(u, view) {

                    final u a;
                    final View b;
                    final r c;

                    public void onAnimationUpdate(ValueAnimator valueanimator)
                    {
                        a.a(b);
                    }

            
            {
                c = r.this;
                a = u1;
                b = view;
                super();
            }
                };
            }
            view.animate().setUpdateListener(animatorupdatelistener);
        }
        return this;
    }

    public r a(Interpolator interpolator)
    {
        View view = (View)d.get();
        if (view != null)
        {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public r b(float f)
    {
        View view = (View)d.get();
        if (view != null)
        {
            view.animate().translationY(f);
        }
        return this;
    }

    public r b(long l)
    {
        View view = (View)d.get();
        if (view != null)
        {
            view.animate().setStartDelay(l);
        }
        return this;
    }

    public void b()
    {
        View view = (View)d.get();
        if (view != null)
        {
            view.animate().cancel();
        }
    }

    public void c()
    {
        View view = (View)d.get();
        if (view != null)
        {
            view.animate().start();
        }
    }
}
