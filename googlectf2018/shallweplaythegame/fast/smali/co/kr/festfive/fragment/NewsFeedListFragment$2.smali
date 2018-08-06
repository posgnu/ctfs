.class Lco/kr/festfive/fragment/NewsFeedListFragment$2;
.super Ljava/lang/Object;
.source "NewsFeedListFragment.java"

# interfaces
.implements Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/NewsFeedListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/NewsFeedListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$2;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetail(Lco/kr/festfive/model/NewFeedListItem;)V
    .locals 3
    .param p1, "item"    # Lco/kr/festfive/model/NewFeedListItem;

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$2;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/DetailFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "news_feed_id"

    invoke-virtual {p1}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$2;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method
