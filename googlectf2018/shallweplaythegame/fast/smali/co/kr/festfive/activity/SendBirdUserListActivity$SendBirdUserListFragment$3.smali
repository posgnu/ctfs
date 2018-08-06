.class Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$3;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"

# interfaces
.implements Lcom/sendbird/android/UserListQuery$UserListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->loadMoreUsers()V
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
    .line 259
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/sendbird/android/SendBirdException;)V
    .locals 0
    .param p1, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 268
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/User;>;"
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$300(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->addAll(Ljava/util/Collection;)V

    .line 263
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$3;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$300(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->notifyDataSetChanged()V

    .line 264
    return-void
.end method
