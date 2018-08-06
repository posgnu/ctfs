.class Lco/kr/festfive/fragment/CommunityInterestFragment$1;
.super Ljava/lang/Object;
.source "CommunityInterestFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/CommunityInterestFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/CommunityInterestFragment;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/fragment/CommunityInterestFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$1;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

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
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$1;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/CommunityInterestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/DetailCommunityActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v2, "communityId"

    iget-object v1, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$1;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-static {v1}, Lco/kr/festfive/fragment/CommunityInterestFragment;->access$000(Lco/kr/festfive/fragment/CommunityInterestFragment;)Lco/kr/festfive/adapter/CommunityInterestAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/CommunityInterestListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/CommunityInterestListItem;->getCommunityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v1, p0, Lco/kr/festfive/fragment/CommunityInterestFragment$1;->this$0:Lco/kr/festfive/fragment/CommunityInterestFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
