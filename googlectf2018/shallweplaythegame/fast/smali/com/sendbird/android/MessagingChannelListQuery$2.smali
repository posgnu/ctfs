.class Lcom/sendbird/android/MessagingChannelListQuery$2;
.super Ljava/lang/Object;
.source "MessagingChannelListQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessagingChannelListQuery;->next(Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/MessagingChannelListQuery;

.field final synthetic val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessagingChannelListQuery;Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    iput-object p2, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->val$handler:Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 7
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 103
    iget-object v5, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    invoke-static {v5}, Lcom/sendbird/android/MessagingChannelListQuery;->access$000(Lcom/sendbird/android/MessagingChannelListQuery;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    iget-object v5, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sendbird/android/MessagingChannelListQuery;->setLoading(Z)V

    .line 154
    :goto_0
    return-void

    .line 108
    :cond_0
    if-eqz p2, :cond_1

    .line 109
    iget-object v5, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    invoke-static {v5}, Lcom/sendbird/android/MessagingChannelListQuery;->access$100(Lcom/sendbird/android/MessagingChannelListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/MessagingChannelListQuery$2$1;

    invoke-direct {v6, p0, p2}, Lcom/sendbird/android/MessagingChannelListQuery$2$1;-><init>(Lcom/sendbird/android/MessagingChannelListQuery$2;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v4

    .line 124
    .local v4, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iget-object v5, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    const-string v6, "token"

    invoke-virtual {v4, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sendbird/android/MessagingChannelListQuery;->access$202(Lcom/sendbird/android/MessagingChannelListQuery;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v5, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    const-string v6, "next"

    invoke-virtual {v4, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sendbird/android/MessagingChannelListQuery;->access$302(Lcom/sendbird/android/MessagingChannelListQuery;I)I

    .line 127
    const-string v5, "channels"

    invoke-virtual {v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v0

    .line 128
    .local v0, "channelObjs":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "channels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/MessagingChannel;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 131
    invoke-virtual {v0, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->get(I)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5}, Lcom/sendbird/android/model/MessagingChannel;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/MessagingChannel;

    move-result-object v3

    .line 132
    .local v3, "mchannel":Lcom/sendbird/android/model/MessagingChannel;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    .end local v3    # "mchannel":Lcom/sendbird/android/model/MessagingChannel;
    :cond_2
    new-instance v5, Lcom/sendbird/android/MessagingChannelListQuery$2$2;

    invoke-direct {v5, p0}, Lcom/sendbird/android/MessagingChannelListQuery$2$2;-><init>(Lcom/sendbird/android/MessagingChannelListQuery$2;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    iget-object v5, p0, Lcom/sendbird/android/MessagingChannelListQuery$2;->this$0:Lcom/sendbird/android/MessagingChannelListQuery;

    invoke-static {v5}, Lcom/sendbird/android/MessagingChannelListQuery;->access$100(Lcom/sendbird/android/MessagingChannelListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/MessagingChannelListQuery$2$3;

    invoke-direct {v6, p0, v1}, Lcom/sendbird/android/MessagingChannelListQuery$2$3;-><init>(Lcom/sendbird/android/MessagingChannelListQuery$2;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
