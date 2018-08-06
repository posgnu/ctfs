.class Lcom/google/android/gms/tagmanager/zzcu$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcu;->zzb(Lcom/google/android/gms/internal/zzabr$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqy:Lcom/google/android/gms/tagmanager/zzcu;

.field final synthetic zzbqz:Lcom/google/android/gms/internal/zzabr$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcu;Lcom/google/android/gms/internal/zzabr$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcu$2;->zzbqy:Lcom/google/android/gms/tagmanager/zzcu;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcu$2;->zzbqz:Lcom/google/android/gms/internal/zzabr$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcu$2;->zzbqy:Lcom/google/android/gms/tagmanager/zzcu;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcu$2;->zzbqz:Lcom/google/android/gms/internal/zzabr$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcu;->zzc(Lcom/google/android/gms/internal/zzabr$zza;)Z

    return-void
.end method
