.class public Lcom/sendbird/android/model/Message;
.super Lcom/sendbird/android/model/MessageModel;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/model/Message$Sender;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private isGuestMessage:Z

.field private isOpMessage:Z

.field private isSoftMuted:Z

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private message:Ljava/lang/String;

.field private sender:Lcom/sendbird/android/model/Message$Sender;

.field private tempId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sendbird/android/model/MessageModel;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Message;->message:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Message;->data:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Message;
    .locals 1
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sendbird/android/model/Message;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/Message;
    .locals 4
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p1, "present"    # Z

    .prologue
    .line 25
    new-instance v1, Lcom/sendbird/android/model/Message;

    invoke-direct {v1}, Lcom/sendbird/android/model/Message;-><init>()V

    .line 27
    .local v1, "m":Lcom/sendbird/android/model/Message;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 29
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lcom/sendbird/android/model/Message;->setPresent(Z)V

    .line 30
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/Message;->parseMessageId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 31
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/Message;->parseMessageTimestamp(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 32
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/Message;->parseChannelId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 34
    iput-object v2, v1, Lcom/sendbird/android/model/Message;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 35
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/Message;->message:Ljava/lang/String;

    .line 36
    const-string v3, "is_op_msg"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    iput-boolean v3, v1, Lcom/sendbird/android/model/Message;->isOpMessage:Z

    .line 37
    const-string v3, "is_guest_msg"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    iput-boolean v3, v1, Lcom/sendbird/android/model/Message;->isGuestMessage:Z

    .line 38
    const-string v3, "user"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/sendbird/android/model/Message$Sender;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Message$Sender;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    .line 39
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v1, Lcom/sendbird/android/model/Message;->data:Ljava/lang/String;

    .line 40
    const-string v3, "tid"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "tid"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v1, Lcom/sendbird/android/model/Message;->tempId:Ljava/lang/String;

    .line 41
    const-string v3, "is_soft_muted"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "is_soft_muted"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    :goto_2
    iput-boolean v3, v1, Lcom/sendbird/android/model/Message;->isSoftMuted:Z

    .line 47
    .end local v1    # "m":Lcom/sendbird/android/model/Message;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_3
    return-object v1

    .line 39
    .restart local v1    # "m":Lcom/sendbird/android/model/Message;
    .restart local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 40
    :cond_1
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 42
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v1, 0x0

    goto :goto_3
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    if-nez v0, :cond_0

    .line 135
    const-string v0, ""

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Message$Sender;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSenderImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    if-nez v0, :cond_0

    .line 124
    const-string v0, ""

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Message$Sender;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    if-nez v0, :cond_0

    .line 113
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Message$Sender;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTempId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->tempId:Ljava/lang/String;

    return-object v0
.end method

.method public hasSameSender(Lcom/sendbird/android/model/Message;)Z
    .locals 4
    .param p1, "msg"    # Lcom/sendbird/android/model/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Message$Sender;->getId()J

    move-result-wide v0

    iget-object v2, p1, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    invoke-virtual {v2}, Lcom/sendbird/android/model/Message$Sender;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->sender:Lcom/sendbird/android/model/Message$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Message$Sender;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sendbird/android/SendBird;->isUserBlocked(JJ)Z

    move-result v0

    return v0
.end method

.method public isOpMessage()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/sendbird/android/model/Message;->isOpMessage:Z

    return v0
.end method

.method public isSoftMuted()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/sendbird/android/model/Message;->isSoftMuted:Z

    return v0
.end method

.method public mergeWith(Lcom/sendbird/android/model/Message;)V
    .locals 2
    .param p1, "mergee"    # Lcom/sendbird/android/model/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/Message;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/model/Message;->message:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/Message;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sendbird/android/model/Message;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
