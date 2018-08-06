.class Lcom/sendbird/android/UserBlockList;
.super Ljava/lang/Object;
.source "UserBlockList.java"


# instance fields
.field private jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

.field private userBlockSet:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/UserBlockList;->userBlockSet:Ljava/util/Hashtable;

    .line 57
    return-void
.end method

.method public static build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/UserBlockList;
    .locals 15
    .param p0, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 18
    new-instance v5, Lcom/sendbird/android/UserBlockList;

    invoke-direct {v5}, Lcom/sendbird/android/UserBlockList;-><init>()V

    .line 20
    .local v5, "m":Lcom/sendbird/android/UserBlockList;
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "blocked_user_list"

    invoke-virtual {v10, v11}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 21
    :cond_0
    const/4 v5, 0x0

    .line 46
    .end local v5    # "m":Lcom/sendbird/android/UserBlockList;
    :cond_1
    :goto_0
    return-object v5

    .line 24
    .restart local v5    # "m":Lcom/sendbird/android/UserBlockList;
    :cond_2
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v6

    .line 25
    .local v6, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iput-object v6, v5, Lcom/sendbird/android/UserBlockList;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 27
    const-string v10, "blocked_user_list"

    invoke-virtual {v6, v10}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 34
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v7

    .line 37
    .local v7, "value":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v10, "start"

    invoke-virtual {v7, v10}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    .line 38
    .local v8, "start":J
    const-string v10, "end"

    invoke-virtual {v7, v10}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 39
    .local v2, "end":J
    iget-object v10, v5, Lcom/sendbird/android/UserBlockList;->userBlockSet:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    new-instance v12, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    .end local v2    # "end":J
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;>;"
    .end local v6    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v7    # "value":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v8    # "start":J
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isBlocked(JJ)Z
    .locals 7
    .param p1, "userId"    # J
    .param p3, "timestamp"    # J

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v1, p0, Lcom/sendbird/android/UserBlockList;->userBlockSet:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    move v1, v2

    .line 72
    :goto_0
    return v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/sendbird/android/UserBlockList;->userBlockSet:Ljava/util/Hashtable;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 66
    .local v0, "timeframe":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 67
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p3

    if-gtz v1, :cond_1

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, p3, v4

    if-gtz v1, :cond_1

    .line 68
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/sendbird/android/shadow/com/google/gson/Gson;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/com/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/UserBlockList;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/com/google/gson/Gson;->toJson(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sendbird/android/UserBlockList;->jsonObj:Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    return-object v0
.end method
