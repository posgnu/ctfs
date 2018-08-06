.class Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$1;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"

# interfaces
.implements Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 214
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$1;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 225
    return-void
.end method

.method public onResult(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/Channel;>;"
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$1;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->access$000(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->addAll(Ljava/util/Collection;)V

    .line 218
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 219
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$1;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "No channels were found."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 221
    :cond_0
    return-void
.end method
