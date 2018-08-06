.class Lco/kr/festfive/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdNotificationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/MainActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/MainActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/MainActivity;

    .prologue
    .line 163
    iput-object p1, p0, Lco/kr/festfive/activity/MainActivity$1;->this$0:Lco/kr/festfive/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMentionUpdated(Lcom/sendbird/android/model/Mention;)V
    .locals 0
    .param p1, "mention"    # Lcom/sendbird/android/model/Mention;

    .prologue
    .line 206
    return-void
.end method

.method public onMessagingChannelUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 5
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 166
    iget-object v3, p0, Lco/kr/festfive/activity/MainActivity$1;->this$0:Lco/kr/festfive/activity/MainActivity;

    invoke-static {v3}, Lco/kr/festfive/activity/MainActivity;->access$000(Lco/kr/festfive/activity/MainActivity;)V

    .line 168
    const-string v3, "HAMA"

    const-string v4, "update channel"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getLastMessage()Lcom/sendbird/android/model/MessageModel;

    move-result-object v0

    .line 171
    .local v0, "lastMessageModel":Lcom/sendbird/android/model/MessageModel;
    instance-of v3, v0, Lcom/sendbird/android/model/Message;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 172
    check-cast v2, Lcom/sendbird/android/model/Message;

    .line 174
    .local v2, "message":Lcom/sendbird/android/model/Message;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 175
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v3, Lco/kr/festfive/activity/MainActivity$1$1;

    invoke-direct {v3, p0, v2}, Lco/kr/festfive/activity/MainActivity$1$1;-><init>(Lco/kr/festfive/activity/MainActivity$1;Lcom/sendbird/android/model/Message;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    .end local v1    # "mHandler":Landroid/os/Handler;
    .end local v2    # "message":Lcom/sendbird/android/model/Message;
    :cond_0
    return-void
.end method
