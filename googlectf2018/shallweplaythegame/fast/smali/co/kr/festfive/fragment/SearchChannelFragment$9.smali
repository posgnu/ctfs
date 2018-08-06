.class Lco/kr/festfive/fragment/SearchChannelFragment$9;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"

# interfaces
.implements Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SearchChannelFragment;->getMetaData(Lcom/sendbird/android/model/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

.field final synthetic val$mItemList:Lcom/sendbird/android/model/Channel;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchChannelFragment;Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 572
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    iput-object p2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->val$mItemList:Lcom/sendbird/android/model/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 588
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "channelMetaDataQuery onError"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 589
    return-void
.end method

.method public onResult(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "description"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 577
    .local v7, "description":Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 578
    .local v8, "name":Ljava/lang/String;
    const-string v0, "message"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 580
    .local v9, "message":Ljava/lang/String;
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$500(Lco/kr/festfive/fragment/SearchChannelFragment;)Lco/kr/festfive/adapter/SearchChannelAdapter;

    move-result-object v0

    new-instance v1, Lco/kr/festfive/model/SearchChannelListItem;

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->val$mItemList:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v2}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->val$mItemList:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v4}, Lcom/sendbird/android/model/Channel;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->val$mItemList:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v5}, Lcom/sendbird/android/model/Channel;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->val$mItemList:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v6}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->val$mItemList:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v10}, Lcom/sendbird/android/model/Channel;->getMemberCount()I

    move-result v10

    invoke-direct/range {v1 .. v10}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/SearchChannelAdapter;->add(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$900(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$9;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$500(Lco/kr/festfive/fragment/SearchChannelFragment;)Lco/kr/festfive/adapter/SearchChannelAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 584
    return-void
.end method
