.class Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

.field final synthetic val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$3;Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    .prologue
    .line 472
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 498
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "messageModels":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessageModel;>;"
    invoke-static {}, Lcom/sendbird/android/SendBird;->markAsRead()V

    .line 476
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v2}, Lcom/sendbird/android/model/MessagingChannel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sendbird/android/SendBird;->join(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getMaxMessageTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sendbird/android/SendBird;->connect(J)V

    .line 479
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->val$messagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v2}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessage()Lcom/sendbird/android/model/MessageModel;

    move-result-object v0

    .line 480
    .local v0, "lastMessage":Lcom/sendbird/android/model/MessageModel;
    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v2

    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sendbird/android/model/MessageModel;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->setReadStatus(Ljava/lang/String;J)V

    .line 486
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/MessageModel;

    .line 487
    .local v1, "model":Lcom/sendbird/android/model/MessageModel;
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    iget-object v3, v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    goto :goto_1

    .line 490
    .end local v1    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_1
    const-string v2, "cks4451"

    const-string v3, "queryMessageList"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->notifyDataSetChanged()V

    .line 492
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$500(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    move-result-object v2

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
