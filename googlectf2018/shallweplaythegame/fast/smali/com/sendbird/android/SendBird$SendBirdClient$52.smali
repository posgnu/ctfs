.class Lcom/sendbird/android/SendBird$SendBirdClient$52;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->inviteMessaging(Ljava/lang/String;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$channelUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2946
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->val$channelUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 4
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2949
    if-eqz p2, :cond_1

    .line 2950
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 2951
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to invite: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2952
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2953
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v2, Lcom/sendbird/android/SendBird$SendBirdClient$52$1;

    invoke-direct {v2, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$52$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$52;)V

    invoke-virtual {v1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2982
    :cond_0
    :goto_0
    return-void

    .line 2965
    :cond_1
    invoke-static {p1}, Lcom/sendbird/android/model/MessagingChannel;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/MessagingChannel;

    move-result-object v0

    .line 2966
    .local v0, "channel":Lcom/sendbird/android/model/MessagingChannel;
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2967
    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$52;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v2, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;

    invoke-direct {v2, p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient$52$2;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$52;Lcom/sendbird/android/model/MessagingChannel;)V

    invoke-virtual {v1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method