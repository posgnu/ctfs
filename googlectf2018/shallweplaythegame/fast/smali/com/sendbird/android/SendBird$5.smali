.class final Lcom/sendbird/android/SendBird$5;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird;->nextChannelListForUnity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1375
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1376
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": QueryChannelList - OnError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1378
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_OnError"

    const/16 v2, 0x32c8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    return-void
.end method

.method public onResult(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1358
    .local p1, "queryResult":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/Channel;>;"
    sget-boolean v4, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1359
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": QueryChannelList"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1361
    :cond_0
    new-instance v3, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;-><init>()V

    .line 1362
    .local v3, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    new-instance v1, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;-><init>()V

    .line 1363
    .local v1, "channels":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/Channel;

    .line 1364
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    new-instance v4, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->toJson()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->add(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 1367
    .end local v0    # "channel":Lcom/sendbird/android/model/Channel;
    :cond_1
    const-string v4, "has_next"

    invoke-static {}, Lcom/sendbird/android/SendBird;->access$2100()Lcom/sendbird/android/ChannelListQuery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/ChannelListQuery;->hasNext()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1368
    const-string v4, "channels"

    invoke-virtual {v3, v4, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 1370
    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_OnQueryChannelList"

    new-instance v6, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v6}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v3}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-void
.end method
