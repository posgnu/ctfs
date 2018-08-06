.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Lcom/sendbird/android/handler/DeleteMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;)V
    .locals 0
    .param p1, "this$3"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;

    .prologue
    .line 1858
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;->this$3:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/sendbird/android/SendBirdException;)V
    .locals 0
    .param p1, "e"    # Lcom/sendbird/android/SendBirdException;

    .prologue
    .line 1861
    invoke-virtual {p1}, Lcom/sendbird/android/SendBirdException;->printStackTrace()V

    .line 1862
    return-void
.end method

.method public onSuccess(J)V
    .locals 3
    .param p1, "messageId"    # J

    .prologue
    .line 1866
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;->this$3:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;->this$3:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->val$item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->delete(Ljava/lang/Object;)V

    .line 1867
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;->this$3:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->notifyDataSetChanged()V

    .line 1868
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;->this$3:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v0, v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-static {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->access$1600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\uba54\uc138\uc9c0\ub97c \uc0ad\uc81c\ud558\uc600\uc2b5\ub2c8\ub2e4."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1869
    return-void
.end method
