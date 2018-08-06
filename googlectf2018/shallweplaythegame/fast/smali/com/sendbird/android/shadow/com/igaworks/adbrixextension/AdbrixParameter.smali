.class public Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter;
.super Ljava/lang/Object;
.source "AdbrixParameter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdInfo(Landroid/content/Context;Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;

    .prologue
    .line 22
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;

    invoke-direct {v2, p0, p1}, Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdbrixParameter$1;-><init>(Landroid/content/Context;Lcom/sendbird/android/shadow/com/igaworks/adbrixextension/AdInfoListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IGA_AdbrixParameter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error on getAdInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const-string v1, "persistantDemoForTracking"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17
    .local v0, "demoPref":Landroid/content/SharedPreferences;
    const-string v1, "userId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
