.class public Lco/kr/festfive/fragment/CommunityInterestFragment;
.super Landroid/support/v4/app/Fragment;
.source "CommunityInterestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButton:Landroid/widget/TextView;

.field private communityInterestAdapter:Lco/kr/festfive/adapter/CommunityInterestAdapter;

.field private countText:Landroid/widget/TextView;

.field festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private listView:Landroid/widget/ListView;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/CommunityInterestFragment;)Lco/kr/festfive/adapter/CommunityInterestAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CommunityInterestFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->communityInterestAdapter:Lco/kr/festfive/adapter/CommunityInterestAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/CommunityInterestFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CommunityInterestFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->countText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/CommunityInterestFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CommunityInterestFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getCommunityInterestListToServer()V
    .locals 7

    .prologue
    .line 95
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 96
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 98
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->communityInterestAdapter:Lco/kr/festfive/adapter/CommunityInterestAdapter;

    if-eqz v4, :cond_0

    .line 99
    iget-object v4, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->communityInterestAdapter:Lco/kr/festfive/adapter/CommunityInterestAdapter;

    invoke-virtual {v4}, Lco/kr/festfive/adapter/CommunityInterestAdapter;->clear()V

    .line 102
    :cond_0
    iget-object v4, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "userId":Ljava/lang/String;
    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Lco/kr/festfive/service/FestInterface;->getCommunityFavoriteList(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 106
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/CommunityInterestFragment$2;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/CommunityInterestFragment$2;-><init>(Lco/kr/festfive/fragment/CommunityInterestFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080022

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 174
    :cond_0
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
    const v0, 0x7f0a0058

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->rootView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->backButton:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->backButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->countText:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->rootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->listView:Landroid/widget/ListView;

    .line 62
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/fragment/CommunityInterestFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CommunityInterestFragment$1;-><init>(Lco/kr/festfive/fragment/CommunityInterestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    new-instance v0, Lco/kr/festfive/adapter/CommunityInterestAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/CommunityInterestAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->communityInterestAdapter:Lco/kr/festfive/adapter/CommunityInterestAdapter;

    .line 75
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityInterestFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 91
    invoke-direct {p0}, Lco/kr/festfive/fragment/CommunityInterestFragment;->getCommunityInterestListToServer()V

    .line 92
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    return-void
.end method
