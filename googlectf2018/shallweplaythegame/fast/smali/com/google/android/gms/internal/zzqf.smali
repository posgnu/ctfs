.class public Lcom/google/android/gms/internal/zzqf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzqf$zze;,
        Lcom/google/android/gms/internal/zzqf$zzf;,
        Lcom/google/android/gms/internal/zzqf$zzc;,
        Lcom/google/android/gms/internal/zzqf$zzd;,
        Lcom/google/android/gms/internal/zzqf$zzb;,
        Lcom/google/android/gms/internal/zzqf$zza;
    }
.end annotation


# static fields
.field public static final zzaAn:Lcom/google/android/gms/internal/zzqf$zza;

.field public static final zzaAo:Lcom/google/android/gms/internal/zzqf$zzb;

.field public static final zzaAp:Lcom/google/android/gms/internal/zzqf$zzd;

.field public static final zzaAq:Lcom/google/android/gms/internal/zzqf$zzc;

.field public static final zzaAr:Lcom/google/android/gms/internal/zzqf$zzf;

.field public static final zzaAs:Lcom/google/android/gms/internal/zzqf$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzqf$zza;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzqf$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->zzaAn:Lcom/google/android/gms/internal/zzqf$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzqf$zzb;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzqf$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->zzaAo:Lcom/google/android/gms/internal/zzqf$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzqf$zzd;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzqf$zzd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->zzaAp:Lcom/google/android/gms/internal/zzqf$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzqf$zzc;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzqf$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->zzaAq:Lcom/google/android/gms/internal/zzqf$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzqf$zzf;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzqf$zzf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->zzaAr:Lcom/google/android/gms/internal/zzqf$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzqf$zze;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzqf$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzqf;->zzaAs:Lcom/google/android/gms/internal/zzqf$zze;

    return-void
.end method
