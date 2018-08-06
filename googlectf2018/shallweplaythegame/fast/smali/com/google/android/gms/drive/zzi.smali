.class public Lcom/google/android/gms/drive/zzi;
.super Lcom/google/android/gms/drive/ExecutionOptions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/zzi$zza;
    }
.end annotation


# instance fields
.field private zzavA:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/drive/ExecutionOptions;-><init>(Ljava/lang/String;ZI)V

    iput-boolean p4, p0, Lcom/google/android/gms/drive/zzi;->zzavA:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZIZLcom/google/android/gms/drive/zzi$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/zzi;-><init>(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/drive/ExecutionOptions;)Lcom/google/android/gms/drive/zzi;
    .locals 2

    new-instance v1, Lcom/google/android/gms/drive/zzi$zza;

    invoke-direct {v1}, Lcom/google/android/gms/drive/zzi$zza;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzvM()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/drive/zzi$zza;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzi$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzvL()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/drive/zzi$zza;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzi$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/ExecutionOptions;->zzvK()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/drive/zzi$zza;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzi$zza;

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/drive/zzi$zza;->build()Lcom/google/android/gms/drive/ExecutionOptions;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/zzi;

    return-object v0
.end method


# virtual methods
.method public zzvR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/zzi;->zzavA:Z

    return v0
.end method
