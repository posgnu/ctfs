.class public Lco/kr/festfive/activity/PeoPleActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PeoPleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;
    }
.end annotation


# instance fields
.field onBackKeyListener:Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lco/kr/festfive/activity/PeoPleActivity;->onBackKeyListener:Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;

    invoke-interface {v0}, Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;->onBack()V

    .line 45
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lco/kr/festfive/activity/PeoPleActivity;->setContentView(I)V

    .line 20
    new-instance v0, Lco/kr/festfive/fragment/PeopleFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/PeopleFragment;-><init>()V

    .local v0, "newFragment":Landroid/support/v4/app/Fragment;
    move-object v2, v0

    .line 21
    check-cast v2, Lco/kr/festfive/fragment/PeopleFragment;

    invoke-virtual {v2, p0}, Lco/kr/festfive/fragment/PeopleFragment;->setContext(Landroid/content/Context;)V

    move-object v2, v0

    .line 22
    check-cast v2, Lco/kr/festfive/fragment/PeopleFragment;

    invoke-virtual {v2}, Lco/kr/festfive/fragment/PeopleFragment;->getBackKeyListener()Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/PeoPleActivity;->onBackKeyListener:Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;

    .line 25
    invoke-virtual {p0}, Lco/kr/festfive/activity/PeoPleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 26
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f080142

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 30
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 33
    return-void
.end method

.method public setOnBackListener(Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;

    .prologue
    .line 35
    iput-object p1, p0, Lco/kr/festfive/activity/PeoPleActivity;->onBackKeyListener:Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;

    .line 36
    return-void
.end method
