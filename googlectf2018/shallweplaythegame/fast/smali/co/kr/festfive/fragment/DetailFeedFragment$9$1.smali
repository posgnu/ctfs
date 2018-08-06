.class Lco/kr/festfive/fragment/DetailFeedFragment$9$1;
.super Ljava/lang/Object;
.source "DetailFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/fragment/DetailFeedFragment$9;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;


# direct methods
.method constructor <init>(Lco/kr/festfive/fragment/DetailFeedFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lco/kr/festfive/fragment/DetailFeedFragment$9;

    .prologue
    .line 814
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 817
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;

    iget-object v1, v1, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "targetUserId"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    iget-object v1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9$1;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;

    iget-object v1, v1, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/DetailFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 820
    return-void
.end method
