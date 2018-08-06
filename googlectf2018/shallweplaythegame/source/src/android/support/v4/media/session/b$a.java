// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            b, ParcelableVolumeInfo, PlaybackStateCompat, a

public static abstract class a.a extends Binder
    implements b
{
    private static class a
        implements b
    {

        private IBinder a;

        public void a(int i1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeInt(i1);
            a.transact(44, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(int i1, int j1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeInt(i1);
            parcel.writeInt(j1);
            parcel.writeString(s1);
            a.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
        }

        public void a(long l1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeLong(l1);
            a.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void a(Uri uri, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (uri == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L3:
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L4:
            a.transact(36, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            uri;
            parcel1.recycle();
            parcel.recycle();
            throw uri;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(MediaDescriptionCompat mediadescriptioncompat)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (mediadescriptioncompat == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            mediadescriptioncompat.writeToParcel(parcel, 0);
_L1:
            a.transact(41, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            mediadescriptioncompat;
            parcel1.recycle();
            parcel.recycle();
            throw mediadescriptioncompat;
        }

        public void a(MediaDescriptionCompat mediadescriptioncompat, int i1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (mediadescriptioncompat == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            mediadescriptioncompat.writeToParcel(parcel, 0);
_L1:
            parcel.writeInt(i1);
            a.transact(42, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            mediadescriptioncompat;
            parcel1.recycle();
            parcel.recycle();
            throw mediadescriptioncompat;
        }

        public void a(RatingCompat ratingcompat)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (ratingcompat == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            ratingcompat.writeToParcel(parcel, 0);
_L1:
            a.transact(25, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            ratingcompat;
            parcel1.recycle();
            parcel.recycle();
            throw ratingcompat;
        }

        public void a(RatingCompat ratingcompat, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (ratingcompat == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            ratingcompat.writeToParcel(parcel, 0);
_L3:
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L4:
            a.transact(51, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            ratingcompat;
            parcel1.recycle();
            parcel.recycle();
            throw ratingcompat;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(android.support.v4.media.session.a a1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            a1 = a1.asBinder();
_L1:
            parcel.writeStrongBinder(a1);
            a.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            a1 = null;
              goto _L1
            a1;
            parcel1.recycle();
            parcel.recycle();
            throw a1;
        }

        public void a(String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s1);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            a.transact(34, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
        }

        public void a(String s1, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultreceiverwrapper)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s1);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            if (resultreceiverwrapper == null)
            {
                break MISSING_BLOCK_LABEL_111;
            }
            parcel.writeInt(1);
            resultreceiverwrapper.writeToParcel(parcel, 0);
_L4:
            a.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
            parcel.writeInt(0);
              goto _L4
        }

        public void a(boolean flag)
        {
            Parcel parcel;
            Parcel parcel1;
            int i1;
            i1 = 0;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (flag)
            {
                i1 = 1;
            }
            parcel.writeInt(i1);
            a.transact(46, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean a()
        {
            Parcel parcel;
            Parcel parcel1;
            boolean flag;
            flag = false;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            if (i1 != 0)
            {
                flag = true;
            }
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean a(KeyEvent keyevent)
        {
            Parcel parcel;
            Parcel parcel1;
            boolean flag;
            flag = true;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (keyevent == null)
            {
                break MISSING_BLOCK_LABEL_72;
            }
            parcel.writeInt(1);
            keyevent.writeToParcel(parcel, 0);
_L1:
            int i1;
            a.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            if (i1 == 0)
            {
                flag = false;
            }
            parcel1.recycle();
            parcel.recycle();
            return flag;
            parcel.writeInt(0);
              goto _L1
            keyevent;
            parcel1.recycle();
            parcel.recycle();
            throw keyevent;
        }

        public IBinder asBinder()
        {
            return a;
        }

        public String b()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            s1 = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void b(int i1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeInt(i1);
            a.transact(39, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void b(int i1, int j1, String s1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeInt(i1);
            parcel.writeInt(j1);
            parcel.writeString(s1);
            a.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
        }

        public void b(long l1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeLong(l1);
            a.transact(24, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void b(Uri uri, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (uri == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L3:
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_96;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L4:
            a.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            uri;
            parcel1.recycle();
            parcel.recycle();
            throw uri;
            parcel.writeInt(0);
              goto _L4
        }

        public void b(MediaDescriptionCompat mediadescriptioncompat)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (mediadescriptioncompat == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            mediadescriptioncompat.writeToParcel(parcel, 0);
_L1:
            a.transact(43, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            mediadescriptioncompat;
            parcel1.recycle();
            parcel.recycle();
            throw mediadescriptioncompat;
        }

        public void b(android.support.v4.media.session.a a1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (a1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            a1 = a1.asBinder();
_L1:
            parcel.writeStrongBinder(a1);
            a.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            a1 = null;
              goto _L1
            a1;
            parcel1.recycle();
            parcel.recycle();
            throw a1;
        }

        public void b(String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s1);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            a.transact(35, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
        }

        public void b(boolean flag)
        {
            Parcel parcel;
            Parcel parcel1;
            int i1;
            i1 = 0;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (flag)
            {
                i1 = 1;
            }
            parcel.writeInt(i1);
            a.transact(40, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String c()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            s1 = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void c(int i1)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeInt(i1);
            a.transact(48, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void c(String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s1);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            a.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
        }

        public PendingIntent d()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            PendingIntent pendingintent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return pendingintent;
_L2:
            pendingintent = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void d(String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s1);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            a.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
        }

        public long e()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            long l1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            l1 = parcel1.readLong();
            parcel1.recycle();
            parcel.recycle();
            return l1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void e(String s1, Bundle bundle)
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s1);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            a.transact(26, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            s1;
            parcel1.recycle();
            parcel.recycle();
            throw s1;
        }

        public ParcelableVolumeInfo f()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            ParcelableVolumeInfo parcelablevolumeinfo = (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return parcelablevolumeinfo;
_L2:
            parcelablevolumeinfo = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public MediaMetadataCompat g()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(27, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            MediaMetadataCompat mediametadatacompat = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return mediametadatacompat;
_L2:
            mediametadatacompat = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public PlaybackStateCompat h()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(28, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            PlaybackStateCompat playbackstatecompat = (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return playbackstatecompat;
_L2:
            playbackstatecompat = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public List i()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            java.util.ArrayList arraylist;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(29, parcel, parcel1, 0);
            parcel1.readException();
            arraylist = parcel1.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
            parcel1.recycle();
            parcel.recycle();
            return arraylist;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public CharSequence j()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(30, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            CharSequence charsequence = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return charsequence;
_L2:
            charsequence = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public Bundle k()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(31, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle;
_L2:
            bundle = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int l()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(32, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean m()
        {
            Parcel parcel;
            Parcel parcel1;
            boolean flag;
            flag = false;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(45, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            if (i1 != 0)
            {
                flag = true;
            }
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int n()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(37, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean o()
        {
            Parcel parcel;
            Parcel parcel1;
            boolean flag;
            flag = false;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(38, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            if (i1 != 0)
            {
                flag = true;
            }
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int p()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i1;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(47, parcel, parcel1, 0);
            parcel1.readException();
            i1 = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i1;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void q()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(33, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void r()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void s()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void t()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void u()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void v()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void w()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(22, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void x()
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            a.transact(23, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        a(IBinder ibinder)
        {
            a = ibinder;
        }
    }


    public static b a(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
        if (iinterface != null && (iinterface instanceof b))
        {
            return (b)iinterface;
        } else
        {
            return new a(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        boolean flag1 = false;
        boolean flag2 = false;
        boolean flag3 = false;
        boolean flag5 = false;
        boolean flag = false;
        String s4;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("android.support.v4.media.session.IMediaSession");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            String s5 = parcel.readString();
            Bundle bundle;
            if (parcel.readInt() != 0)
            {
                bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle = null;
            }
            if (parcel.readInt() != 0)
            {
                parcel = (aSessionCompat.ResultReceiverWrapper)aSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(s5, bundle, parcel);
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            if (parcel.readInt() != 0)
            {
                parcel = (KeyEvent)KeyEvent.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            flag3 = a(parcel);
            parcel1.writeNoException();
            if (flag3)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            parcel1.writeInt(i);
            return true;

        case 3: // '\003'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            a(a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            b(a(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            flag3 = a();
            parcel1.writeNoException();
            i = ((flag) ? 1 : 0);
            if (flag3)
            {
                i = 1;
            }
            parcel1.writeInt(i);
            return true;

        case 6: // '\006'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = b();
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 7: // '\007'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = c();
            parcel1.writeNoException();
            parcel1.writeString(parcel);
            return true;

        case 8: // '\b'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = d();
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 9: // '\t'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            long l = e();
            parcel1.writeNoException();
            parcel1.writeLong(l);
            return true;

        case 10: // '\n'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = f();
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 11: // '\013'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            a(parcel.readInt(), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 12: // '\f'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            b(parcel.readInt(), parcel.readInt(), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 27: // '\033'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = g();
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 28: // '\034'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = h();
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 29: // '\035'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = i();
            parcel1.writeNoException();
            parcel1.writeTypedList(parcel);
            return true;

        case 30: // '\036'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = j();
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                TextUtils.writeToParcel(parcel, parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 31: // '\037'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            parcel = k();
            parcel1.writeNoException();
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }

        case 32: // ' '
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            i = l();
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;

        case 45: // '-'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            flag3 = m();
            parcel1.writeNoException();
            i = ((flag1) ? 1 : 0);
            if (flag3)
            {
                i = 1;
            }
            parcel1.writeInt(i);
            return true;

        case 37: // '%'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            i = n();
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;

        case 38: // '&'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            flag3 = o();
            parcel1.writeNoException();
            i = ((flag2) ? 1 : 0);
            if (flag3)
            {
                i = 1;
            }
            parcel1.writeInt(i);
            return true;

        case 47: // '/'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            i = p();
            parcel1.writeNoException();
            parcel1.writeInt(i);
            return true;

        case 41: // ')'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            if (parcel.readInt() != 0)
            {
                parcel = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(parcel);
            parcel1.writeNoException();
            return true;

        case 42: // '*'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            MediaDescriptionCompat mediadescriptioncompat;
            if (parcel.readInt() != 0)
            {
                mediadescriptioncompat = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            } else
            {
                mediadescriptioncompat = null;
            }
            a(mediadescriptioncompat, parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 43: // '+'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            if (parcel.readInt() != 0)
            {
                parcel = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            b(parcel);
            parcel1.writeNoException();
            return true;

        case 44: // ','
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            a(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 33: // '!'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            q();
            parcel1.writeNoException();
            return true;

        case 34: // '"'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            String s = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(s, parcel);
            parcel1.writeNoException();
            return true;

        case 35: // '#'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            String s1 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            b(s1, parcel);
            parcel1.writeNoException();
            return true;

        case 36: // '$'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            Uri uri;
            if (parcel.readInt() != 0)
            {
                uri = (Uri)Uri.CREATOR.createFromParcel(parcel);
            } else
            {
                uri = null;
            }
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(uri, parcel);
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            r();
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            String s2 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            c(s2, parcel);
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            String s3 = parcel.readString();
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            d(s3, parcel);
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            Uri uri1;
            if (parcel.readInt() != 0)
            {
                uri1 = (Uri)Uri.CREATOR.createFromParcel(parcel);
            } else
            {
                uri1 = null;
            }
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            b(uri1, parcel);
            parcel1.writeNoException();
            return true;

        case 17: // '\021'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            a(parcel.readLong());
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            s();
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            t();
            parcel1.writeNoException();
            return true;

        case 20: // '\024'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            u();
            parcel1.writeNoException();
            return true;

        case 21: // '\025'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            v();
            parcel1.writeNoException();
            return true;

        case 22: // '\026'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            w();
            parcel1.writeNoException();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            x();
            parcel1.writeNoException();
            return true;

        case 24: // '\030'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            b(parcel.readLong());
            parcel1.writeNoException();
            return true;

        case 25: // '\031'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            if (parcel.readInt() != 0)
            {
                parcel = (RatingCompat)RatingCompat.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(parcel);
            parcel1.writeNoException();
            return true;

        case 51: // '3'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            RatingCompat ratingcompat;
            if (parcel.readInt() != 0)
            {
                ratingcompat = (RatingCompat)RatingCompat.CREATOR.createFromParcel(parcel);
            } else
            {
                ratingcompat = null;
            }
            if (parcel.readInt() != 0)
            {
                parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            a(ratingcompat, parcel);
            parcel1.writeNoException();
            return true;

        case 46: // '.'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            if (parcel.readInt() != 0)
            {
                flag3 = true;
            }
            a(flag3);
            parcel1.writeNoException();
            return true;

        case 39: // '\''
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            b(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 40: // '('
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            boolean flag4 = flag5;
            if (parcel.readInt() != 0)
            {
                flag4 = true;
            }
            b(flag4);
            parcel1.writeNoException();
            return true;

        case 48: // '0'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            c(parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 26: // '\032'
            parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
            s4 = parcel.readString();
            break;
        }
        if (parcel.readInt() != 0)
        {
            parcel = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
        } else
        {
            parcel = null;
        }
        e(s4, parcel);
        parcel1.writeNoException();
        return true;
    }
}
