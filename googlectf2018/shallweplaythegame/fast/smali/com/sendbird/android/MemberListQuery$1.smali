.class Lcom/sendbird/android/MemberListQuery$1;
.super Ljava/lang/Object;
.source "MemberListQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MemberListQuery;->get(Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/MemberListQuery;

.field final synthetic val$handler:Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MemberListQuery;Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sendbird/android/MemberListQuery$1;->this$0:Lcom/sendbird/android/MemberListQuery;

    iput-object p2, p0, Lcom/sendbird/android/MemberListQuery$1;->val$handler:Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 6
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 52
    if-eqz p2, :cond_0

    .line 53
    iget-object v4, p0, Lcom/sendbird/android/MemberListQuery$1;->this$0:Lcom/sendbird/android/MemberListQuery;

    invoke-static {v4}, Lcom/sendbird/android/MemberListQuery;->access$000(Lcom/sendbird/android/MemberListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v4

    new-instance v5, Lcom/sendbird/android/MemberListQuery$1$1;

    invoke-direct {v5, p0, p2}, Lcom/sendbird/android/MemberListQuery$1$1;-><init>(Lcom/sendbird/android/MemberListQuery$1;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v3

    .line 65
    .local v3, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "members"

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonArray()Lcom/sendbird/android/shadow/com/google/gson/JsonArray;

    move-result-object v1

    .line 66
    .local v1, "memberObjs":Lcom/sendbird/android/shadow/com/google/gson/JsonArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/Member;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 68
    invoke-virtual {v1, v0}, Lcom/sendbird/android/shadow/com/google/gson/JsonArray;->get(I)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-static {v4}, Lcom/sendbird/android/model/Member;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Member;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 71
    :cond_1
    iget-object v4, p0, Lcom/sendbird/android/MemberListQuery$1;->this$0:Lcom/sendbird/android/MemberListQuery;

    invoke-static {v4}, Lcom/sendbird/android/MemberListQuery;->access$000(Lcom/sendbird/android/MemberListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v4

    new-instance v5, Lcom/sendbird/android/MemberListQuery$1$2;

    invoke-direct {v5, p0, v2}, Lcom/sendbird/android/MemberListQuery$1$2;-><init>(Lcom/sendbird/android/MemberListQuery$1;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
