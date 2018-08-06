.class public Lcom/google/android/gms/analytics/internal/zzk;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field private final zzUD:Lcom/google/android/gms/internal/zzln;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    new-instance v0, Lcom/google/android/gms/internal/zzln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzln;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzUD:Lcom/google/android/gms/internal/zzln;

    return-void
.end method


# virtual methods
.method protected zzkO()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzlT()Lcom/google/android/gms/analytics/zzi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzi;->zzkL()Lcom/google/android/gms/internal/zzln;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzUD:Lcom/google/android/gms/internal/zzln;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzln;->zza(Lcom/google/android/gms/internal/zzln;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzks()V

    return-void
.end method

.method public zzks()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzkx()Lcom/google/android/gms/analytics/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzkU()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzUD:Lcom/google/android/gms/internal/zzln;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzln;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzap;->zzkV()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzUD:Lcom/google/android/gms/internal/zzln;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzln;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public zzmx()Lcom/google/android/gms/internal/zzln;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzk;->zzma()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzk;->zzUD:Lcom/google/android/gms/internal/zzln;

    return-object v0
.end method
