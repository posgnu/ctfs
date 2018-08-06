.class Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$2;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->initUIComponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .prologue
    .line 241
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 249
    add-int v0, p2, p3

    int-to-float v1, p4

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$200(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 245
    return-void
.end method
