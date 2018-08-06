.class Lcom/sendbird/android/ChannelMetaCounterQuery$3;
.super Ljava/lang/Object;
.source "ChannelMetaCounterQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/ChannelMetaCounterQuery;->set(Ljava/util/Map;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/ChannelMetaCounterQuery;

.field final synthetic val$handler:Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/ChannelMetaCounterQuery;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$3;->this$0:Lcom/sendbird/android/ChannelMetaCounterQuery;

    iput-object p2, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$3;->val$handler:Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 7
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 160
    iget-object v5, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$3;->this$0:Lcom/sendbird/android/ChannelMetaCounterQuery;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sendbird/android/ChannelMetaCounterQuery;->setLoading(Z)V

    .line 162
    iget-object v5, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$3;->val$handler:Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;

    if-nez v5, :cond_0

    .line 190
    :goto_0
    return-void

    .line 166
    :cond_0
    if-eqz p2, :cond_1

    .line 167
    iget-object v5, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$3;->this$0:Lcom/sendbird/android/ChannelMetaCounterQuery;

    invoke-static {v5}, Lcom/sendbird/android/ChannelMetaCounterQuery;->access$000(Lcom/sendbird/android/ChannelMetaCounterQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/ChannelMetaCounterQuery$3$1;

    invoke-direct {v6, p0, p2}, Lcom/sendbird/android/ChannelMetaCounterQuery$3$1;-><init>(Lcom/sendbird/android/ChannelMetaCounterQuery$3;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v4

    .line 177
    .local v4, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 178
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 181
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 184
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;>;"
    :cond_2
    iget-object v5, p0, Lcom/sendbird/android/ChannelMetaCounterQuery$3;->this$0:Lcom/sendbird/android/ChannelMetaCounterQuery;

    invoke-static {v5}, Lcom/sendbird/android/ChannelMetaCounterQuery;->access$000(Lcom/sendbird/android/ChannelMetaCounterQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/ChannelMetaCounterQuery$3$2;

    invoke-direct {v6, p0, v0}, Lcom/sendbird/android/ChannelMetaCounterQuery$3$2;-><init>(Lcom/sendbird/android/ChannelMetaCounterQuery$3;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
