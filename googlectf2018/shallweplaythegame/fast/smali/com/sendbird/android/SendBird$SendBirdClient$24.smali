.class Lcom/sendbird/android/SendBird$SendBirdClient$24;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->leave(Ljava/util/ArrayList;)V
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
    .line 2076
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$24;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 8
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 2079
    if-eqz p2, :cond_1

    .line 2080
    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 2081
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to leave: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2083
    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$24;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2084
    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$24;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v6, Lcom/sendbird/android/SendBird$SendBirdClient$24$1;

    invoke-direct {v6, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$24$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$24;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2096
    :cond_1
    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$24;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2097
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v1

    .line 2098
    .local v1, "channelJsonArray":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2099
    .local v2, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/Channel;>;"
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .line 2100
    .local v4, "jsonObj":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    invoke-static {v4}, Lcom/sendbird/android/model/Channel;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Channel;

    move-result-object v0

    .line 2101
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2104
    .end local v0    # "channel":Lcom/sendbird/android/model/Channel;
    .end local v4    # "jsonObj":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :cond_2
    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient$24;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v6, Lcom/sendbird/android/SendBird$SendBirdClient$24$2;

    invoke-direct {v6, p0, v2}, Lcom/sendbird/android/SendBird$SendBirdClient$24$2;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient$24;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
