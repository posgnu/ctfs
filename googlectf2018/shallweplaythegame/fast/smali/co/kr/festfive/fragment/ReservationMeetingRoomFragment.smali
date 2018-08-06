.class public Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;
.super Landroid/support/v4/app/Fragment;
.source "ReservationMeetingRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private listView:Landroid/widget/ListView;

.field private reservationMeetingRoomAdapter:Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

.field private rootView:Landroid/view/View;

.field private titleName:Ljava/lang/String;

.field private titletv:Landroid/widget/TextView;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->type:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->titleName:Ljava/lang/String;

    .line 46
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->reservationMeetingRoomAdapter:Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    .prologue
    .line 38
    iget v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->type:I

    return v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getSelectOfficeToServer()V
    .locals 7

    .prologue
    .line 122
    invoke-virtual {p0}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 123
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 126
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "userId":Ljava/lang/String;
    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getSelectOffice(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 130
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$2;-><init>(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 167
    return-void
.end method

.method public static newInstance(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 50
    new-instance v1, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;

    invoke-direct {v1}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;-><init>()V

    .line 51
    .local v1, "reservationMeetingRoomFragment":Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;
    iput p0, v1, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->type:I

    .line 53
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 54
    const-string v0, "\ud68c\uc758\uc2e4 \uc608\uc57d"

    .line 58
    .local v0, "_titleName":Ljava/lang/String;
    :goto_0
    iput-object v0, v1, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->titleName:Ljava/lang/String;

    .line 59
    return-object v1

    .line 56
    .end local v0    # "_titleName":Ljava/lang/String;
    :cond_0
    const-string v0, "\ubc29\ubb38\uac1d \uc608\uc57d"

    .restart local v0    # "_titleName":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080021

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080023

    if-ne v0, v1, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 119
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 65
    const v0, 0x7f0a0067

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->rootView:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->titletv:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->titletv:Landroid/widget/TextView;

    iget-object v1, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->backButtonImage:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->rootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->listView:Landroid/widget/ListView;

    .line 79
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment$1;-><init>(Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    new-instance v0, Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->reservationMeetingRoomAdapter:Lco/kr/festfive/adapter/ReservationMeetingRoomAdapter;

    .line 109
    invoke-direct {p0}, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->getSelectOfficeToServer()V

    .line 111
    iget-object v0, p0, Lco/kr/festfive/fragment/ReservationMeetingRoomFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
