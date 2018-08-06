.class Lco/kr/festfive/fragment/MessageFragment$4;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/MessageFragment;->userChat()V
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
    .line 298
    iput-object p1, p0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "No channels were found."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 402
    return-void
.end method

.method public onResult(Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_8

    .line 303
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_8

    .line 317
    const/16 v23, 0x0

    .line 318
    .local v23, "message":Lcom/sendbird/android/model/Message;
    const/16 v24, 0x0

    .line 319
    .local v24, "messageModel":Lcom/sendbird/android/model/MessageModel;
    const-string v8, ""

    .line 320
    .local v8, "last":Ljava/lang/String;
    const-string v6, ""

    .line 321
    .local v6, "senderName":Ljava/lang/String;
    const-string v25, ""

    .line 322
    .local v25, "name":Ljava/lang/String;
    const/16 v19, 0x0

    .line 324
    .local v19, "fileLink":Lcom/sendbird/android/model/FileLink;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getMembers()Ljava/util/List;

    move-result-object v22

    .line 325
    .local v22, "members":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel$Member;>;"
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 326
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel$Member;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel$Member;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v4, v4, Lco/kr/festfive/fragment/MessageFragment;->userName:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    iget-object v4, v3, Lco/kr/festfive/fragment/MessageFragment;->userName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel$Member;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel$Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :cond_1
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel$Member;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel$Member;->getName()Ljava/lang/String;

    move-result-object v6

    .line 335
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessage()Lcom/sendbird/android/model/MessageModel;

    move-result-object v21

    .line 336
    .local v21, "item":Lcom/sendbird/android/model/MessageModel;
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->hasLastMessage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    move-object/from16 v0, v21

    instance-of v3, v0, Lcom/sendbird/android/model/Message;

    if-eqz v3, :cond_5

    .line 338
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessage()Lcom/sendbird/android/model/MessageModel;

    move-result-object v23

    .end local v23    # "message":Lcom/sendbird/android/model/Message;
    check-cast v23, Lcom/sendbird/android/model/Message;

    .line 339
    .restart local v23    # "message":Lcom/sendbird/android/model/Message;
    invoke-virtual/range {v23 .. v23}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 340
    invoke-virtual/range {v23 .. v23}, Lcom/sendbird/android/model/Message;->getSenderName()Ljava/lang/String;

    move-result-object v25

    .line 364
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Messaging Channel"

    if-eq v3, v4, :cond_4

    const-string v4, "Messaging Channel"

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 366
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->hasLastMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v13

    new-instance v3, Lco/kr/festfive/model/ChannelListItem;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v4}, Lcom/sendbird/android/model/MessagingChannel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v7}, Lcom/sendbird/android/model/MessagingChannel;->getCoverUrl()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v9}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v9}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessageTimestamp()J

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lco/kr/festfive/fragment/MessageFragment;->access$400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v10}, Lcom/sendbird/android/model/MessagingChannel;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v11}, Lcom/sendbird/android/model/MessagingChannel;->getMembers()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lco/kr/festfive/model/ChannelListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v13, v3}, Lco/kr/festfive/adapter/ChannelListAdapter;->add(Ljava/lang/Object;)V

    .line 303
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 342
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessage()Lcom/sendbird/android/model/MessageModel;

    move-result-object v19

    .end local v19    # "fileLink":Lcom/sendbird/android/model/FileLink;
    check-cast v19, Lcom/sendbird/android/model/FileLink;

    .line 343
    .restart local v19    # "fileLink":Lcom/sendbird/android/model/FileLink;
    const-string v8, "image"

    .line 344
    invoke-virtual/range {v19 .. v19}, Lcom/sendbird/android/model/FileLink;->getSenderName()Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_2

    .line 369
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v13

    new-instance v3, Lco/kr/festfive/model/ChannelListItem;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v4}, Lcom/sendbird/android/model/MessagingChannel;->getId()J

    move-result-wide v4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v7}, Lcom/sendbird/android/model/MessagingChannel;->getCoverUrl()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v9}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v9}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessageTimestamp()J

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lco/kr/festfive/fragment/MessageFragment;->access$400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v10}, Lcom/sendbird/android/model/MessagingChannel;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v11}, Lcom/sendbird/android/model/MessagingChannel;->getMembers()Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lco/kr/festfive/model/ChannelListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v13, v3}, Lco/kr/festfive/adapter/ChannelListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 373
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v4

    new-instance v9, Lco/kr/festfive/model/ChannelListItem;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getId()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getCoverUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v23 .. v23}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/MessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessageTimestamp()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v5, v0, v1}, Lco/kr/festfive/fragment/MessageFragment;->access$400(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sendbird/android/model/MessagingChannel;

    invoke-virtual {v3}, Lcom/sendbird/android/model/MessagingChannel;->getMembers()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v18}, Lco/kr/festfive/model/ChannelListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v4, v9}, Lco/kr/festfive/adapter/ChannelListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 391
    .end local v2    # "a":I
    .end local v6    # "senderName":Ljava/lang/String;
    .end local v8    # "last":Ljava/lang/String;
    .end local v19    # "fileLink":Lcom/sendbird/android/model/FileLink;
    .end local v20    # "i":I
    .end local v21    # "item":Lcom/sendbird/android/model/MessageModel;
    .end local v22    # "members":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel$Member;>;"
    .end local v23    # "message":Lcom/sendbird/android/model/Message;
    .end local v24    # "messageModel":Lcom/sendbird/android/model/MessageModel;
    .end local v25    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v3}, Lco/kr/festfive/fragment/MessageFragment;->access$600(Lco/kr/festfive/fragment/MessageFragment;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/kr/festfive/fragment/MessageFragment$4;->this$0:Lco/kr/festfive/fragment/MessageFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/MessageFragment;->access$000(Lco/kr/festfive/fragment/MessageFragment;)Lco/kr/festfive/adapter/ChannelListAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    return-void
.end method
