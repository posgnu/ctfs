.class Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

.field final synthetic val$item:Lcom/sendbird/android/model/User;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;Lcom/sendbird/android/model/User;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    .prologue
    .line 335
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->this$1:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    iput-object p2, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->val$item:Lcom/sendbird/android/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 339
    if-eqz p2, :cond_1

    .line 340
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->this$1:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$600(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->val$item:Lcom/sendbird/android/model/User;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->this$1:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$700(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->this$1:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$700(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->this$1:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$600(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;->onUserSelected(Ljava/util/HashSet;)V

    .line 348
    :cond_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->this$1:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;->this$0:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->access$600(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter$1;->val$item:Lcom/sendbird/android/model/User;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
