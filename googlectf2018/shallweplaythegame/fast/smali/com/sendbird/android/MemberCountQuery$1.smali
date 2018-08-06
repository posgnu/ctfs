.class Lcom/sendbird/android/MemberCountQuery$1;
.super Ljava/lang/Object;
.source "MemberCountQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MemberCountQuery;->get(Lcom/sendbird/android/MemberCountQuery$MemberCountQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/MemberCountQuery;

.field final synthetic val$handler:Lcom/sendbird/android/MemberCountQuery$MemberCountQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MemberCountQuery;Lcom/sendbird/android/MemberCountQuery$MemberCountQueryResult;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sendbird/android/MemberCountQuery$1;->this$0:Lcom/sendbird/android/MemberCountQuery;

    iput-object p2, p0, Lcom/sendbird/android/MemberCountQuery$1;->val$handler:Lcom/sendbird/android/MemberCountQuery$MemberCountQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 6
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 41
    if-eqz p2, :cond_0

    .line 42
    iget-object v4, p0, Lcom/sendbird/android/MemberCountQuery$1;->this$0:Lcom/sendbird/android/MemberCountQuery;

    invoke-static {v4}, Lcom/sendbird/android/MemberCountQuery;->access$000(Lcom/sendbird/android/MemberCountQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v4

    new-instance v5, Lcom/sendbird/android/MemberCountQuery$1$1;

    invoke-direct {v5, p0, p2}, Lcom/sendbird/android/MemberCountQuery$1$1;-><init>(Lcom/sendbird/android/MemberCountQuery$1;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v3

    .line 53
    .local v3, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v4, "member_count"

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 54
    .local v1, "memberCount":I
    const-string v4, "online_member_count"

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v2

    .line 55
    .local v2, "onlineMemberCount":I
    const-string v4, "accumulated_member_count"

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v0

    .line 57
    .local v0, "accumulatedMemberCount":I
    iget-object v4, p0, Lcom/sendbird/android/MemberCountQuery$1;->this$0:Lcom/sendbird/android/MemberCountQuery;

    invoke-static {v4}, Lcom/sendbird/android/MemberCountQuery;->access$000(Lcom/sendbird/android/MemberCountQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v4

    new-instance v5, Lcom/sendbird/android/MemberCountQuery$1$2;

    invoke-direct {v5, p0, v1, v2, v0}, Lcom/sendbird/android/MemberCountQuery$1$2;-><init>(Lcom/sendbird/android/MemberCountQuery$1;III)V

    invoke-virtual {v4, v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
