.class public Lco/kr/festfive/activity/SelectMeetingRoomActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SelectMeetingRoomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private officeId:Ljava/lang/String;

.field private officeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f0a0030

    invoke-virtual {p0, v2}, Lco/kr/festfive/activity/SelectMeetingRoomActivity;->setContentView(I)V

    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 32
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/SelectMeetingRoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "officeId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/SelectMeetingRoomActivity;->officeId:Ljava/lang/String;

    .line 37
    const-string v2, "officeName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/activity/SelectMeetingRoomActivity;->officeName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lco/kr/festfive/activity/SelectMeetingRoomActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 39
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0800b0

    iget-object v3, p0, Lco/kr/festfive/activity/SelectMeetingRoomActivity;->officeId:Ljava/lang/String;

    iget-object v4, p0, Lco/kr/festfive/activity/SelectMeetingRoomActivity;->officeName:Ljava/lang/String;

    invoke-static {v3, v4}, Lco/kr/festfive/fragment/SelectMeetingRoomFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 41
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    return-void
.end method
