.class Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->initUIComponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .prologue
    .line 596
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

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
    .line 622
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 599
    if-nez p2, :cond_0

    .line 600
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-static {}, Lcom/sendbird/android/SendBird;->getChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$700(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getMinMessageTimestamp()J

    move-result-wide v2

    const/16 v1, 0x1e

    new-instance v4, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6$1;

    invoke-direct {v4, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6$1;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment$6;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/sendbird/android/MessageListQuery;->prev(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    .line 618
    :cond_0
    return-void
.end method
