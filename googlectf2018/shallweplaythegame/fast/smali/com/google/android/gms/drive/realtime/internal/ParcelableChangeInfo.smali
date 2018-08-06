.class public Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzajg:J

.field final zzqD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;->zzajg:J

    iput-object p4, p0, Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;->zzqD:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/zzp;->zza(Lcom/google/android/gms/drive/realtime/internal/ParcelableChangeInfo;Landroid/os/Parcel;I)V

    return-void
.end method
