.class Lco/kr/festfive/activity/ModifyUserInfoActivity$2$1;
.super Ljava/lang/Object;
.source "ModifyUserInfoActivity.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/ModifyUserInfoActivity$2;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/ModifyUserInfoActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/ModifyUserInfoActivity$2;

    .prologue
    .line 632
    iput-object p1, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2$1;->this$1:Lco/kr/festfive/activity/ModifyUserInfoActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllDataReceived(Lcom/sendbird/android/SendBird$SendBirdDataType;I)V
    .locals 0
    .param p1, "type"    # Lcom/sendbird/android/SendBird$SendBirdDataType;
    .param p2, "count"    # I

    .prologue
    .line 699
    return-void
.end method

.method public onAllMessagingEnded()V
    .locals 0

    .prologue
    .line 722
    return-void
.end method

.method public onAllMessagingHidden()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method public onBroadcastMessageReceived(Lcom/sendbird/android/model/BroadcastMessage;)V
    .locals 0
    .param p1, "broadcastMessage"    # Lcom/sendbird/android/model/BroadcastMessage;

    .prologue
    .line 669
    return-void
.end method

.method public onChannelLeft(Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 649
    return-void
.end method

.method public onConnect(Lcom/sendbird/android/model/Channel;)V
    .locals 3
    .param p1, "channel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 636
    invoke-static {}, Lcom/sendbird/android/SendBird;->disconnect()V

    .line 637
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2$1;->this$1:Lco/kr/festfive/activity/ModifyUserInfoActivity$2;

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\uc218\uc815 \ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 638
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2$1;->this$1:Lco/kr/festfive/activity/ModifyUserInfoActivity$2;

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->setResult(I)V

    .line 639
    iget-object v0, p0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2$1;->this$1:Lco/kr/festfive/activity/ModifyUserInfoActivity$2;

    iget-object v0, v0, Lco/kr/festfive/activity/ModifyUserInfoActivity$2;->this$0:Lco/kr/festfive/activity/ModifyUserInfoActivity;

    invoke-virtual {v0}, Lco/kr/festfive/activity/ModifyUserInfoActivity;->finish()V

    .line 640
    return-void
.end method

.method public onError(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 644
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

    .line 645
    return-void
.end method

.method public onFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 0
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 674
    return-void
.end method

.method public onMessageDelivery(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sent"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "tempId"    # Ljava/lang/String;

    .prologue
    .line 704
    return-void
.end method

.method public onMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 654
    return-void
.end method

.method public onMessagingEnded(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 718
    return-void
.end method

.method public onMessagingHidden(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 726
    return-void
.end method

.method public onMessagingStarted(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 709
    return-void
.end method

.method public onMessagingUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 714
    return-void
.end method

.method public onMutedFileReceived(Lcom/sendbird/android/model/FileLink;)V
    .locals 0
    .param p1, "fileLink"    # Lcom/sendbird/android/model/FileLink;

    .prologue
    .line 679
    return-void
.end method

.method public onMutedMessageReceived(Lcom/sendbird/android/model/Message;)V
    .locals 0
    .param p1, "message"    # Lcom/sendbird/android/model/Message;

    .prologue
    .line 659
    return-void
.end method

.method public onReadReceived(Lcom/sendbird/android/model/ReadStatus;)V
    .locals 0
    .param p1, "readStatus"    # Lcom/sendbird/android/model/ReadStatus;

    .prologue
    .line 684
    return-void
.end method

.method public onSystemMessageReceived(Lcom/sendbird/android/model/SystemMessage;)V
    .locals 0
    .param p1, "systemMessage"    # Lcom/sendbird/android/model/SystemMessage;

    .prologue
    .line 664
    return-void
.end method

.method public onTypeEndReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 0
    .param p1, "typeStatus"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 694
    return-void
.end method

.method public onTypeStartReceived(Lcom/sendbird/android/model/TypeStatus;)V
    .locals 0
    .param p1, "typeStatus"    # Lcom/sendbird/android/model/TypeStatus;

    .prologue
    .line 689
    return-void
.end method
