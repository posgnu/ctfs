.class Lco/kr/festfive/fragment/SearchChannelFragment$8;
.super Ljava/lang/Object;
.source "SearchChannelFragment.java"

# interfaces
.implements Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SearchChannelFragment;->getChatList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchChannelFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 545
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment$8;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 558
    return-void
.end method

.method public onResult(Ljava/util/Collection;)V
    .locals 4
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
    .line 548
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/Channel;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v1, "mItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/Channel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 552
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment$8;->this$0:Lco/kr/festfive/fragment/SearchChannelFragment;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sendbird/android/model/Channel;

    invoke-static {v3, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->access$1100(Lco/kr/festfive/fragment/SearchChannelFragment;Lcom/sendbird/android/model/Channel;)V

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    :cond_0
    return-void
.end method
