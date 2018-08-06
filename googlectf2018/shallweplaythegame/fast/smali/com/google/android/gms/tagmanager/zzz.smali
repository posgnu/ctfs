.class public Lcom/google/android/gms/tagmanager/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzas;


# static fields
.field private static final zzbnE:Ljava/lang/Object;

.field private static zzboR:Lcom/google/android/gms/tagmanager/zzz;


# instance fields
.field private zzboS:Lcom/google/android/gms/tagmanager/zzat;

.field private zzboh:Lcom/google/android/gms/tagmanager/zzck;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzbnE:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzau;->zzbo(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzau;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcz;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzcz;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/tagmanager/zzat;Lcom/google/android/gms/tagmanager/zzck;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzat;Lcom/google/android/gms/tagmanager/zzck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzz;->zzboS:Lcom/google/android/gms/tagmanager/zzat;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzz;->zzboh:Lcom/google/android/gms/tagmanager/zzck;

    return-void
.end method

.method public static zzbh(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzas;
    .locals 2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzz;->zzbnE:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzboR:Lcom/google/android/gms/tagmanager/zzz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzboR:Lcom/google/android/gms/tagmanager/zzz;

    :cond_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzz;->zzboR:Lcom/google/android/gms/tagmanager/zzz;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public zzgw(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzboh:Lcom/google/android/gms/tagmanager/zzck;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzck;->zznY()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzaW(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->zzboS:Lcom/google/android/gms/tagmanager/zzat;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzat;->zzgA(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
