.class public Lco/kr/festfive/activity/SearchNewsFeedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SearchNewsFeedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v4, 0x7f0a002f

    invoke-virtual {p0, v4}, Lco/kr/festfive/activity/SearchNewsFeedActivity;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lco/kr/festfive/activity/SearchNewsFeedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "searchData"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "searchData":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "SEARCHWORD"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v4, "SearchNewsFeedActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lco/kr/festfive/activity/SearchNewsFeedActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 29
    .local v3, "transaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-direct {v2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;-><init>()V

    .line 31
    .local v2, "searchNewsFeedFragment":Lco/kr/festfive/fragment/SearchNewsFeedFragment;
    invoke-virtual {v2, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    const v4, 0x7f0801cf

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 34
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 42
    return-void
.end method
