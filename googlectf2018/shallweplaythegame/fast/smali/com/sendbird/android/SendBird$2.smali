.class final Lcom/sendbird/android/SendBird$2;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird;->connectForUnity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 277
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "messageModels":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessageModel;>;"
    const-wide/high16 v2, -0x8000000000000000L

    .line 255
    .local v2, "maxTimeStamp":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/MessageModel;

    .line 257
    .local v1, "model":Lcom/sendbird/android/model/MessageModel;
    invoke-virtual {v1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 258
    invoke-virtual {v1}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v2

    .line 261
    :cond_0
    instance-of v4, v1, Lcom/sendbird/android/model/Message;

    if-eqz v4, :cond_2

    .line 262
    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_OnMessageReceived"

    check-cast v1, Lcom/sendbird/android/model/Message;

    .end local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    invoke-virtual {v1}, Lcom/sendbird/android/model/Message;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .restart local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_2
    instance-of v4, v1, Lcom/sendbird/android/model/SystemMessage;

    if-eqz v4, :cond_3

    .line 264
    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_OnSystemMessageReceived"

    check-cast v1, Lcom/sendbird/android/model/SystemMessage;

    .end local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    invoke-virtual {v1}, Lcom/sendbird/android/model/SystemMessage;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .restart local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_3
    instance-of v4, v1, Lcom/sendbird/android/model/BroadcastMessage;

    if-eqz v4, :cond_4

    .line 266
    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_OnBroadcastMessageReceived"

    check-cast v1, Lcom/sendbird/android/model/BroadcastMessage;

    .end local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    invoke-virtual {v1}, Lcom/sendbird/android/model/BroadcastMessage;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 267
    .restart local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_4
    instance-of v4, v1, Lcom/sendbird/android/model/FileLink;

    if-eqz v4, :cond_1

    .line 268
    invoke-static {}, Lcom/sendbird/android/SendBird;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_OnFileReceived"

    check-cast v1, Lcom/sendbird/android/model/FileLink;

    .end local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    invoke-virtual {v1}, Lcom/sendbird/android/model/FileLink;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_5
    invoke-static {v2, v3}, Lcom/sendbird/android/SendBird;->connect(J)V

    .line 272
    return-void
.end method
