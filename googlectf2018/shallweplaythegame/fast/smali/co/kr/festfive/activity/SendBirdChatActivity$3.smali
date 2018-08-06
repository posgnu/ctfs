.class Lco/kr/festfive/activity/SendBirdChatActivity$3;
.super Ljava/lang/Object;
.source "SendBirdChatActivity.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdChatActivity;->initSendBird(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdChatActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdChatActivity;

    .prologue
    .line 303
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataReceived(Lcom/sendbird/android/SendBird$SendBirdDataType;I)V
    .locals 2
    .param p1, "type"    # Lcom/sendbird/android/SendBird$SendBirdDataType;
    .param p2, "count"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->notifyDataSetChanged()V

    .line 351
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$100(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$200(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 352
    return-void
.end method

.method public onAllMessagingEnded()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onAllMessagingHidden()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public onBroadcastMessageReceived(Lcom/sendbird/android/model/BroadcastMessage;)V
    .locals 1
    .param p1, "broadcastMessage"    # Lcom/sendbird/android/model/BroadcastMessage;

    .prologue
    .line 335
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 336
    return-void
.end method

.method public onChannelLeft(Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 316
    return-void
.end method

.method public onConnect(Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 307
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 311
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

    .line 312
    return-void
.end method

.method public onFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 1
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 340
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 341
    return-void
.end method

.method public onMessageDelivery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sent"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/String;

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 357
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$100(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->access$400(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_0
    return-void
.end method

.method public onMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 1
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 320
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 321
    return-void
.end method

.method public onMessagingEnded(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 383
    return-void
.end method

.method public onMessagingHidden(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 391
    return-void
.end method

.method public onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 375
    return-void
.end method

.method public onMessagingUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 379
    return-void
.end method

.method public onMutedFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 0
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 346
    return-void
.end method

.method public onMutedMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 326
    return-void
.end method

.method public onReadReceived(Lcom/sendbird/android/model/ReadStatus;)V
    .locals 0
    .param p1, "readStatus"    # Lcom/sendbird/android/model/ReadStatus;

    .prologue
    .line 363
    return-void
.end method

.method public onSystemMessageReceived(Lcom/sendbird/android/model/SystemMessage;)V
    .locals 1
    .param p1, "systemMessage"    # Lcom/sendbird/android/model/SystemMessage;

    .prologue
    .line 330
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity$3;->this$0:Lco/kr/festfive/activity/SendBirdChatActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->addMessageModel(Lcom/sendbird/android/model/MessageModel;)V

    .line 331
    return-void
.end method

.method public onTypeEndReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 0
    .param p1, "typeStatus"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 371
    return-void
.end method

.method public onTypeStartReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 0
    .param p1, "typeStatus"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 367
    return-void
.end method
