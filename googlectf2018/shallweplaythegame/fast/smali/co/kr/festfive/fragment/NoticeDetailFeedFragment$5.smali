.class Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;
.super Ljava/lang/Object;
.source "NoticeDetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    .prologue
    .line 432
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "feedId"

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "content"

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListItem;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "image1"

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "image2"

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "image3"

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "image4"

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v1, "image5"

    iget-object v2, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NoticeListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 446
    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$5;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$1000(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 447
    return-void
.end method
