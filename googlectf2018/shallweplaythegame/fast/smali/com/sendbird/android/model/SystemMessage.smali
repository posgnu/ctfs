.class public Lcom/sendbird/android/model/SystemMessage;
.super Lcom/sendbird/android/model/MessageModel;
.source "SystemMessage.java"


# static fields
.field public static final CATEGORY_CHANNEL_INVITE:I = 0x2776

.field public static final CATEGORY_CHANNEL_JOIN:I = 0x2774

.field public static final CATEGORY_CHANNEL_LEAVE:I = 0x2775

.field public static final CATEGORY_MESSAGING_USER_BLOCKED:I = 0x283c

.field public static final CATEGORY_MESSAGING_USER_DEACTIVATED:I = 0x28a0

.field public static final CATEGORY_NONE:I = 0x0

.field public static final CATEGORY_TOO_MANY_MESSAGES:I = 0x27d8


# instance fields
.field private category:I

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private message:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sendbird/android/model/MessageModel;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/SystemMessage;->message:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/SystemMessage;
    .locals 4
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p1, "present"    # Z

    .prologue
    .line 46
    new-instance v1, Lcom/sendbird/android/model/SystemMessage;

    invoke-direct {v1}, Lcom/sendbird/android/model/SystemMessage;-><init>()V

    .line 48
    .local v1, "m":Lcom/sendbird/android/model/SystemMessage;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 50
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-virtual {v1, p1}, Lcom/sendbird/android/model/SystemMessage;->setPresent(Z)V

    .line 51
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/SystemMessage;->parseMessageId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 52
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/SystemMessage;->parseMessageTimestamp(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 53
    invoke-virtual {v1, v2}, Lcom/sendbird/android/model/SystemMessage;->parseChannelId(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    .line 55
    iput-object v2, v1, Lcom/sendbird/android/model/SystemMessage;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 56
    const-string v3, "message"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/sendbird/android/model/SystemMessage;->message:Ljava/lang/String;

    .line 57
    const-string v3, "cat"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "cat"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v3

    :goto_0
    iput v3, v1, Lcom/sendbird/android/model/SystemMessage;->category:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "m":Lcom/sendbird/android/model/SystemMessage;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_1
    return-object v1

    .line 57
    .restart local v1    # "m":Lcom/sendbird/android/model/SystemMessage;
    .restart local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 59
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sendbird/android/model/SystemMessage;->category:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sendbird/android/model/SystemMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sendbird/android/model/SystemMessage;->message:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/SystemMessage;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sendbird/android/model/SystemMessage;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
