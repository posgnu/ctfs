.class public Lcom/sendbird/android/model/BroadcastMessage;
.super Lcom/sendbird/android/model/MessageModel;
.source "BroadcastMessage.java"


# instance fields
.field private data:Ljava/lang/String;

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private message:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sendbird/android/model/MessageModel;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/BroadcastMessage;->message:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/BroadcastMessage;->data:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/BroadcastMessage;
    .locals 4
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p1, "present"    # Z

    .prologue
    .line 16
    new-instance v1, Lcom/sendbird/android/model/BroadcastMessage;

    invoke-direct {v1}, Lcom/sendbird/android/model/BroadcastMessage;-><init>()V

    .line 18
    .local v1, "m":Lcom/sendbird/android/model/BroadcastMessage;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 20
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lcom/sendbird/android/model/BroadcastMessage;->setPresent(Z)V

    .line 21
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/BroadcastMessage;->parseMessageId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 22
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/BroadcastMessage;->parseMessageTimestamp(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 24
    iput-object v2, v1, Lcom/sendbird/android/model/BroadcastMessage;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 25
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/BroadcastMessage;->message:Ljava/lang/String;

    .line 27
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
    iput-object v3, v1, Lcom/sendbird/android/model/BroadcastMessage;->data:Ljava/lang/String;

    .line 34
    .end local v1    # "m":Lcom/sendbird/android/model/BroadcastMessage;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_1
    return-object v1

    .line 27
    .restart local v1    # "m":Lcom/sendbird/android/model/BroadcastMessage;
    .restart local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_0
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sendbird/android/model/BroadcastMessage;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sendbird/android/model/BroadcastMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/BroadcastMessage;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sendbird/android/model/BroadcastMessage;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
