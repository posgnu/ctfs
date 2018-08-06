.class public Lco/kr/festfive/fragment/MyScheduleFragment;
.super Landroid/support/v4/app/Fragment;
.source "MyScheduleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonImage:Landroid/widget/TextView;

.field private countText:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private listView:Landroid/widget/ListView;

.field private myScheduleAdapter:Lco/kr/festfive/adapter/MyScheduleAdapter;

.field private noitemText:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/MyScheduleFragment;)Lco/kr/festfive/adapter/MyScheduleAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->myScheduleAdapter:Lco/kr/festfive/adapter/MyScheduleAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/MyScheduleFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyScheduleFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/fragment/MyScheduleFragment;->setReservationDeleteToServer(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/MyScheduleFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lco/kr/festfive/fragment/MyScheduleFragment;->getMyScheduleToServer()V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/MyScheduleFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->noitemText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/MyScheduleFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->countText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/MyScheduleFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/MyScheduleFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getMyScheduleToServer()V
    .locals 7

    .prologue
    .line 192
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 193
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 195
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->myScheduleAdapter:Lco/kr/festfive/adapter/MyScheduleAdapter;

    if-eqz v4, :cond_0

    .line 196
    iget-object v4, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->myScheduleAdapter:Lco/kr/festfive/adapter/MyScheduleAdapter;

    invoke-virtual {v4}, Lco/kr/festfive/adapter/MyScheduleAdapter;->clear()V

    .line 199
    :cond_0
    iget-object v4, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "userId":Ljava/lang/String;
    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getMySchedule(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 203
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/MyScheduleFragment$4;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/MyScheduleFragment$4;-><init>(Lco/kr/festfive/fragment/MyScheduleFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 318
    return-void
.end method

.method private setReservationDeleteToServer(ILjava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 120
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 122
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 126
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 127
    invoke-interface {v2, v3, p2}, Lco/kr/festfive/service/FestInterface;->setRoomReserveDelete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 137
    :goto_0
    new-instance v4, Lco/kr/festfive/fragment/MyScheduleFragment$3;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/MyScheduleFragment$3;-><init>(Lco/kr/festfive/fragment/MyScheduleFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 189
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 129
    invoke-interface {v2, v3, p2}, Lco/kr/festfive/service/FestInterface;->setVisitorReserveDelete(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 131
    invoke-interface {v2, p2, v3}, Lco/kr/festfive/service/FestInterface;->setCommunityOut(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080021

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080023

    if-ne v0, v1, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 327
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 48
    const v0, 0x7f0a0061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->rootView:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->backButtonImage:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->noitemText:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->countText:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->rootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->listView:Landroid/widget/ListView;

    .line 59
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/fragment/MyScheduleFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MyScheduleFragment$1;-><init>(Lco/kr/festfive/fragment/MyScheduleFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 88
    new-instance v0, Lco/kr/festfive/adapter/MyScheduleAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/MyScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/MyScheduleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->myScheduleAdapter:Lco/kr/festfive/adapter/MyScheduleAdapter;

    .line 89
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->myScheduleAdapter:Lco/kr/festfive/adapter/MyScheduleAdapter;

    new-instance v1, Lco/kr/festfive/fragment/MyScheduleFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/MyScheduleFragment$2;-><init>(Lco/kr/festfive/fragment/MyScheduleFragment;)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/adapter/MyScheduleAdapter;->setListener(Lco/kr/festfive/adapter/MyScheduleAdapter$OnDeleteListener;)V

    .line 113
    invoke-direct {p0}, Lco/kr/festfive/fragment/MyScheduleFragment;->getMyScheduleToServer()V

    .line 115
    iget-object v0, p0, Lco/kr/festfive/fragment/MyScheduleFragment;->rootView:Landroid/view/View;

    return-object v0
.end method
