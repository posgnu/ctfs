.class public Lcom/sendbird/android/model/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# instance fields
.field private coverUrl:Ljava/lang/String;

.field private created_at:J

.field private id:J

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private memberCount:I

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Channel;
    .locals 8
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 20
    new-instance v0, Lcom/sendbird/android/model/Channel;

    invoke-direct {v0}, Lcom/sendbird/android/model/Channel;-><init>()V

    .line 22
    .local v0, "c":Lcom/sendbird/android/model/Channel;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 23
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v2, v0, Lcom/sendbird/android/model/Channel;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 24
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sendbird/android/model/Channel;->id:J

    .line 25
    const-string v3, "member_count"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v3

    iput v3, v0, Lcom/sendbird/android/model/Channel;->memberCount:I

    .line 26
    const-string v3, "channel_url"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sendbird/android/model/Channel;->url:Ljava/lang/String;

    .line 27
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sendbird/android/model/Channel;->name:Ljava/lang/String;

    .line 28
    const-string v3, "created_at"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "created_at"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Lcom/sendbird/android/model/Channel;->created_at:J

    .line 29
    const-string v3, "cover_img_url"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sendbird/android/model/Channel;->coverUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v0    # "c":Lcom/sendbird/android/model/Channel;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_1
    return-object v0

    .line 28
    .restart local v0    # "c":Lcom/sendbird/android/model/Channel;
    .restart local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 31
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sendbird/android/model/Channel;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/sendbird/android/model/Channel;->created_at:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sendbird/android/model/Channel;->id:J

    return-wide v0
.end method

.method public getMemberCount()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/sendbird/android/model/Channel;->memberCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sendbird/android/model/Channel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sendbird/android/model/Channel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlWithoutAppPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "url":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_0

    .line 80
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v2

    .line 83
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/Channel;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sendbird/android/model/Channel;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
