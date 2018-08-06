.class Lcom/sendbird/android/model/Mention$Sender;
.super Ljava/lang/Object;
.source "Mention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/model/Mention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sender"
.end annotation


# instance fields
.field private guestId:Ljava/lang/String;

.field private id:J

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sendbird/android/model/Mention$Sender;->id:J

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Mention$Sender;->name:Ljava/lang/String;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Mention$Sender;->imageUrl:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/Mention$Sender;->guestId:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Mention$Sender;
    .locals 6
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v2, Lcom/sendbird/android/model/Mention$Sender;

    invoke-direct {v2}, Lcom/sendbird/android/model/Mention$Sender;-><init>()V

    .line 115
    .local v2, "s":Lcom/sendbird/android/model/Mention$Sender;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v1

    .line 116
    .local v1, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sendbird/android/model/Mention$Sender;->id:J

    .line 117
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sendbird/android/model/Mention$Sender;->name:Ljava/lang/String;

    .line 118
    const-string v3, "image"

    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sendbird/android/model/Mention$Sender;->imageUrl:Ljava/lang/String;

    .line 119
    const-string v3, "guest_id"

    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "guest_id"

    invoke-virtual {v1, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lcom/sendbird/android/model/Mention$Sender;->guestId:Ljava/lang/String;

    .line 125
    return-object v2

    .line 119
    :cond_0
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v1    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    throw v0
.end method


# virtual methods
.method public getGuestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sendbird/android/model/Mention$Sender;->guestId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/sendbird/android/model/Mention$Sender;->id:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sendbird/android/model/Mention$Sender;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sendbird/android/model/Mention$Sender;->name:Ljava/lang/String;

    return-object v0
.end method
