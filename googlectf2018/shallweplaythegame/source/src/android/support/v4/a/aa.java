// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.a;

import android.app.Activity;
import android.arch.lifecycle.b;
import android.arch.lifecycle.c;
import android.arch.lifecycle.d;
import android.arch.lifecycle.g;
import android.os.Bundle;
import android.support.v4.g.k;

public class aa extends Activity
    implements c
{

    private k a;
    private d b;

    public aa()
    {
        a = new k();
        b = new d(this);
    }

    public b a()
    {
        return b;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        g.a(this);
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        b.a(android.arch.lifecycle.b.b.c);
        super.onSaveInstanceState(bundle);
    }
}
