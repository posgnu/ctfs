.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;)V
    .locals 0
    .param p1, "this$2"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    .prologue
    .line 1845
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1848
    packed-switch p2, :pswitch_data_0

    .line 1875
    :goto_0
    return-void

    .line 1851
    :pswitch_0
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v3, v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->val$item:Ljava/lang/Object;

    check-cast v3, Lcom/sendbird/android/model/Message;

    invoke-virtual {v3}, Lcom/sendbird/android/model/Message;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1852
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v3, v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    iget-object v3, v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1853
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    invoke-static {v2, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1854
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1855
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v3, v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-static {v3}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->access$1600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "\ud074\ub9bd\ubcf4\ub4dc\uc5d0 \ubcf5\uc0ac\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1858
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v2    # "msg":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;

    iget-object v3, v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6;->val$item:Ljava/lang/Object;

    check-cast v3, Lcom/sendbird/android/model/Message;

    invoke-virtual {v3}, Lcom/sendbird/android/model/Message;->getMessageId()J

    move-result-wide v4

    new-instance v3, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;

    invoke-direct {v3, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1$1;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$6$1;)V

    invoke-static {v4, v5, v3}, Lcom/sendbird/android/SendBird;->deleteMessage(JLcom/sendbird/android/handler/DeleteMessageHandler;)V

    goto :goto_0

    .line 1848
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
