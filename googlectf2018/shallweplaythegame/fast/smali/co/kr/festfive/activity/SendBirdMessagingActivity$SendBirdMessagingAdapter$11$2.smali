.class Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11$2;
.super Ljava/lang/Object;
.source "SendBirdMessagingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;I)V
    .locals 0
    .param p1, "this$2"    # Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;

    .prologue
    .line 2327
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11$2;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;

    iput p2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2333
    :try_start_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11$2;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    iget-object v1, v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->this$0:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-static {v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    move-result-object v1

    iget v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11$2;->val$id:I

    invoke-virtual {v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/model/FileLink;

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11$2;->this$2:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;

    iget-object v2, v2, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter$11;->this$1:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-static {v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->access$1600(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->access$1700(Lcom/sendbird/android/model/FileLink;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2337
    :goto_0
    return-void

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
