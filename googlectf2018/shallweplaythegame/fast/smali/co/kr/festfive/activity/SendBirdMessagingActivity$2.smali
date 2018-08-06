.class Lco/kr/festfive/activity/SendBirdMessagingActivity$2;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Lcom/sendbird/android/SendBirdNotificationHandler;


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
    .line 348
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMentionUpdated(Lcom/sendbird/android/model/Mention;)V
    .locals 0
    .param p1, "mention"    # Lcom/sendbird/android/model/Mention;

    .prologue
    .line 359
    return-void
.end method

.method public onMessagingChannelUpdated(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 4
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 351
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$100(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lcom/sendbird/android/model/MessagingChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$100(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lcom/sendbird/android/model/MessagingChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/model/MessagingChannel;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$2;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$200(Lco/kr/festfive/activity/SendBirdMessagingActivity;Lcom/sendbird/android/model/MessagingChannel;)V

    .line 354
    :cond_0
    return-void
.end method
