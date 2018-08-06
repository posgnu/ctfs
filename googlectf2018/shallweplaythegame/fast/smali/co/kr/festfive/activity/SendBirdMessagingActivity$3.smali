.class Lco/kr/festfive/activity/SendBirdMessagingActivity$3;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity;->initSendBird()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .prologue
    .line 362
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataReceived(Lcom/sendbird/android/SendBird$SendBirdDataType;I)V
    .locals 4
    .param p1, "type"    # Lcom/sendbird/android/SendBird$SendBirdDataType;
    .param p2, "count"    # I

    .prologue
    .line 447
    const-string v2, "cks4451"

    const-string v3, "onAllDataReceived"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v1, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 451
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 453
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    .end local v0    # "i":I
    .end local v1    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$500(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    move-result-object v2

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 458
    return-void
.end method

.method public onAllMessagingEnded()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method public onAllMessagingHidden()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public onBroadcastMessageReceived(Lcom/sendbird/android/model/BroadcastMessage;)V
    .locals 1
    .param p1, "broadcastMessage"    # Lcom/sendbird/android/model/BroadcastMessage;

    .prologue
    .line 411
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 412
    return-void
.end method

.method public onChannelLeft(Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 376
    return-void
.end method

.method public onConnect(Lcom/sendbird/android/model/Channel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 365
    const-string v0, "mk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel.getUrl() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p1}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->markAsRead(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 371
    const-string v0, "SendBird"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void
.end method

.method public onFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 1
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 416
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$300(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcom/sendbird/android/SendBird;->markAsRead()V

    .line 419
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 420
    return-void
.end method

.method public onMessageDelivery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sent"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "tempId"    # Ljava/lang/String;

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$500(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->access$700(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 465
    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 380
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$300(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Lcom/sendbird/android/SendBird;->markAsRead()V

    .line 382
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->setReadStatus(Ljava/lang/String;J)V

    .line 384
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 385
    return-void
.end method

.method public onMessagingEnded(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 510
    return-void
.end method

.method public onMessagingHidden(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 518
    return-void
.end method

.method public onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 7
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 469
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->clear()V

    .line 470
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$200(Lco/kr/festfive/activity/SendBirdMessagingActivity;Lcom/sendbird/android/model/MessagingChannel;)V

    .line 472
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x1e

    const/16 v5, 0xa

    new-instance v6, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;

    invoke-direct {v6, p0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$3$1;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$3;Lcom/sendbird/android/model/MessagingChannel;)V

    invoke-virtual/range {v1 .. v6}, Lcom/sendbird/android/MessageListQuery;->load(JIILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    .line 500
    return-void
.end method

.method public onMessagingUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 2
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 504
    const-string v0, "HAMA"

    const-string v1, "on messaging updated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$200(Lco/kr/festfive/activity/SendBirdMessagingActivity;Lcom/sendbird/android/model/MessagingChannel;)V

    .line 506
    return-void
.end method

.method public onMutedFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 0
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 425
    return-void
.end method

.method public onMutedMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 390
    return-void
.end method

.method public onReadReceived(Lcom/sendbird/android/model/ReadStatus;)V
    .locals 4
    .param p1, "readStatus"    # Lcom/sendbird/android/model/ReadStatus;

    .prologue
    .line 430
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sendbird/android/model/ReadStatus;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/model/ReadStatus;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->setReadStatus(Ljava/lang/String;J)V

    .line 431
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->notifyDataSetChanged()V

    .line 432
    return-void
.end method

.method public onSystemMessageReceived(Lcom/sendbird/android/model/SystemMessage;)V
    .locals 1
    .param p1, "systemMessage"    # Lcom/sendbird/android/model/SystemMessage;

    .prologue
    .line 394
    invoke-virtual {p1}, Lcom/sendbird/android/model/SystemMessage;->getCategory()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 406
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 407
    return-void

    .line 396
    :sswitch_0
    const-string v0, "Too many messages. Please try later."

    invoke-virtual {p1, v0}, Lcom/sendbird/android/model/SystemMessage;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :sswitch_1
    const-string v0, "Blocked."

    invoke-virtual {p1, v0}, Lcom/sendbird/android/model/SystemMessage;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :sswitch_2
    const-string v0, "Deactivated."

    invoke-virtual {p1, v0}, Lcom/sendbird/android/model/SystemMessage;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x27d8 -> :sswitch_0
        0x283c -> :sswitch_1
        0x28a0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTypeEndReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 4
    .param p1, "typeStatus"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 441
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sendbird/android/model/TypeStatus;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->setTypeStatus(Ljava/lang/String;J)V

    .line 442
    return-void
.end method

.method public onTypeStartReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 4
    .param p1, "typeStatus"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 436
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sendbird/android/model/TypeStatus;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->setTypeStatus(Ljava/lang/String;J)V

    .line 437
    return-void
.end method
