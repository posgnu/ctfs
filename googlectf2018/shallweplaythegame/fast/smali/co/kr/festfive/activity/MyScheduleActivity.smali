.class public Lco/kr/festfive/activity/MyScheduleActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MyScheduleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/MyScheduleActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lco/kr/festfive/activity/MyScheduleActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 27
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f0800b0

    new-instance v2, Lco/kr/festfive/fragment/MyScheduleFragment;

    invoke-direct {v2}, Lco/kr/festfive/fragment/MyScheduleFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 28
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 31
    return-void
.end method
