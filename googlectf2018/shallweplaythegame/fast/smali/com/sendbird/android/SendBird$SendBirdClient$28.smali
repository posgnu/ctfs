.class Lcom/sendbird/android/SendBird$SendBirdClient$28;
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
    .line 2212
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iput-wide p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->val$maxMessageTimestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 8
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2215
    if-eqz p2, :cond_1

    .line 2216
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 2217
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to get channel info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2218
    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v4}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2219
    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v5, Lcom/sendbird/android/SendBird$SendBirdClient$28$1;

    invoke-direct {v5, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$28$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$28;)V

    invoke-virtual {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2240
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v1

    .line 2232
    .local v1, "channelJsonArray":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .line 2233
    .local v3, "jsonObj":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    invoke-static {v3}, Lcom/sendbird/android/model/Channel;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Channel;

    move-result-object v0

    .line 2234
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v4}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2235
    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v4}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3500(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    goto :goto_1

    .line 2238
    .end local v0    # "channel":Lcom/sendbird/android/model/Channel;
    .end local v3    # "jsonObj":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :cond_2
    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3302(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z

    .line 2239
    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-wide v6, p0, Lcom/sendbird/android/SendBird$SendBirdClient$28;->val$maxMessageTimestamp:J

    invoke-static {v4, v6, v7}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$200(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    goto :goto_0
.end method
