.class Lcom/google/android/gms/tagmanager/zzcw$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzabt$zzc;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/zzt$zza;Lcom/google/android/gms/tagmanager/zzt$zza;Lcom/google/android/gms/tagmanager/zzai;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzm$zza",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/gms/tagmanager/zzcw$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbqM:Lcom/google/android/gms/tagmanager/zzcw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcw$2;->zzbqM:Lcom/google/android/gms/tagmanager/zzcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/android/gms/tagmanager/zzcw$zzb;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcw$2;->zza(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzcw$zzb;)I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzcw$zzb;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/zzcw$zzb;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
