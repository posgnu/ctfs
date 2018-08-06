.class Lcom/sendbird/android/SendBird$SendBirdClient$56;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->endAllMessaging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0

    .prologue
    .line 3055
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$56;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 3058
    if-eqz p2, :cond_1

    .line 3059
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 3060
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to end messaging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3061
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$56;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3062
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$56;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$56$1;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$56$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$56;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3084
    :cond_0
    :goto_0
    return-void

    .line 3074
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$56;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3075
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$56;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$56$2;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$56$2;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$56;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
