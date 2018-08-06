.class Lco/kr/festfive/fragment/DetailFeedFragment$9$2;
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
    .line 836
    iput-object p1, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9$2;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 839
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 840
    .local v3, "word":Ljava/lang/String;
    iget-object v4, p0, Lco/kr/festfive/fragment/DetailFeedFragment$9$2;->this$1:Lco/kr/festfive/fragment/DetailFeedFragment$9;

    iget-object v4, v4, Lco/kr/festfive/fragment/DetailFeedFragment$9;->this$0:Lco/kr/festfive/fragment/DetailFeedFragment;

    invoke-virtual {v4}, Lco/kr/festfive/fragment/DetailFeedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 841
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-direct {v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;-><init>()V

    .line 842
    .local v1, "searchNewsFeedFragment":Lco/kr/festfive/fragment/SearchNewsFeedFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 843
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "SEARCHWORD"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {v1, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 845
    const v4, 0x7f0800b1

    invoke-virtual {v2, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 846
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 847
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 848
    return-void
.end method
