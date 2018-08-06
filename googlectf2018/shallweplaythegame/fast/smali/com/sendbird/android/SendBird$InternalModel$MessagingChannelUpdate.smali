.class public Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
.super Ljava/lang/Object;
.source "SendBird.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/SendBird$InternalModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingChannelUpdate"
.end annotation


# instance fields
.field private channelId:J

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private messageUpdate:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 3479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    .locals 6
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 3457
    new-instance v1, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;

    invoke-direct {v1}, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;-><init>()V

    .line 3459
    .local v1, "m":Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 3460
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v2, v1, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 3461
    const-string v3, "channel_id"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->channelId:J

    .line 3462
    const-string v3, "message_update"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    iput-boolean v3, v1, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->messageUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3468
    .end local v1    # "m":Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_0
    return-object v1

    .line 3463
    .restart local v1    # "m":Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    :catch_0
    move-exception v0

    .line 3464
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3465
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    .prologue
    .line 3482
    iget-wide v0, p0, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->channelId:J

    return-wide v0
.end method

.method public isMessageUpdate()Z
    .locals 1

    .prologue
    .line 3486
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->messageUpdate:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3472
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
