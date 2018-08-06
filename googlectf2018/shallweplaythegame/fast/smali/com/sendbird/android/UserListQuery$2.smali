.class Lcom/sendbird/android/UserListQuery$2;
.super Ljava/lang/Object;
.source "UserListQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/UserListQuery;->next(Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/UserListQuery;

.field final synthetic val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/UserListQuery;Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sendbird/android/UserListQuery$2;->this$0:Lcom/sendbird/android/UserListQuery;

    iput-object p2, p0, Lcom/sendbird/android/UserListQuery$2;->val$handler:Lcom/sendbird/android/UserListQuery$UserListQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 7
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 79
    if-eqz p2, :cond_0

    .line 80
    iget-object v5, p0, Lcom/sendbird/android/UserListQuery$2;->this$0:Lcom/sendbird/android/UserListQuery;

    invoke-static {v5}, Lcom/sendbird/android/UserListQuery;->access$000(Lcom/sendbird/android/UserListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/UserListQuery$2$1;

    invoke-direct {v6, p0, p2}, Lcom/sendbird/android/UserListQuery$2$1;-><init>(Lcom/sendbird/android/UserListQuery$2;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 115
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v1

    .line 95
    .local v1, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    iget-object v5, p0, Lcom/sendbird/android/UserListQuery$2;->this$0:Lcom/sendbird/android/UserListQuery;

    const-string v6, "token"

    invoke-virtual {v1, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sendbird/android/UserListQuery;->access$102(Lcom/sendbird/android/UserListQuery;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object v5, p0, Lcom/sendbird/android/UserListQuery$2;->this$0:Lcom/sendbird/android/UserListQuery;

    const-string v6, "next"

    invoke-virtual {v1, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sendbird/android/UserListQuery;->access$202(Lcom/sendbird/android/UserListQuery;I)I

    .line 98
    const-string v5, "users"

    invoke-virtual {v1, v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v3

    .line 99
    .local v3, "userObjs":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/User;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 102
    invoke-virtual {v3, v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->get(I)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5}, Lcom/sendbird/android/model/User;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/User;

    move-result-object v2

    .line 103
    .local v2, "user":Lcom/sendbird/android/model/User;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v2    # "user":Lcom/sendbird/android/model/User;
    :cond_1
    iget-object v5, p0, Lcom/sendbird/android/UserListQuery$2;->this$0:Lcom/sendbird/android/UserListQuery;

    invoke-static {v5}, Lcom/sendbird/android/UserListQuery;->access$000(Lcom/sendbird/android/UserListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v5

    new-instance v6, Lcom/sendbird/android/UserListQuery$2$2;

    invoke-direct {v6, p0, v4}, Lcom/sendbird/android/UserListQuery$2$2;-><init>(Lcom/sendbird/android/UserListQuery$2;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
