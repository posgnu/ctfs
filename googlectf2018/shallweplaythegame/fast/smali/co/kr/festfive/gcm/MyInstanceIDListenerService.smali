.class public Lco/kr/festfive/gcm/MyInstanceIDListenerService;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "MyInstanceIDListenerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cks4451 MyInstanceIDLS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/kr/festfive/gcm/RegistrationIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/gcm/MyInstanceIDListenerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    return-void
.end method
