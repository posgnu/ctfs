.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$2;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;

    .prologue
    .line 786
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$2;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 805
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 3
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
    .line 789
    .local p1, "messageModels":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessageModel;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 800
    :goto_0
    return-void

    .line 793
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/MessageModel;

    .line 794
    .local v0, "model":Lcom/sendbird/android/model/MessageModel;
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$2;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$1100(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    goto :goto_1

    .line 797
    .end local v0    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_1
    const-string v1, "cks4451"

    const-string v2, "setOnScrollListener12"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$2;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$1100(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
