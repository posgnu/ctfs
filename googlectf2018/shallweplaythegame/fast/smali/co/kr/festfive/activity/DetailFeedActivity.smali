.class public Lco/kr/festfive/activity/DetailFeedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DetailFeedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v3, 0x7f0a001d

    invoke-virtual {p0, v3}, Lco/kr/festfive/activity/DetailFeedActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lco/kr/festfive/activity/DetailFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "news_feed_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    .local v1, "newsFeedId":Ljava/lang/String;
    invoke-virtual {p0}, Lco/kr/festfive/activity/DetailFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 24
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f08007a

    invoke-static {p0, v1}, Lco/kr/festfive/fragment/DetailFeedFragment;->newInstance(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 26
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 27
    return-void
.end method
