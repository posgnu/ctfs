.class public Lcom/google/android/gms/drive/internal/OnPinnedDownloadPreferencesResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnPinnedDownloadPreferencesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzayP:Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/zzbc;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/zzbc;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnPinnedDownloadPreferencesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/internal/ParcelableTransferPreferences;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnPinnedDownloadPreferencesResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnPinnedDownloadPreferencesResponse;->zzayP:Lcom/google/android/gms/drive/internal/ParcelableTransferPreferences;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/zzbc;->zza(Lcom/google/android/gms/drive/internal/OnPinnedDownloadPreferencesResponse;Landroid/os/Parcel;I)V

    return-void
.end method
