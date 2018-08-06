.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$7;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    .prologue
    .line 1930
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$7;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1933
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1935
    .local v0, "id":I
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$7;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    const-class v3, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1936
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "targetUserId"

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$7;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sendbird/android/model/Message;

    invoke-virtual {v2}, Lcom/sendbird/android/model/Message;->getSenderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1937
    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$7;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-virtual {v2, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->startActivity(Landroid/content/Intent;)V

    .line 1938
    return-void
.end method
