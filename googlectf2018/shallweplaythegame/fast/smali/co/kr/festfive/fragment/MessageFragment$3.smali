.class Lco/kr/festfive/fragment/MessageFragment$3;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment;->addAdapterList()V
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
    .line 228
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 258
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessageModel;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    .line 234
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Lcom/sendbird/android/model/Message;

    if-eqz v1, :cond_0

    .line 236
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sendbird/android/model/Message;

    .line 237
    .local v11, "message":Lcom/sendbird/android/model/Message;
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v11}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/kr/festfive/fragment/MessageFragment;->access$102(Lco/kr/festfive/fragment/MessageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v11}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lco/kr/festfive/fragment/MessageFragment;->access$202(Lco/kr/festfive/fragment/MessageFragment;J)J

    .line 231
    .end local v11    # "message":Lcom/sendbird/android/model/Message;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sendbird/android/model/FileLink;

    .line 241
    .local v12, "messageModel":Lcom/sendbird/android/model/FileLink;
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    const-string v2, "image"

    invoke-static {v1, v2}, Lco/kr/festfive/fragment/MessageFragment;->access$102(Lco/kr/festfive/fragment/MessageFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v12}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lco/kr/festfive/fragment/MessageFragment;->access$202(Lco/kr/festfive/fragment/MessageFragment;J)J

    goto :goto_1

    .line 251
    .end local v0    # "item":Ljava/lang/Object;
    .end local v12    # "messageModel":Lcom/sendbird/android/model/FileLink;
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v13

    new-instance v1, Lco/kr/festfive/model/ChannelListItem;

    iget-object v2, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v2, v2, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    iget-object v3, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$300(Lco/kr/festfive/fragment/MessageFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v2}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[\ucc44\ub110] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v4, v4, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    iget-object v6, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/MessageFragment;->access$300(Lco/kr/festfive/fragment/MessageFragment;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v4}, Lcom/sendbird/android/model/Channel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v5, v5, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    iget-object v6, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/MessageFragment;->access$300(Lco/kr/festfive/fragment/MessageFragment;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v5}, Lcom/sendbird/android/model/Channel;->getCoverUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v6}, Lco/kr/festfive/fragment/MessageFragment;->access$100(Lco/kr/festfive/fragment/MessageFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v7}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v8}, Lco/kr/festfive/fragment/MessageFragment;->access$200(Lco/kr/festfive/fragment/MessageFragment;)J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lco/kr/festfive/fragment/MessageFragment;->access$400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v8, v8, Lco/kr/festfive/fragment/MessageFragment;->channel:Ljava/util/ArrayList;

    iget-object v9, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v9}, Lco/kr/festfive/fragment/MessageFragment;->access$300(Lco/kr/festfive/fragment/MessageFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sendbird/android/model/Channel;

    invoke-virtual {v8}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v9}, Lco/kr/festfive/model/ChannelListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v13, v1}, Lco/kr/festfive/adapter/ChannelListAdapter;->add(Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MessageFragment;->access$308(Lco/kr/festfive/fragment/MessageFragment;)I

    .line 253
    iget-object v1, p0, Lco/kr/festfive/fragment/MessageFragment$3;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/MessageFragment;->access$500(Lco/kr/festfive/fragment/MessageFragment;)V

    .line 254
    return-void
.end method
