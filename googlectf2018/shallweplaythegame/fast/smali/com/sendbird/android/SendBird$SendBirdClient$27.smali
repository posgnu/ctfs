.class Lcom/sendbird/android/SendBird$SendBirdClient$27;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->connect(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

.field final synthetic val$maxMessageTimestamp:J


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;J)V
    .locals 0

    .prologue
    .line 2185
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-wide p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->val$maxMessageTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 4
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2188
    if-eqz p2, :cond_1

    .line 2189
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 2190
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to get channel info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2191
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2192
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$27$1;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$27$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$27;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2204
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {p1}, Lcom/sendbird/android/model/Channel;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Channel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3202(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/Channel;)Lcom/sendbird/android/model/Channel;

    .line 2205
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3302(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z

    .line 2206
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-wide v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$27;->val$maxMessageTimestamp:J

    invoke-static {v0, v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$200(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    goto :goto_0
.end method
