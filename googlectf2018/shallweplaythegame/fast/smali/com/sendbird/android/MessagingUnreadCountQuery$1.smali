.class Lcom/sendbird/android/MessagingUnreadCountQuery$1;
.super Ljava/lang/Object;
.source "MessagingUnreadCountQuery.java"

# interfaces
.implements Lcom/sendbird/android/APIClient$APIClientEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/MessagingUnreadCountQuery;->get(Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/MessagingUnreadCountQuery;

.field final synthetic val$handler:Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;


# direct methods
.method constructor <init>(Lcom/sendbird/android/MessagingUnreadCountQuery;Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1;->this$0:Lcom/sendbird/android/MessagingUnreadCountQuery;

    iput-object p2, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1;->val$handler:Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Lcom/sendbird/android/SendBirdException;)V
    .locals 4
    .param p1, "response"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;
    .param p2, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 39
    if-eqz p2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1;->this$0:Lcom/sendbird/android/MessagingUnreadCountQuery;

    invoke-static {v2}, Lcom/sendbird/android/MessagingUnreadCountQuery;->access$000(Lcom/sendbird/android/MessagingUnreadCountQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v2

    new-instance v3, Lcom/sendbird/android/MessagingUnreadCountQuery$1$1;

    invoke-direct {v3, p0, p2}, Lcom/sendbird/android/MessagingUnreadCountQuery$1$1;-><init>(Lcom/sendbird/android/MessagingUnreadCountQuery$1;Lcom/sendbird/android/SendBirdException;)V

    invoke-virtual {v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v0

    .line 51
    .local v0, "result":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v2, "unread_message_count"

    invoke-virtual {v0, v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 53
    .local v1, "unreadMessageCount":I
    iget-object v2, p0, Lcom/sendbird/android/MessagingUnreadCountQuery$1;->this$0:Lcom/sendbird/android/MessagingUnreadCountQuery;

    invoke-static {v2}, Lcom/sendbird/android/MessagingUnreadCountQuery;->access$000(Lcom/sendbird/android/MessagingUnreadCountQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;

    move-result-object v2

    new-instance v3, Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;

    invoke-direct {v3, p0, v1}, Lcom/sendbird/android/MessagingUnreadCountQuery$1$2;-><init>(Lcom/sendbird/android/MessagingUnreadCountQuery$1;I)V

    invoke-virtual {v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
