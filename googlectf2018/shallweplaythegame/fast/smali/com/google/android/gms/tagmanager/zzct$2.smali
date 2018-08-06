.class Lcom/google/android/gms/tagmanager/zzct$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzct$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzct;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;Lcom/google/android/gms/tagmanager/zzct$zzb;Lcom/google/android/gms/tagmanager/zzct$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqw:Lcom/google/android/gms/tagmanager/zzct;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzct;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzct$2;->zzbqw:Lcom/google/android/gms/tagmanager/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/tagmanager/zzs;)Lcom/google/android/gms/tagmanager/zzcs;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzct$2;->zzbqw:Lcom/google/android/gms/tagmanager/zzct;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzct;->zza(Lcom/google/android/gms/tagmanager/zzct;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzct$2;->zzbqw:Lcom/google/android/gms/tagmanager/zzct;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzct;->zzb(Lcom/google/android/gms/tagmanager/zzct;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/zzcs;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;)V

    return-object v0
.end method
