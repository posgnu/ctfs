.class Lco/kr/festfive/fragment/DetailFeedFragment$23$1;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment$23;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/DetailFeedFragment$23;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment$23;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/DetailFeedFragment$23;

    .prologue
    .line 1501
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1508
    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$23;

    iget-object v2, v2, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$600(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v2

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1510
    .local v1, "myId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1511
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$23;

    iget-object v2, v2, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1512
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$23;

    iget-object v2, v2, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v2, v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 1520
    :goto_0
    return-void

    .line 1516
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$23;

    iget-object v2, v2, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1517
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "targetUserId"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1518
    iget-object v2, p0, Lco/kr/festfive/fragment/DetailFeedFragment$23$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$23;

    iget-object v2, v2, Lco/kr/festfive/fragment/DetailFeedFragment$23;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v2, v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method