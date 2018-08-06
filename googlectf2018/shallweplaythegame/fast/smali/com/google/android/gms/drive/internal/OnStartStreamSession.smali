.class public Lcom/google/android/gms/drive/internal/OnStartStreamSession;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnStartStreamSession;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzayQ:Landroid/os/ParcelFileDescriptor;

.field final zzayR:Landroid/os/IBinder;

.field final zzug:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->zzayQ:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->zzayR:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/OnStartStreamSession;->zzug:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/drive/internal/zzbf;->zza(Lcom/google/android/gms/drive/internal/OnStartStreamSession;Landroid/os/Parcel;I)V

    return-void
.end method
