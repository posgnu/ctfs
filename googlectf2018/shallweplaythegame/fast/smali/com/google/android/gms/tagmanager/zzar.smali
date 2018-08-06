.class Lcom/google/android/gms/tagmanager/zzar;
.super Ljava/lang/Object;


# instance fields
.field private final zzYC:J

.field private final zzbpi:J

.field private final zzbpj:J

.field private zzbpk:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzar;->zzbpi:J

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzar;->zzYC:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzar;->zzbpj:J

    return-void
.end method


# virtual methods
.method zzJQ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzar;->zzbpi:J

    return-wide v0
.end method

.method zzJR()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzar;->zzbpj:J

    return-wide v0
.end method

.method zzJS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzar;->zzbpk:Ljava/lang/String;

    return-object v0
.end method

.method zzgz(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzar;->zzbpk:Ljava/lang/String;

    goto :goto_0
.end method
