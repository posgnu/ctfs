.class Lcom/sendbird/android/MessageListQuery$3;
.super Ljava/lang/Object;
.source "MessageListQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessageListQuery;->load(JIILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/MessageListQuery;

.field final synthetic val$handler:Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessageListQuery;Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sendbird/android/MessageListQuery$3;->this$0:Lcom/sendbird/android/MessageListQuery;

    iput-object p2, p0, Lcom/sendbird/android/MessageListQuery$3;->val$handler:Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 7
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 133
    if-eqz p2, :cond_0

    .line 134
    iget-object v5, p0, Lcom/sendbird/android/MessageListQuery$3;->this$0:Lcom/sendbird/android/MessageListQuery;

    invoke-static {v5}, Lcom/sendbird/android/MessageListQuery;->access$000(Lcom/sendbird/android/MessageListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/MessageListQuery$3$1;

    invoke-direct {v6, p0, p2}, Lcom/sendbird/android/MessageListQuery$3$1;-><init>(Lcom/sendbird/android/MessageListQuery$3;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 163
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v4

    .line 146
    .local v4, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v5, "messages"

    invoke-virtual {v4, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v3

    .line 147
    .local v3, "objs":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/MessageModel;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 150
    invoke-virtual {v3, v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->get(I)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sendbird/android/model/MessageModel;->parse(Ljava/lang/String;Z)Lcom/sendbird/android/model/MessageModel;

    move-result-object v2

    .line 151
    .local v2, "model":Lcom/sendbird/android/model/MessageModel;
    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    .end local v2    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_2
    iget-object v5, p0, Lcom/sendbird/android/MessageListQuery$3;->this$0:Lcom/sendbird/android/MessageListQuery;

    invoke-static {v5}, Lcom/sendbird/android/MessageListQuery;->access$000(Lcom/sendbird/android/MessageListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/MessageListQuery$3$2;

    invoke-direct {v6, p0, v1}, Lcom/sendbird/android/MessageListQuery$3$2;-><init>(Lcom/sendbird/android/MessageListQuery$3;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
