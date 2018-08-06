.class public Lcom/sendbird/android/model/ReadStatus;
.super Ljava/lang/Object;
.source "ReadStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/model/ReadStatus$User;
    }
.end annotation


# instance fields
.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private timestamp:J

.field private user:Lcom/sendbird/android/model/ReadStatus$User;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/ReadStatus;
    .locals 6
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 16
    new-instance v1, Lcom/sendbird/android/model/ReadStatus;

    invoke-direct {v1}, Lcom/sendbird/android/model/ReadStatus;-><init>()V

    .line 18
    .local v1, "m":Lcom/sendbird/android/model/ReadStatus;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 19
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v2, v1, Lcom/sendbird/android/model/ReadStatus;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 20
    const-string v3, "user"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-static {v3}, Lcom/sendbird/android/model/ReadStatus$User;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/ReadStatus$User;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/ReadStatus;->user:Lcom/sendbird/android/model/ReadStatus$User;

    .line 21
    const-string v3, "ts"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/sendbird/android/model/ReadStatus;->timestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "m":Lcom/sendbird/android/model/ReadStatus;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_0
    return-object v1

    .line 22
    .restart local v1    # "m":Lcom/sendbird/android/model/ReadStatus;
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTimestamp()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/sendbird/android/model/ReadStatus;->timestamp:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sendbird/android/model/ReadStatus;->user:Lcom/sendbird/android/model/ReadStatus$User;

    if-nez v0, :cond_0

    .line 55
    const-string v0, ""

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/model/ReadStatus;->user:Lcom/sendbird/android/model/ReadStatus$User;

    invoke-virtual {v0}, Lcom/sendbird/android/model/ReadStatus$User;->getGuestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/ReadStatus;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sendbird/android/model/ReadStatus;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
