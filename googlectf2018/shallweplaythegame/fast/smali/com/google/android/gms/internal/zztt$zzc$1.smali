.class Lcom/google/android/gms/internal/zztt$zzc$1;
.super Lcom/google/android/gms/internal/zztt$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zztt$zzc;->zza(Lcom/google/android/gms/internal/zzts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbmZ:Lcom/google/android/gms/internal/zztt$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zztt$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zztt$zzc$1;->zzbmZ:Lcom/google/android/gms/internal/zztt$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zztt$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztt$zzc$1;->zzbmZ:Lcom/google/android/gms/internal/zztt$zzc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zztt$zzc;->zza(Lcom/google/android/gms/internal/zztt$zzc;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "GetGoogleNowAuthImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zztt$zzc$1;->zzbmZ:Lcom/google/android/gms/internal/zztt$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zztt$zzd;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zztt$zzd;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztt$zzc;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
