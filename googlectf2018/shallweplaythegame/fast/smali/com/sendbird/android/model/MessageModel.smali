.class public abstract Lcom/sendbird/android/model/MessageModel;
.super Ljava/lang/Object;
.source "MessageModel.java"


# instance fields
.field protected channelId:J

.field protected messageId:J

.field protected messageTimestamp:J

.field protected present:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/model/MessageModel;->present:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;Z)Lcom/sendbird/android/model/MessageModel;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "present"    # Z

    .prologue
    .line 83
    sget-boolean v1, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 84
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/sendbird/android/Command;->parse(Ljava/lang/String;)Lcom/sendbird/android/Command;

    move-result-object v0

    .line 89
    .local v0, "cmd":Lcom/sendbird/android/Command;
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MESG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sendbird/android/model/Message;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/Message;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SYSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sendbird/android/model/SystemMessage;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/SystemMessage;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sendbird/android/model/FileLink;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/FileLink;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BRDM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v0}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sendbird/android/model/BroadcastMessage;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/BroadcastMessage;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/sendbird/android/model/MessageModel;->channelId:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/sendbird/android/model/MessageModel;->messageId:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sendbird/android/model/MessageModel;->messageTimestamp:J

    return-wide v0
.end method

.method public hasMessageId()Z
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/sendbird/android/model/MessageModel;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPast()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/sendbird/android/model/MessageModel;->present:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sendbird/android/model/MessageModel;->present:Z

    return v0
.end method

.method protected parseChannelId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 2
    .param p1, "json"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "channel_id"

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sendbird/android/model/MessageModel;->channelId:J

    .line 76
    :cond_0
    return-void
.end method

.method protected parseMessageId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 2
    .param p1, "json"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "msg_id"

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "msg_id"

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sendbird/android/model/MessageModel;->messageId:J

    .line 64
    :cond_0
    return-void
.end method

.method protected parseMessageTimestamp(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 2
    .param p1, "json"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "ts"

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "ts"

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sendbird/android/model/MessageModel;->messageTimestamp:J

    .line 70
    :cond_0
    return-void
.end method

.method public setPresent(Z)V
    .locals 0
    .param p1, "tf"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/sendbird/android/model/MessageModel;->present:Z

    .line 18
    return-void
.end method
