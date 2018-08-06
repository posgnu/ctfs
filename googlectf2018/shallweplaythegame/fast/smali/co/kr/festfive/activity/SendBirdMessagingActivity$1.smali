.class Lco/kr/festfive/activity/SendBirdMessagingActivity$1;
.super Landroid/os/CountDownTimer;
.source "SendBirdMessagingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;JJ)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 241
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 244
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->checkTypeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$1;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->notifyDataSetChanged()V

    .line 247
    const-string v0, "cks4451"

    const-string v1, "CountDownTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    return-void
.end method
