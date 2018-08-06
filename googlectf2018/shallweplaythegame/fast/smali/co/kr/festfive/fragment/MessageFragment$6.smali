.class Lco/kr/festfive/fragment/MessageFragment$6;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment;->checkUser(Ljava/lang/String;)Z
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
    .line 528
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/sendbird/android/SendBirdException;)V
    .locals 3
    .param p1, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 559
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/SendBirdException;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/SendBirdException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 560
    return-void
.end method

.method public onResult(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sendbird/android/model/Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sendbird/android/model/Member;>;"
    const/4 v3, 0x1

    .line 531
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 534
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 536
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/Member;

    invoke-virtual {v1}, Lcom/sendbird/android/model/Member;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v2, v2, Lco/kr/festfive/fragment/MessageFragment;->userName:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v2, v1, Lco/kr/festfive/fragment/MessageFragment;->userName:Ljava/lang/String;

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->mMemberList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/Member;

    invoke-virtual {v1}, Lcom/sendbird/android/model/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 538
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v1, v3}, Lco/kr/festfive/fragment/MessageFragment;->access$802(Lco/kr/festfive/fragment/MessageFragment;Z)Z

    .line 543
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MessageFragment;->access$800(Lco/kr/festfive/fragment/MessageFragment;)Z

    move-result v1

    if-ne v1, v3, :cond_2

    .line 544
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v2, v2, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget v3, v3, Lco/kr/festfive/fragment/MessageFragment;->index:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MessageFragment;->access$900(Lco/kr/festfive/fragment/MessageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget v3, v3, Lco/kr/festfive/fragment/MessageFragment;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v1}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget v1, v1, Lco/kr/festfive/fragment/MessageFragment;->index:I

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v2, v2, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    .line 549
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget v2, v1, Lco/kr/festfive/fragment/MessageFragment;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lco/kr/festfive/fragment/MessageFragment;->index:I

    .line 550
    iget-object v2, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v1, v1, Lco/kr/festfive/fragment/MessageFragment;->mChannelList:Ljava/util/ArrayList;

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget v3, v3, Lco/kr/festfive/fragment/MessageFragment;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v1}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lco/kr/festfive/fragment/MessageFragment;->access$700(Lco/kr/festfive/fragment/MessageFragment;Ljava/lang/String;)Z

    .line 555
    :goto_1
    return-void

    .line 534
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 552
    :cond_4
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MessageFragment;->access$500(Lco/kr/festfive/fragment/MessageFragment;)V

    .line 553
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$6;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    const/4 v2, 0x0

    iput v2, v1, Lco/kr/festfive/fragment/MessageFragment;->index:I

    goto :goto_1
.end method
