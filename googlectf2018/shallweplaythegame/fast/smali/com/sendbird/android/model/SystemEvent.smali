.class public Lcom/sendbird/android/model/SystemEvent;
.super Ljava/lang/Object;
.source "SystemEvent.java"


# static fields
.field public static final CATEGORY_CHANNEL_JOIN:I = 0x2774

.field public static final CATEGORY_CHANNEL_LEAVE:I = 0x2775

.field public static final CATEGORY_NONE:I = 0x0

.field public static final CATEGORY_USER_CHANNEL_MUTE:I = 0x27d9


# instance fields
.field private category:I

.field private channelId:J

.field private data:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sendbird/android/shadow/com/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field

.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/SystemEvent;
    .locals 10
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    const/4 v6, 0x0

    .line 38
    new-instance v4, Lcom/sendbird/android/model/SystemEvent;

    invoke-direct {v4}, Lcom/sendbird/android/model/SystemEvent;-><init>()V

    .line 40
    .local v4, "m":Lcom/sendbird/android/model/SystemEvent;
    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v5

    .line 42
    .local v5, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v5, v4, Lcom/sendbird/android/model/SystemEvent;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 43
    const-string v7, "cat"

    invoke-virtual {v5, v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "cat"

    invoke-virtual {v5, v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v7

    :goto_0
    iput v7, v4, Lcom/sendbird/android/model/SystemEvent;->category:I

    .line 45
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, v4, Lcom/sendbird/android/model/SystemEvent;->data:Ljava/util/Hashtable;

    .line 46
    const-string v7, "data"

    invoke-virtual {v5, v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "data"

    invoke-virtual {v5, v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 47
    .local v0, "data":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :goto_1
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 49
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    iget-object v7, v4, Lcom/sendbird/android/model/SystemEvent;->data:Ljava/util/Hashtable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 55
    .end local v0    # "data":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v6

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "m":Lcom/sendbird/android/model/SystemEvent;
    :goto_3
    return-object v4

    .line 43
    .restart local v4    # "m":Lcom/sendbird/android/model/SystemEvent;
    .restart local v5    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 46
    goto :goto_1

    .line 53
    .restart local v0    # "data":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    :cond_2
    :try_start_1
    const-string v7, "channel_id"

    invoke-virtual {v5, v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "channel_id"

    invoke-virtual {v5, v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    :goto_4
    iput-wide v8, v4, Lcom/sendbird/android/model/SystemEvent;->channelId:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_4
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/sendbird/android/model/SystemEvent;->category:I

    return v0
.end method

.method public getChannelId()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/sendbird/android/model/SystemEvent;->channelId:J

    return-wide v0
.end method

.method public getDataAsBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/model/SystemEvent;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsBoolean()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataAsInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/model/SystemEvent;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataAsLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/model/SystemEvent;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 96
    :goto_0
    return-wide v2

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getDataAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/model/SystemEvent;->data:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/model/SystemEvent;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sendbird/android/model/SystemEvent;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
