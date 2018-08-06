.class Lcom/sendbird/android/ChannelListQuery$1;
.super Ljava/lang/Object;
.source "ChannelListQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/ChannelListQuery;

.field final synthetic val$handler:Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/ChannelListQuery;Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sendbird/android/ChannelListQuery$1;->this$0:Lcom/sendbird/android/ChannelListQuery;

    iput-object p2, p0, Lcom/sendbird/android/ChannelListQuery$1;->val$handler:Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 6
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 105
    if-eqz p2, :cond_0

    .line 106
    iget-object v4, p0, Lcom/sendbird/android/ChannelListQuery$1;->this$0:Lcom/sendbird/android/ChannelListQuery;

    invoke-static {v4}, Lcom/sendbird/android/ChannelListQuery;->access$000(Lcom/sendbird/android/ChannelListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v4

    new-instance v5, Lcom/sendbird/android/ChannelListQuery$1$1;

    invoke-direct {v5, p0, p2}, Lcom/sendbird/android/ChannelListQuery$1$1;-><init>(Lcom/sendbird/android/ChannelListQuery$1;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v3

    .line 118
    .local v3, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iget-object v4, p0, Lcom/sendbird/android/ChannelListQuery$1;->this$0:Lcom/sendbird/android/ChannelListQuery;

    const-string v5, "page"

    invoke-virtual {v3, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sendbird/android/ChannelListQuery;->access$102(Lcom/sendbird/android/ChannelListQuery;I)I

    .line 119
    iget-object v4, p0, Lcom/sendbird/android/ChannelListQuery$1;->this$0:Lcom/sendbird/android/ChannelListQuery;

    const-string v5, "next"

    invoke-virtual {v3, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sendbird/android/ChannelListQuery;->access$202(Lcom/sendbird/android/ChannelListQuery;I)I

    .line 121
    const-string v4, "channels"

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v0

    .line 122
    .local v0, "channelObjs":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/Channel;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 124
    invoke-virtual {v0, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->get(I)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-static {v4}, Lcom/sendbird/android/model/Channel;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Channel;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/sendbird/android/ChannelListQuery$1;->this$0:Lcom/sendbird/android/ChannelListQuery;

    invoke-static {v4}, Lcom/sendbird/android/ChannelListQuery;->access$000(Lcom/sendbird/android/ChannelListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v4

    new-instance v5, Lcom/sendbird/android/ChannelListQuery$1$2;

    invoke-direct {v5, p0, v1}, Lcom/sendbird/android/ChannelListQuery$1$2;-><init>(Lcom/sendbird/android/ChannelListQuery$1;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
