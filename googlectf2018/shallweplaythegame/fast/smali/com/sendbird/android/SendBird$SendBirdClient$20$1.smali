.class Lcom/sendbird/android/SendBird$SendBirdClient$20$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient$20;->onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/SendBird$SendBirdClient$20;

.field final synthetic val$e:Lcom/sendbird/android/SendBirdException;

.field final synthetic val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient$20;Lcom/sendbird/android/SendBirdException;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$20;

    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->val$e:Lcom/sendbird/android/SendBirdException;

    iput-object p3, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1965
    iget-object v7, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->val$e:Lcom/sendbird/android/SendBirdException;

    if-eqz v7, :cond_0

    .line 1966
    iget-object v7, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$20;

    iget-object v7, v7, Lcom/sendbird/android/SendBird$SendBirdClient$20;->val$handler:Lcom/sendbird/android/handler/UserExistenceHandler;

    iget-object v8, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->val$e:Lcom/sendbird/android/SendBirdException;

    invoke-interface {v7, v8}, Lcom/sendbird/android/handler/UserExistenceHandler;->onError(Lcom/sendbird/android/SendBirdException;)V

    .line 1986
    :goto_0
    return-void

    .line 1968
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1969
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sendbird/android/model/User;>;"
    iget-object v7, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1970
    iget-object v7, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->val$response:Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v3

    .line 1971
    .local v3, "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1972
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1973
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .line 1974
    .local v6, "value":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    const/4 v5, 0x0

    .line 1976
    .local v5, "user":Lcom/sendbird/android/model/User;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1977
    invoke-static {v6}, Lcom/sendbird/android/model/User;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/User;

    move-result-object v5

    .line 1980
    :cond_1
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1984
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "obj":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    .end local v5    # "user":Lcom/sendbird/android/model/User;
    .end local v6    # "value":Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    :cond_2
    iget-object v7, p0, Lcom/sendbird/android/SendBird$SendBirdClient$20$1;->this$1:Lcom/sendbird/android/SendBird$SendBirdClient$20;

    iget-object v7, v7, Lcom/sendbird/android/SendBird$SendBirdClient$20;->val$handler:Lcom/sendbird/android/handler/UserExistenceHandler;

    invoke-interface {v7, v4}, Lcom/sendbird/android/handler/UserExistenceHandler;->onSuccess(Ljava/util/Map;)V

    goto :goto_0
.end method
