.class Lco/kr/festfive/fragment/SearchNewsFeedFragment$4;
.super Ljava/lang/Object;
.source "SearchNewsFeedFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/SearchNewsFeedFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 186
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$4;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 195
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$4;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/DetailFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "news_feed_id"

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$4;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->access$100(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/NewFeedListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment$4;->this$0:Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
