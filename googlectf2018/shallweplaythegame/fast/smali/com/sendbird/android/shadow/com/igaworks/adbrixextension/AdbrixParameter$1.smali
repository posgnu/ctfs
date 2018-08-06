.class Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;
.super Ljava/lang/Object;
.source "AdbrixParameter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter;->getAdInfo(Landroid/content/Context;Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$listener:Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;->val$listener:Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    iget-object v2, p0, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/igaworks/core/DeviceIDManger;->getInstance(Landroid/content/Context;)Lcom/igaworks/core/DeviceIDManger;

    move-result-object v1

    .line 28
    .local v1, "didManager":Lcom/igaworks/core/DeviceIDManger;
    iget-object v2, p0, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/igaworks/core/DeviceIDManger;->getAndroidADID(Landroid/content/Context;Lcom/igaworks/core/AdvertisingIdClient$ADIDCallbackListener;)Lcom/igaworks/core/AdvertisingIdClient$AdInfo;

    move-result-object v0

    .line 29
    .local v0, "adidInfo":Lcom/igaworks/core/AdvertisingIdClient$AdInfo;
    if-eqz v0, :cond_0

    .line 30
    iget-object v2, p0, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;->val$listener:Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;

    invoke-virtual {v0}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/igaworks/core/AdvertisingIdClient$AdInfo;->isLimitAdTrackingEnabled()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;->onGetAdInfo(Ljava/lang/String;Z)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;->val$listener:Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;

    const/4 v3, 0x1

    invoke-interface {v2, v4, v3}, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;->onGetAdInfo(Ljava/lang/String;Z)V

    goto :goto_0
.end method
