.class public Lcom/sendbird/android/model/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private guestId:Ljava/lang/String;

.field private id:J

.field private imageUrl:Ljava/lang/String;

.field private isMuted:Z

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private lastSeenAt:J

.field private name:Ljava/lang/String;

.field private online:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sendbird/android/model/User;->id:J

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/User;->name:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/User;->imageUrl:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/User;->guestId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/User;
    .locals 6
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/sendbird/android/model/User;

    invoke-direct {v0}, Lcom/sendbird/android/model/User;-><init>()V

    .line 23
    .local v0, "c":Lcom/sendbird/android/model/User;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 24
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v2, v0, Lcom/sendbird/android/model/User;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 25
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sendbird/android/model/User;->id:J

    .line 26
    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sendbird/android/model/User;->name:Ljava/lang/String;

    .line 27
    const-string v4, "picture"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sendbird/android/model/User;->imageUrl:Ljava/lang/String;

    .line 28
    const-string v4, "guest_id"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "guest_id"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lcom/sendbird/android/model/User;->guestId:Ljava/lang/String;

    .line 29
    const-string v4, "is_online"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "is_online"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v4

    :goto_1
    iput-boolean v4, v0, Lcom/sendbird/android/model/User;->online:Z

    .line 30
    const-string v4, "is_muted"

    invoke-virtual {v2, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "is_muted"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    :cond_0
    iput-boolean v3, v0, Lcom/sendbird/android/model/User;->isMuted:Z

    .line 31
    const-string v3, "last_seen_at"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    const-string v3, "last_seen_at"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 33
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/sendbird/android/model/User;->lastSeenAt:J

    .line 43
    .end local v0    # "c":Lcom/sendbird/android/model/User;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_1
    :goto_2
    return-object v0

    .line 28
    .restart local v0    # "c":Lcom/sendbird/android/model/User;
    .restart local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_2
    const-string v4, ""

    goto :goto_0

    :cond_3
    move v4, v3

    .line 29
    goto :goto_1

    .line 35
    :cond_4
    const-string v3, "last_seen_at"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sendbird/android/model/User;->lastSeenAt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 38
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sendbird/android/model/User;->guestId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sendbird/android/model/User;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSeenAt()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/sendbird/android/model/User;->lastSeenAt:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sendbird/android/model/User;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/sendbird/android/model/User;->isMuted:Z

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sendbird/android/model/User;->online:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/User;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sendbird/android/model/User;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
