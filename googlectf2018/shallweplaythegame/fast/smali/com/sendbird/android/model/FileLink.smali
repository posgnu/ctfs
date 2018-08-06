.class public Lcom/sendbird/android/model/FileLink;
.super Lcom/sendbird/android/model/MessageModel;
.source "FileLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/model/FileLink$Sender;
    }
.end annotation


# instance fields
.field private fileInfo:Lcom/sendbird/android/model/FileInfo;

.field private isGuestMessage:Z

.field private isOpMessage:Z

.field private isSoftMuted:Z

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private sender:Lcom/sendbird/android/model/FileLink$Sender;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sendbird/android/model/MessageModel;-><init>()V

    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/FileLink;
    .locals 9
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p1, "present"    # Z

    .prologue
    .line 20
    new-instance v2, Lcom/sendbird/android/model/FileLink;

    invoke-direct {v2}, Lcom/sendbird/android/model/FileLink;-><init>()V

    .line 22
    .local v2, "m":Lcom/sendbird/android/model/FileLink;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v4

    .line 23
    .local v4, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-virtual {v2, p1}, Lcom/sendbird/android/model/FileLink;->setPresent(Z)V

    .line 24
    invoke-virtual {v2, v4}, Lcom/sendbird/android/model/FileLink;->parseMessageId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 25
    invoke-virtual {v2, v4}, Lcom/sendbird/android/model/FileLink;->parseMessageTimestamp(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 26
    invoke-virtual {v2, v4}, Lcom/sendbird/android/model/FileLink;->parseChannelId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 28
    iput-object v4, v2, Lcom/sendbird/android/model/FileLink;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 29
    const-string v8, "user"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-static {v8}, Lcom/sendbird/android/model/FileLink$Sender;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/FileLink$Sender;

    move-result-object v8

    iput-object v8, v2, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    .line 30
    const-string v8, "is_op_msg"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v8

    iput-boolean v8, v2, Lcom/sendbird/android/model/FileLink;->isOpMessage:Z

    .line 31
    const-string v8, "is_guest_msg"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v8

    iput-boolean v8, v2, Lcom/sendbird/android/model/FileLink;->isGuestMessage:Z

    .line 32
    const-string v8, "is_soft_muted"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "is_soft_muted"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v8

    :goto_0
    iput-boolean v8, v2, Lcom/sendbird/android/model/FileLink;->isSoftMuted:Z

    .line 34
    const-string v8, "url"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "url":Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "name"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "name":Ljava/lang/String;
    :goto_1
    const-string v8, "size"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v5

    .line 37
    .local v5, "size":I
    const-string v8, "type"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, "type":Ljava/lang/String;
    const-string v8, "custom"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "custom":Ljava/lang/String;
    invoke-static {v7, v3, v6, v5, v0}, Lcom/sendbird/android/model/FileInfo;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sendbird/android/model/FileInfo;

    move-result-object v8

    iput-object v8, v2, Lcom/sendbird/android/model/FileLink;->fileInfo:Lcom/sendbird/android/model/FileInfo;

    .line 46
    .end local v0    # "custom":Ljava/lang/String;
    .end local v2    # "m":Lcom/sendbird/android/model/FileLink;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v5    # "size":I
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 32
    .restart local v2    # "m":Lcom/sendbird/android/model/FileLink;
    .restart local v4    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 35
    .restart local v7    # "url":Ljava/lang/String;
    :cond_1
    const-string v3, "File"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    .end local v4    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v7    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getFileInfo()Lcom/sendbird/android/model/FileInfo;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->fileInfo:Lcom/sendbird/android/model/FileInfo;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    if-nez v0, :cond_0

    .line 78
    const-string v0, ""

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/FileLink$Sender;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSenderImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    if-nez v0, :cond_0

    .line 100
    const-string v0, ""

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/FileLink$Sender;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    if-nez v0, :cond_0

    .line 89
    const-string v0, ""

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/FileLink$Sender;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->sender:Lcom/sendbird/android/model/FileLink$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/FileLink$Sender;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

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
    .line 61
    iget-boolean v0, p0, Lcom/sendbird/android/model/FileLink;->isOpMessage:Z

    return v0
.end method

.method public isSoftMuted()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sendbird/android/model/FileLink;->isSoftMuted:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/FileLink;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sendbird/android/model/FileLink;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
