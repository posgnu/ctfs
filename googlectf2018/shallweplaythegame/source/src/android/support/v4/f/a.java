// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.f;

import android.support.v4.g.j;
import android.util.Base64;
import java.util.List;

public final class a
{

    private final String a;
    private final String b;
    private final String c;
    private final List d;
    private final int e = 0;
    private final String f;

    public a(String s, String s1, String s2, List list)
    {
        a = (String)j.a(s);
        b = (String)j.a(s1);
        c = (String)j.a(s2);
        d = (List)j.a(list);
        f = (new StringBuilder(a)).append("-").append(b).append("-").append(c).toString();
    }

    public String a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public String c()
    {
        return c;
    }

    public List d()
    {
        return d;
    }

    public int e()
    {
        return e;
    }

    public String f()
    {
        return f;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder()).append("FontRequest {mProviderAuthority: ").append(a).append(", mProviderPackage: ").append(b).append(", mQuery: ").append(c).append(", mCertificates:").toString());
        for (int i = 0; i < d.size(); i++)
        {
            stringbuilder.append(" [");
            List list = (List)d.get(i);
            for (int k = 0; k < list.size(); k++)
            {
                stringbuilder.append(" \"");
                stringbuilder.append(Base64.encodeToString((byte[])list.get(k), 0));
                stringbuilder.append("\"");
            }

            stringbuilder.append(" ]");
        }

        stringbuilder.append("}");
        stringbuilder.append((new StringBuilder()).append("mCertificatesArray: ").append(e).toString());
        return stringbuilder.toString();
    }
}
