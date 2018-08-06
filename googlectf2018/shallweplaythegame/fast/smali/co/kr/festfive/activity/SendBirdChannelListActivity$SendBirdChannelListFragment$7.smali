.class Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$7;
.super Ljava/lang/Object;
.source "SendBirdChannelListActivity.java"

# interfaces
.implements Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->loadMoreChannels()V
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
    .line 307
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 316
    return-void
.end method

.method public onResult(Ljava/util/Collection;)V
    .locals 1
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
    .line 310
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/Channel;>;"
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->access$800(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->addAll(Ljava/util/Collection;)V

    .line 311
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$7;->this$0:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->access$800(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->notifyDataSetChanged()V

    .line 312
    return-void
.end method
