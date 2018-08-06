.class public Lcom/sendbird/android/model/MessagingChannel$Member;
.super Ljava/lang/Object;
.source "MessagingChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/model/MessagingChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# instance fields
.field private guestId:Ljava/lang/String;

.field private id:J

.field private imageUrl:Ljava/lang/String;

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private lastReadMillis:J

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->id:J

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->name:Ljava/lang/String;

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->imageUrl:Ljava/lang/String;

    .line 244
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->guestId:Ljava/lang/String;

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->lastReadMillis:J

    .line 273
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/MessagingChannel$Member;
    .locals 6
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 249
    new-instance v0, Lcom/sendbird/android/model/MessagingChannel$Member;

    invoke-direct {v0}, Lcom/sendbird/android/model/MessagingChannel$Member;-><init>()V

    .line 251
    .local v0, "c":Lcom/sendbird/android/model/MessagingChannel$Member;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v2

    .line 252
    .local v2, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v2, v0, Lcom/sendbird/android/model/MessagingChannel$Member;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 253
    const-string v3, "id"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sendbird/android/model/MessagingChannel$Member;->id:J

    .line 254
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sendbird/android/model/MessagingChannel$Member;->name:Ljava/lang/String;

    .line 255
    const-string v3, "image"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sendbird/android/model/MessagingChannel$Member;->imageUrl:Ljava/lang/String;

    .line 256
    const-string v3, "guest_id"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "guest_id"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, v0, Lcom/sendbird/android/model/MessagingChannel$Member;->guestId:Ljava/lang/String;

    .line 262
    .end local v0    # "c":Lcom/sendbird/android/model/MessagingChannel$Member;
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_1
    return-object v0

    .line 256
    .restart local v0    # "c":Lcom/sendbird/android/model/MessagingChannel$Member;
    .restart local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_0
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v2    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->guestId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sendbird/android/model/MessagingChannel$Member;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
