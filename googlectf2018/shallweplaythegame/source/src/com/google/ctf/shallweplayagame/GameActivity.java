// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ctf.shallweplayagame;

import android.animation.AnimatorSet;
import android.os.Bundle;
import android.support.v7.app.c;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Random;

// Referenced classes of package com.google.ctf.shallweplayagame:
//            a, N, b

public class GameActivity extends c
    implements android.view.View.OnClickListener
{

    a l[][];
    Queue m;
    Object n;
    int o;
    boolean p;
    byte q[];
    byte r[] = {
        -61, 15, 25, -115, -46, -11, 65, -3, 34, 93, 
        -39, 98, 123, 17, 42, -121, 60, 40, -60, -112, 
        77, 111, 34, 14, -31, -4, -7, 66, 116, 108, 
        114, -122
    };

    public GameActivity()
    {
        l = (a[][])Array.newInstance(com/google/ctf/shallweplayagame/a, new int[] {
            3, 3
        });
        m = new LinkedList();
        n = N._(new Object[] {
            Integer.valueOf(3), N.h, Long.valueOf(0x54686520L + 0x6f6e6c79L + 0x2077696eL + 0x6e696e67L + 0x206d6f76L + 0x65206973L + 0x206e6f74L + 0x20746f20L + 0x706c6179L)
        });
        q = new byte[32];
        N._(new Object[] {
            Integer.valueOf(3), N.i, n, q
        });
        o = 0;
        p = false;
    }

    a a(List list)
    {
        return (a)list.get(((Random)n).nextInt(list.size()));
    }

    boolean a(a.a a1)
    {
        int ai[];
        int ai1[];
        int ai2[];
        int j;
        int l1;
        ai = new int[3];
        ai;
        ai[0] = 0;
        ai[1] = 0;
        ai[2] = 0;
        ai1 = new int[3];
        ai1;
        ai1[0] = 0;
        ai1[1] = 0;
        ai1[2] = 0;
        ai2 = new int[2];
        ai2;
        ai2[0] = 0;
        ai2[1] = 0;
        for (int i = 0; i < 3; i++)
        {
            for (int k1 = 0; k1 < 3; k1++)
            {
                if (l[k1][i].d != a1)
                {
                    continue;
                }
                ai[i] = ai[i] + 1;
                ai1[k1] = ai1[k1] + 1;
                if (i == k1)
                {
                    ai2[0] = ai2[0] + 1;
                }
                if (i + k1 == 2)
                {
                    ai2[1] = ai2[1] + 1;
                }
            }

        }

        l1 = ai.length;
        j = 0;
_L7:
        if (j >= l1) goto _L2; else goto _L1
_L1:
        if (ai[j] < 3) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        j++;
        continue; /* Loop/switch isn't completed */
_L2:
        int i2 = ai1.length;
        for (int i1 = 0; i1 < i2; i1++)
        {
            if (ai1[i1] >= 3)
            {
                continue; /* Loop/switch isn't completed */
            }
        }

        i2 = ai2.length;
        int j1 = 0;
label0:
        do
        {
label1:
            {
                if (j1 >= i2)
                {
                    break label1;
                }
                if (ai2[j1] >= 3)
                {
                    break label0;
                }
                j1++;
            }
        } while (true);
        if (true) goto _L3; else goto _L5
_L5:
        return false;
        if (true) goto _L7; else goto _L6
_L6:
    }

    void k()
    {
        AnimatorSet animatorset = (AnimatorSet)m.poll();
        if (animatorset != null)
        {
            animatorset.start();
        }
    }

    List l()
    {
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                if (l[j][i].a())
                {
                    arraylist.add(l[j][i]);
                }
            }

        }

        return arraylist;
    }

    void m()
    {
        Object obj = N._(new Object[] {
            Integer.valueOf(0), N.a, Integer.valueOf(0)
        });
        Object obj1 = N._(new Object[] {
            Integer.valueOf(1), N.b, q, Integer.valueOf(1)
        });
        N._(new Object[] {
            Integer.valueOf(0), com.google.ctf.shallweplayagame.N.c, obj, Integer.valueOf(2), obj1
        });
        byte abyte0[] = (byte[])(byte[])N._(new Object[] {
            Integer.valueOf(0), N.d, obj, r
        });
        ((TextView)findViewById(0x7f070055)).setText(new String(abyte0));
        o();
    }

    void n()
    {
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                l[j][i].a(a.a.a, 25);
            }

        }

        k();
        o = o + 1;
        Object obj = N._(new Object[] {
            Integer.valueOf(2), N.e, Integer.valueOf(2)
        });
        N._(new Object[] {
            Integer.valueOf(2), N.f, obj, q
        });
        q = (byte[])(byte[])N._(new Object[] {
            Integer.valueOf(2), N.g, obj
        });
        if (o == 0xf4240)
        {
            m();
            return;
        } else
        {
            ((TextView)findViewById(0x7f070055)).setText(String.format("%d / %d", new Object[] {
                Integer.valueOf(o), Integer.valueOf(0xf4240)
            }));
            return;
        }
    }

    void o()
    {
        for (int i = 0; i < 3; i++)
        {
            for (int j = 0; j < 3; j++)
            {
                l[j][i].setValue(a.a.d);
            }

        }

        o = 0;
        p = true;
        k();
    }

    public void onClick(View view)
    {
        while (p || !m.isEmpty()) 
        {
            return;
        }
        view = (a)view;
        if (!view.a())
        {
            b.b();
            return;
        }
        b.a();
        view.setValue(a.a.b);
        if (a(a.a.b))
        {
            n();
            return;
        }
        view = l();
        if (view.isEmpty())
        {
            n();
            return;
        }
        a(view).setValue(com.google.ctf.shallweplayagame.a.a.c);
        if (a(com.google.ctf.shallweplayagame.a.a.c))
        {
            o();
            return;
        } else
        {
            k();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f09001b);
        bundle = (LinearLayout)findViewById(0x7f070054);
        for (int i = 0; i < 3; i++)
        {
            LinearLayout linearlayout = new LinearLayout(getApplicationContext());
            for (int j = 0; j < 3; j++)
            {
                a a1 = new a(getApplicationContext(), m);
                linearlayout.addView(a1);
                l[j][i] = a1;
                a1.setOnClickListener(this);
            }

            bundle.addView(linearlayout);
        }

    }
}
