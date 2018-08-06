.class public Lco/kr/festfive/activity/ReservationMeetingRoomActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ReservationMeetingRoomActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/ImageView;

.field private backButtonText:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private listView:Landroid/widget/ListView;

.field private reservationMeetingRoomAdapter:Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;->type:I

    .line 32
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f0a002d

    invoke-virtual {p0, v2}, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;->setContentView(I)V

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 41
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;->type:I

    .line 45
    invoke-virtual {p0}, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 47
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0800b0

    iget v3, p0, Lco/kr/festfive/activity/ReservationMeetingRoomActivity;->type:I

    invoke-static {v3}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->newInstance(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 49
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 52
    return-void
.end method
