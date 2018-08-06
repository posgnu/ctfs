.class Lco/kr/festfive/fragment/MessageFragment$5;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment;->channelList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/MessageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/MessageFragment;

    .prologue
    .line 417
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$5;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 430
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
    .line 420
    .local p1, "channels":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/Channel;>;"
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$5;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v0, v0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$5;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v0, v0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$5;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$5;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v0, v0, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lco/kr/festfive/fragment/MessageFragment;->access$700(Lco/kr/festfive/fragment/MessageFragment;Ljava/lang/String;)Z

    .line 426
    :cond_0
    return-void
.end method
