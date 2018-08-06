.class Lco/kr/festfive/fragment/DetailFeedFragment$16;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Lco/kr/festfive/Dialog/ListSelectDialogItem$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/DetailFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/DetailFeedFragment;

    .prologue
    .line 1175
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 3

    .prologue
    .line 1178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/ModifyNewsFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "feedId"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    const-string v1, "content"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getContents()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v1, "image1"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage1Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    const-string v1, "image2"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage2Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    const-string v1, "image3"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage3Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    const-string v1, "image4"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage4Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const-string v1, "image5"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getImage5Url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string v1, "link"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    const-string v1, "link_title"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getUrl_title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    const-string v1, "hashtag"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    const-string v1, "category"

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v2

    invoke-virtual {v2}, Lco/kr/festfive/model/NewFeedListItem;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$16;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1192
    return-void
.end method
