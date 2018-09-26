// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.b.a;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.g.a;
import android.util.AttributeSet;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;

// Referenced classes of package android.support.b.a:
//            h, b, i, a, 
//            e

public class c extends h
    implements android.support.b.a.b
{
    private static class a extends android.graphics.drawable.Drawable.ConstantState
    {

        int a;
        i b;
        AnimatorSet c;
        android.support.v4.g.a d;
        private ArrayList e;

        static ArrayList a(a a1)
        {
            return a1.e;
        }

        static ArrayList a(a a1, ArrayList arraylist)
        {
            a1.e = arraylist;
            return arraylist;
        }

        public void a()
        {
            if (c == null)
            {
                c = new AnimatorSet();
            }
            c.playTogether(e);
        }

        public int getChangingConfigurations()
        {
            return a;
        }

        public Drawable newDrawable()
        {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public Drawable newDrawable(Resources resources)
        {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        public a(Context context, a a1, android.graphics.drawable.Drawable.Callback callback, Resources resources)
        {
            int j = 0;
            super();
            if (a1 != null)
            {
                a = a1.a;
                if (a1.b != null)
                {
                    context = a1.b.getConstantState();
                    int k;
                    if (resources != null)
                    {
                        b = (i)context.newDrawable(resources);
                    } else
                    {
                        b = (i)context.newDrawable();
                    }
                    b = (i)b.mutate();
                    b.setCallback(callback);
                    b.setBounds(a1.b.getBounds());
                    b.a(false);
                }
                if (a1.e != null)
                {
                    k = a1.e.size();
                    e = new ArrayList(k);
                    d = new android.support.v4.g.a(k);
                    for (; j < k; j++)
                    {
                        callback = (Animator)a1.e.get(j);
                        context = callback.clone();
                        callback = (String)a1.d.get(callback);
                        context.setTarget(b.a(callback));
                        e.add(context);
                        d.put(context, callback);
                    }

                    a();
                }
            }
        }
    }

    private static class b extends android.graphics.drawable.Drawable.ConstantState
    {

        private final android.graphics.drawable.Drawable.ConstantState a;

        public boolean canApplyTheme()
        {
            return a.canApplyTheme();
        }

        public int getChangingConfigurations()
        {
            return a.getChangingConfigurations();
        }

        public Drawable newDrawable()
        {
            c c1 = new c();
            c1.b = a.newDrawable();
            c1.b.setCallback(c1.a);
            return c1;
        }

        public Drawable newDrawable(Resources resources)
        {
            c c1 = new c();
            c1.b = a.newDrawable(resources);
            c1.b.setCallback(c1.a);
            return c1;
        }

        public Drawable newDrawable(Resources resources, android.content.res.Resources.Theme theme)
        {
            c c1 = new c();
            c1.b = a.newDrawable(resources, theme);
            c1.b.setCallback(c1.a);
            return c1;
        }

        public b(android.graphics.drawable.Drawable.ConstantState constantstate)
        {
            a = constantstate;
        }
    }


    final android.graphics.drawable.Drawable.Callback a;
    private a c;
    private Context d;
    private ArgbEvaluator e;
    private android.animation.Animator.AnimatorListener f;
    private ArrayList g;

    c()
    {
        this(null, null, null);
    }

    private c(Context context)
    {
        this(context, null, null);
    }

    private c(Context context, a a1, Resources resources)
    {
        e = null;
        f = null;
        g = null;
        a = new android.graphics.drawable.Drawable.Callback() {

            final c a;

            public void invalidateDrawable(Drawable drawable)
            {
                a.invalidateSelf();
            }

            public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
            {
                a.scheduleSelf(runnable, l);
            }

            public void unscheduleDrawable(Drawable drawable, Runnable runnable)
            {
                a.unscheduleSelf(runnable);
            }

            
            {
                a = c.this;
                super();
            }
        };
        d = context;
        if (a1 != null)
        {
            c = a1;
            return;
        } else
        {
            c = new a(context, a1, a, resources);
            return;
        }
    }

    public static c a(Context context, Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        context = new c(context);
        context.inflate(resources, xmlpullparser, attributeset, theme);
        return context;
    }

    private void a(Animator animator)
    {
        if (animator instanceof AnimatorSet)
        {
            ArrayList arraylist = ((AnimatorSet)animator).getChildAnimations();
            if (arraylist != null)
            {
                for (int j = 0; j < arraylist.size(); j++)
                {
                    a((Animator)arraylist.get(j));
                }

            }
        }
        if (animator instanceof ObjectAnimator)
        {
            animator = (ObjectAnimator)animator;
            String s = animator.getPropertyName();
            if ("fillColor".equals(s) || "strokeColor".equals(s))
            {
                if (e == null)
                {
                    e = new ArgbEvaluator();
                }
                animator.setEvaluator(e);
            }
        }
    }

    private void a(String s, Animator animator)
    {
        animator.setTarget(c.b.a(s));
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            a(animator);
        }
        if (android.support.b.a.a.a(c) == null)
        {
            android.support.b.a.a.a(c, new ArrayList());
            c.d = new android.support.v4.g.a();
        }
        android.support.b.a.a.a(c).add(animator);
        c.d.put(animator, s);
    }

    public void applyTheme(android.content.res.Resources.Theme theme)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, theme);
        }
    }

    public boolean canApplyTheme()
    {
        if (b != null)
        {
            return android.support.v4.c.a.a.d(b);
        } else
        {
            return false;
        }
    }

    public volatile void clearColorFilter()
    {
        super.clearColorFilter();
    }

    public void draw(Canvas canvas)
    {
        if (b != null)
        {
            b.draw(canvas);
        } else
        {
            c.b.draw(canvas);
            if (c.c.isStarted())
            {
                invalidateSelf();
                return;
            }
        }
    }

    public int getAlpha()
    {
        if (b != null)
        {
            return android.support.v4.c.a.a.c(b);
        } else
        {
            return c.b.getAlpha();
        }
    }

    public int getChangingConfigurations()
    {
        if (b != null)
        {
            return b.getChangingConfigurations();
        } else
        {
            return super.getChangingConfigurations() | c.a;
        }
    }

    public volatile ColorFilter getColorFilter()
    {
        return super.getColorFilter();
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        if (b != null && android.os.Build.VERSION.SDK_INT >= 24)
        {
            return new b(b.getConstantState());
        } else
        {
            return null;
        }
    }

    public volatile Drawable getCurrent()
    {
        return super.getCurrent();
    }

    public int getIntrinsicHeight()
    {
        if (b != null)
        {
            return b.getIntrinsicHeight();
        } else
        {
            return c.b.getIntrinsicHeight();
        }
    }

    public int getIntrinsicWidth()
    {
        if (b != null)
        {
            return b.getIntrinsicWidth();
        } else
        {
            return c.b.getIntrinsicWidth();
        }
    }

    public volatile int getMinimumHeight()
    {
        return super.getMinimumHeight();
    }

    public volatile int getMinimumWidth()
    {
        return super.getMinimumWidth();
    }

    public int getOpacity()
    {
        if (b != null)
        {
            return b.getOpacity();
        } else
        {
            return c.b.getOpacity();
        }
    }

    public volatile boolean getPadding(Rect rect)
    {
        return super.getPadding(rect);
    }

    public volatile int[] getState()
    {
        return super.getState();
    }

    public volatile Region getTransparentRegion()
    {
        return super.getTransparentRegion();
    }

    public void inflate(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset)
    {
        inflate(resources, xmlpullparser, attributeset, null);
    }

    public void inflate(Resources resources, XmlPullParser xmlpullparser, AttributeSet attributeset, android.content.res.Resources.Theme theme)
    {
        int k;
        int i1;
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, resources, xmlpullparser, attributeset, theme);
            return;
        }
        k = xmlpullparser.getEventType();
        i1 = xmlpullparser.getDepth();
_L2:
        Object obj;
        if (k == 1 || xmlpullparser.getDepth() < i1 + 1 && k == 3)
        {
            break MISSING_BLOCK_LABEL_271;
        }
        if (k == 2)
        {
            obj = xmlpullparser.getName();
            if (!"animated-vector".equals(obj))
            {
                break; /* Loop/switch isn't completed */
            }
            obj = android.support.v4.b.a.c.a(resources, theme, attributeset, android.support.b.a.a.e);
            k = ((TypedArray) (obj)).getResourceId(0, 0);
            if (k != 0)
            {
                i j = android.support.b.a.i.a(resources, k, theme);
                j.a(false);
                j.setCallback(a);
                if (c.b != null)
                {
                    c.b.setCallback(null);
                }
                c.b = j;
            }
            ((TypedArray) (obj)).recycle();
        }
_L4:
        k = xmlpullparser.next();
        if (true) goto _L2; else goto _L1
_L1:
        if (!"target".equals(obj)) goto _L4; else goto _L3
_L3:
label0:
        {
            obj = resources.obtainAttributes(attributeset, android.support.b.a.a.f);
            String s = ((TypedArray) (obj)).getString(0);
            int l = ((TypedArray) (obj)).getResourceId(1, 0);
            if (l != 0)
            {
                if (d == null)
                {
                    break label0;
                }
                a(s, android.support.b.a.e.a(d, l));
            }
            ((TypedArray) (obj)).recycle();
        }
          goto _L4
        ((TypedArray) (obj)).recycle();
        throw new IllegalStateException("Context can't be null when inflating animators");
        c.a();
        return;
    }

    public boolean isAutoMirrored()
    {
        if (b != null)
        {
            return android.support.v4.c.a.a.b(b);
        } else
        {
            return c.b.isAutoMirrored();
        }
    }

    public boolean isRunning()
    {
        if (b != null)
        {
            return ((AnimatedVectorDrawable)b).isRunning();
        } else
        {
            return c.c.isRunning();
        }
    }

    public boolean isStateful()
    {
        if (b != null)
        {
            return b.isStateful();
        } else
        {
            return c.b.isStateful();
        }
    }

    public volatile void jumpToCurrentState()
    {
        super.jumpToCurrentState();
    }

    public Drawable mutate()
    {
        if (b != null)
        {
            b.mutate();
        }
        return this;
    }

    protected void onBoundsChange(Rect rect)
    {
        if (b != null)
        {
            b.setBounds(rect);
            return;
        } else
        {
            c.b.setBounds(rect);
            return;
        }
    }

    protected boolean onLevelChange(int j)
    {
        if (b != null)
        {
            return b.setLevel(j);
        } else
        {
            return c.b.setLevel(j);
        }
    }

    protected boolean onStateChange(int ai[])
    {
        if (b != null)
        {
            return b.setState(ai);
        } else
        {
            return c.b.setState(ai);
        }
    }

    public void setAlpha(int j)
    {
        if (b != null)
        {
            b.setAlpha(j);
            return;
        } else
        {
            c.b.setAlpha(j);
            return;
        }
    }

    public void setAutoMirrored(boolean flag)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, flag);
            return;
        } else
        {
            c.b.setAutoMirrored(flag);
            return;
        }
    }

    public volatile void setChangingConfigurations(int j)
    {
        super.setChangingConfigurations(j);
    }

    public volatile void setColorFilter(int j, android.graphics.PorterDuff.Mode mode)
    {
        super.setColorFilter(j, mode);
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        if (b != null)
        {
            b.setColorFilter(colorfilter);
            return;
        } else
        {
            c.b.setColorFilter(colorfilter);
            return;
        }
    }

    public volatile void setFilterBitmap(boolean flag)
    {
        super.setFilterBitmap(flag);
    }

    public volatile void setHotspot(float f1, float f2)
    {
        super.setHotspot(f1, f2);
    }

    public volatile void setHotspotBounds(int j, int k, int l, int i1)
    {
        super.setHotspotBounds(j, k, l, i1);
    }

    public volatile boolean setState(int ai[])
    {
        return super.setState(ai);
    }

    public void setTint(int j)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, j);
            return;
        } else
        {
            c.b.setTint(j);
            return;
        }
    }

    public void setTintList(ColorStateList colorstatelist)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, colorstatelist);
            return;
        } else
        {
            c.b.setTintList(colorstatelist);
            return;
        }
    }

    public void setTintMode(android.graphics.PorterDuff.Mode mode)
    {
        if (b != null)
        {
            android.support.v4.c.a.a.a(b, mode);
            return;
        } else
        {
            c.b.setTintMode(mode);
            return;
        }
    }

    public boolean setVisible(boolean flag, boolean flag1)
    {
        if (b != null)
        {
            return b.setVisible(flag, flag1);
        } else
        {
            c.b.setVisible(flag, flag1);
            return super.setVisible(flag, flag1);
        }
    }

    public void start()
    {
        if (b != null)
        {
            ((AnimatedVectorDrawable)b).start();
        } else
        if (!c.c.isStarted())
        {
            c.c.start();
            invalidateSelf();
            return;
        }
    }

    public void stop()
    {
        if (b != null)
        {
            ((AnimatedVectorDrawable)b).stop();
            return;
        } else
        {
            c.c.end();
            return;
        }
    }
}
