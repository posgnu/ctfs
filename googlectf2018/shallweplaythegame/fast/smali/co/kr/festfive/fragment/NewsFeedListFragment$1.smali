.class Lco/kr/festfive/fragment/NewsFeedListFragment$1;
.super Ljava/lang/Object;
.source "NewsFeedListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 105
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/DetailFeedActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/NewsFeedListFragment;->access$000(Lco/kr/festfive/fragment/NewsFeedListFragment;)Lco/kr/festfive/adapter/NewFeedAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lco/kr/festfive/adapter/NewFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    .line 110
    .local v1, "item":Lco/kr/festfive/model/NewFeedListItem;
    const-string v2, "news_feed_id"

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment$1;->this$0:Lco/kr/festfive/fragment/NewsFeedListFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    return-void
.end method
