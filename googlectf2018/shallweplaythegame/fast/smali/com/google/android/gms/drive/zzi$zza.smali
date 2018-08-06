.class public Lcom/google/android/gms/drive/zzi$zza;
.super Lcom/google/android/gms/drive/ExecutionOptions$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzavA:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/drive/zzi$zza;->zzavA:Z

    return-void
.end method


# virtual methods
.method public synthetic build()Lcom/google/android/gms/drive/ExecutionOptions;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzi$zza;->zzvS()Lcom/google/android/gms/drive/zzi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzi$zza;->zzcO(I)Lcom/google/android/gms/drive/zzi$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzi$zza;->zzal(Z)Lcom/google/android/gms/drive/zzi$zza;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/zzi$zza;->zzdz(Ljava/lang/String;)Lcom/google/android/gms/drive/zzi$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzal(Z)Lcom/google/android/gms/drive/zzi$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setNotifyOnCompletion(Z)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzcO(I)Lcom/google/android/gms/drive/zzi$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setConflictStrategy(I)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzdz(Ljava/lang/String;)Lcom/google/android/gms/drive/zzi$zza;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/drive/ExecutionOptions$Builder;->setTrackingTag(Ljava/lang/String;)Lcom/google/android/gms/drive/ExecutionOptions$Builder;

    return-object p0
.end method

.method public zzvS()Lcom/google/android/gms/drive/zzi;
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zzi$zza;->zzvN()V

    new-instance v0, Lcom/google/android/gms/drive/zzi;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzi$zza;->zzavv:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzi$zza;->zzavw:Z

    iget v3, p0, Lcom/google/android/gms/drive/zzi$zza;->zzavx:I

    iget-boolean v4, p0, Lcom/google/android/gms/drive/zzi$zza;->zzavA:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/zzi;-><init>(Ljava/lang/String;ZIZLcom/google/android/gms/drive/zzi$1;)V

    return-object v0
.end method
