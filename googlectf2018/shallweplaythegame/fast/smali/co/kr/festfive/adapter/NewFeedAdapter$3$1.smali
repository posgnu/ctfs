.class Lco/kr/festfive/adapter/NewFeedAdapter$3$1;
.super Ljava/lang/Object;
.source "NewFeedAdapter.java"

# interfaces
.implements Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/adapter/NewFeedAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lco/kr/festfive/adapter/NewFeedAdapter$3;I)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/adapter/NewFeedAdapter$3;

    .prologue
    .line 320
    iput-object p1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iput p2, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 4

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2400(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "feedId"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v2, "content"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v2, "image1"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v2, "image2"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v2, "image3"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v2, "image4"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v2, "image5"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v2, "link"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v2, "link_title"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getUrl_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v2, "hashtag"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const-string v2, "category"

    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    iget v3, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->val$position:I

    invoke-virtual {v1, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lco/kr/festfive/adapter/NewFeedAdapter$3$1;->this$1:Lco/kr/festfive/adapter/NewFeedAdapter$3;

    iget-object v1, v1, Lco/kr/festfive/adapter/NewFeedAdapter$3;->this$0:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-static {v1}, Lco/kr/festfive/adapter/NewFeedAdapter;->access$2400(Lco/kr/festfive/adapter/NewFeedAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method
