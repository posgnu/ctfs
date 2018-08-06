.class Lco/kr/festfive/fragment/DetailFeedFragment$15;
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
    .line 1166
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$15;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect()V
    .locals 3

    .prologue
    .line 1169
    iget-object v0, p0, Lco/kr/festfive/fragment/DetailFeedFragment$15;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$15;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$500(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/model/NewFeedListItem;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$4000(Lco/kr/festfive/fragment/DetailFeedFragment;Ljava/lang/String;Z)V

    .line 1170
    return-void
.end method
