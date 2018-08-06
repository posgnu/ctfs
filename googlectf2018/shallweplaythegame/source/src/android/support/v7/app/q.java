// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.app;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.support.v4.b.c;
import android.util.Log;
import java.util.Calendar;

// Referenced classes of package android.support.v7.app:
//            p

class q
{
    private static class a
    {

        boolean a;
        long b;
        long c;
        long d;
        long e;
        long f;

        a()
        {
        }
    }


    private static q a;
    private final Context b;
    private final LocationManager c;
    private final a d = new a();

    q(Context context, LocationManager locationmanager)
    {
        b = context;
        c = locationmanager;
    }

    private Location a(String s)
    {
        if (c == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        if (!c.isProviderEnabled(s))
        {
            break MISSING_BLOCK_LABEL_39;
        }
        s = c.getLastKnownLocation(s);
        return s;
        s;
        Log.d("TwilightManager", "Failed to get last known location", s);
        return null;
    }

    static q a(Context context)
    {
        if (a == null)
        {
            context = context.getApplicationContext();
            a = new q(context, (LocationManager)context.getSystemService("location"));
        }
        return a;
    }

    private void a(Location location)
    {
        long l;
        long l2;
        long l3;
        long l4;
        a a1 = d;
        l = System.currentTimeMillis();
        p p1 = p.a();
        p1.a(l - 0x5265c00L, location.getLatitude(), location.getLongitude());
        long l1 = p1.a;
        p1.a(l, location.getLatitude(), location.getLongitude());
        boolean flag;
        if (p1.c == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l2 = p1.b;
        l3 = p1.a;
        p1.a(0x5265c00L + l, location.getLatitude(), location.getLongitude());
        l4 = p1.b;
        if (l2 != -1L && l3 != -1L) goto _L2; else goto _L1
_L1:
        l = 0x2932e00L + l;
_L4:
        a1.a = flag;
        a1.b = l1;
        a1.c = l2;
        a1.d = l3;
        a1.e = l4;
        a1.f = l;
        return;
_L2:
        if (l <= l3)
        {
            break; /* Loop/switch isn't completed */
        }
        l = 0L + l4;
_L5:
        l += 60000L;
        if (true) goto _L4; else goto _L3
_L3:
        if (l > l2)
        {
            l = 0L + l3;
        } else
        {
            l = 0L + l2;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    private Location b()
    {
        Location location1 = null;
        Location location;
        if (android.support.v4.b.c.a(b, "android.permission.ACCESS_COARSE_LOCATION") == 0)
        {
            location = a("network");
        } else
        {
            location = null;
        }
        if (android.support.v4.b.c.a(b, "android.permission.ACCESS_FINE_LOCATION") == 0)
        {
            location1 = a("gps");
        }
        if (location1 != null && location != null)
        {
            Location location2 = location;
            if (location1.getTime() > location.getTime())
            {
                location2 = location1;
            }
            return location2;
        }
        if (location1 == null)
        {
            location1 = location;
        }
        return location1;
    }

    private boolean c()
    {
        return d != null && d.f > System.currentTimeMillis();
    }

    boolean a()
    {
        a a1 = d;
        if (c())
        {
            return a1.a;
        }
        Location location = b();
        if (location != null)
        {
            a(location);
            return a1.a;
        }
        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
        int i = Calendar.getInstance().get(11);
        return i < 6 || i >= 22;
    }
}
