.class Lco/kr/festfive/fragment/NoticeDetailFeedFragment$6;
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
    .line 451
    iput-object p1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 454
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    iget-object v1, p0, Lco/kr/festfive/fragment/NoticeDetailFeedFragment$6;->this$0:Lco/kr/festfive/fragment/NoticeDetailFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$900(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;)Lco/kr/festfive/model/NoticeListItem;

    move-result-object v1

    invoke-virtual {v1}, Lco/kr/festfive/model/NoticeListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/kr/festfive/fragment/NoticeDetailFeedFragment;->access$1100(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Ljava/lang/String;)V

    .line 455
    return-void
.end method
