.class Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$2;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->initUIComponents(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->access$100(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->getItem(I)Lcom/sendbird/android/model/Channel;

    move-result-object v0

    .line 241
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->access$200(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$2;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->access$200(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;->onChannelSelected(Lcom/sendbird/android/model/Channel;)V

    .line 244
    :cond_0
    return-void
.end method
