.class public Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzayV:Z

.field final zzayh:I

.field final zzayi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbk;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbk;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->zzayh:I

    iput p3, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->zzayi:I

    iput-boolean p4, p0, Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;->zzayV:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzbk;->zza(Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;Landroid/os/Parcel;I)V

    return-void
.end method
