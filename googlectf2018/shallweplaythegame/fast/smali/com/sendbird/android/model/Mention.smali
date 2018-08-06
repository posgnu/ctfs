.class public Lcom/sendbird/android/model/Mention;
.super Ljava/lang/Object;
.source "Mention.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/model/Mention$Sender;
    }
.end annotation


# instance fields
.field private channelType:Ljava/lang/String;

.field private channelUrl:Ljava/lang/String;

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private message:Ljava/lang/String;

.field private sender:Lcom/sendbird/android/model/Mention$Sender;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Mention;->channelUrl:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Mention;->channelType:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Mention;->message:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Mention;
    .locals 1
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sendbird/android/model/Mention;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/Mention;

    move-result-object v0

    return-object v0
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/Mention;
    .locals 4
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p1, "present"    # Z

    .prologue
    .line 22
    new-instance v1, Lcom/sendbird/android/model/Mention;

    invoke-direct {v1}, Lcom/sendbird/android/model/Mention;-><init>()V

    .line 24
    .local v1, "m":Lcom/sendbird/android/model/Mention;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 26
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v2, v1, Lcom/sendbird/android/model/Mention;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 27
    const-string v3, "channel_url"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/Mention;->channelUrl:Ljava/lang/String;

    .line 28
    const-string v3, "channel_type"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/Mention;->channelType:Ljava/lang/String;

    .line 29
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/Mention;->message:Ljava/lang/String;

    .line 30
    const-string v3, "user"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/sendbird/android/model/Mention$Sender;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Mention$Sender;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/Mention;->sender:Lcom/sendbird/android/model/Mention$Sender;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "m":Lcom/sendbird/android/model/Mention;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_0
    return-object v1

    .line 31
    .restart local v1    # "m":Lcom/sendbird/android/model/Mention;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChannelType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->channelType:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->sender:Lcom/sendbird/android/model/Mention$Sender;

    if-nez v0, :cond_0

    .line 101
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->sender:Lcom/sendbird/android/model/Mention$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Mention$Sender;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSenderImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->sender:Lcom/sendbird/android/model/Mention$Sender;

    if-nez v0, :cond_0

    .line 90
    const-string v0, ""

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->sender:Lcom/sendbird/android/model/Mention$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Mention$Sender;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->sender:Lcom/sendbird/android/model/Mention$Sender;

    if-nez v0, :cond_0

    .line 79
    const-string v0, ""

    .line 81
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->sender:Lcom/sendbird/android/model/Mention$Sender;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Mention$Sender;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/Mention;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sendbird/android/model/Mention;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
