.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->initUIComponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .prologue
    .line 759
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 813
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/16 v4, 0x1e

    .line 762
    if-nez p2, :cond_0

    .line 763
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    .line 764
    invoke-static {}, Lcom/sendbird/android/SendBird;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$1100(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getMinMessageTimestamp()J

    move-result-wide v2

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$1;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;)V

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sendbird/android/MessageListQuery;->prev(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 786
    invoke-static {}, Lcom/sendbird/android/SendBird;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$1100(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getMaxMessageTimestamp()J

    move-result-wide v2

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7$2;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment$7;)V

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sendbird/android/MessageListQuery;->next(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    goto :goto_0
.end method
