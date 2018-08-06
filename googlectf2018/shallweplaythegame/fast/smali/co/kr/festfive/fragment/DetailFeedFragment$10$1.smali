.class Lco/kr/festfive/fragment/DetailFeedFragment$10$1;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment$10;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment$10;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/DetailFeedFragment$10;

    .prologue
    .line 966
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 969
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 978
    .local v2, "user":I
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;

    iget-object v4, v4, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$3300(Lco/kr/festfive/fragment/DetailFeedFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 980
    .local v3, "userId":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;

    iget-object v4, v4, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-static {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->access$600(Lco/kr/festfive/fragment/DetailFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "myId":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 983
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;

    iget-object v4, v4, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 984
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;

    iget-object v4, v4, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v4, v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 994
    :goto_0
    return-void

    .line 988
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;

    iget-object v4, v4, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 989
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "targetUserId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 990
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment$10$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$10;

    iget-object v4, v4, Lco/kr/festfive/fragment/DetailFeedFragment$10;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v4, v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
