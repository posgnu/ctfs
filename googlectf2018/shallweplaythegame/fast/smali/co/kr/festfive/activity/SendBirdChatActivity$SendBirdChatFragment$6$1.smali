.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6$1;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;

    .prologue
    .line 601
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6$1;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 614
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
    .line 604
    .local p1, "messageModels":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessageModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/MessageModel;

    .line 605
    .local v0, "model":Lcom/sendbird/android/model/MessageModel;
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6$1;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$700(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    goto :goto_0

    .line 608
    .end local v0    # "model":Lcom/sendbird/android/model/MessageModel;
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6$1;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$700(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->notifyDataSetChanged()V

    .line 609
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6$1;->this$1:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$200(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 610
    return-void
.end method
