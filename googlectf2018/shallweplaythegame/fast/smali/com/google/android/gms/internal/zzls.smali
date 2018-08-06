.class public final Lcom/google/android/gms/internal/zzls;
.super Lcom/google/android/gms/analytics/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzls;",
        ">;"
    }
.end annotation


# instance fields
.field public zzGy:I

.field public zzGz:I

.field private zzVp:Ljava/lang/String;

.field public zzVq:I

.field public zzVr:I

.field public zzVs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzVp:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzls;->zzVp:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzls;->zzVp:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzls;->zzVq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzls;->zzGy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzls;->zzGz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzls;->zzVr:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzls;->zzVs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzls;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzls;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVq:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVq:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzls;->zzan(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzGy:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzGy:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzls;->zzao(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzGz:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzGz:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzls;->zzap(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVr:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVr:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzls;->zzaq(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVs:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVs:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzls;->zzar(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzVp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzls;->zzVp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzls;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public zzan(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzVq:I

    return-void
.end method

.method public zzao(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzGy:I

    return-void
.end method

.method public zzap(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzGz:I

    return-void
.end method

.method public zzaq(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzVr:I

    return-void
.end method

.method public zzar(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzls;->zzVs:I

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzg;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzls;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzls;->zza(Lcom/google/android/gms/internal/zzls;)V

    return-void
.end method

.method public zzlg()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVq:I

    return v0
.end method

.method public zzlh()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzGy:I

    return v0
.end method

.method public zzli()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzGz:I

    return v0
.end method

.method public zzlj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVr:I

    return v0
.end method

.method public zzlk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzls;->zzVs:I

    return v0
.end method
