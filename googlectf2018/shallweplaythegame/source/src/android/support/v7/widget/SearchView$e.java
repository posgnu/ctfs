// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.h.a;

// Referenced classes of package android.support.v7.widget:
//            SearchView

static class b extends a
{

    public static final android.os.eator CREATOR = new android.os.Parcelable.ClassLoaderCreator() {

        public SearchView.e a(Parcel parcel)
        {
            return new SearchView.e(parcel, null);
        }

        public SearchView.e a(Parcel parcel, ClassLoader classloader)
        {
            return new SearchView.e(parcel, classloader);
        }

        public SearchView.e[] a(int i)
        {
            return new SearchView.e[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object createFromParcel(Parcel parcel, ClassLoader classloader)
        {
            return a(parcel, classloader);
        }

        public Object[] newArray(int i)
        {
            return a(i);
        }

    };
    boolean b;

    public String toString()
    {
        return (new StringBuilder()).append("SearchView.SavedState{").append(Integer.toHexString(System.identityHashCode(this))).append(" isIconified=").append(b).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Boolean.valueOf(b));
    }


    public _cls1(Parcel parcel, ClassLoader classloader)
    {
        super(parcel, classloader);
        b = ((Boolean)parcel.readValue(null)).booleanValue();
    }

    b(Parcelable parcelable)
    {
        super(parcelable);
    }
}
