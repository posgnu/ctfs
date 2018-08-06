.class public Lco/kr/festfive/fragment/CommunityFragment;
.super Landroid/support/v4/app/Fragment;
.source "CommunityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private communityAdapter:Lco/kr/festfive/adapter/CommunityAdapter;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private interestButtonText:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private rootView:Landroid/view/View;

.field private searchEdittext:Landroid/widget/EditText;

.field private searchIbtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/CommunityFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CommunityFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->searchEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/CommunityFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/CommunityFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/CommunityFragment;->getCommunityListToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/CommunityFragment;)Lco/kr/festfive/adapter/CommunityAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CommunityFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->communityAdapter:Lco/kr/festfive/adapter/CommunityAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/CommunityFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CommunityFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getCommunityListToServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CommunityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 128
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 130
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/CommunityFragment;->communityAdapter:Lco/kr/festfive/adapter/CommunityAdapter;

    if-eqz v4, :cond_0

    .line 131
    iget-object v4, p0, Lco/kr/festfive/fragment/CommunityFragment;->communityAdapter:Lco/kr/festfive/adapter/CommunityAdapter;

    invoke-virtual {v4}, Lco/kr/festfive/adapter/CommunityAdapter;->clear()V

    .line 134
    :cond_0
    iget-object v4, p0, Lco/kr/festfive/fragment/CommunityFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "userId":Ljava/lang/String;
    const-string v4, "0"

    invoke-interface {v2, v3, v4, p1}, Lco/kr/festfive/service/FestInterface;->getCommunityList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 138
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/CommunityFragment$4;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/CommunityFragment$4;-><init>(Lco/kr/festfive/fragment/CommunityFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 190
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0800da

    if-ne v1, v2, :cond_0

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/CommunityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/InterestActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/CommunityFragment;->startActivity(Landroid/content/Intent;)V

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
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
    .line 69
    const v0, 0x7f0a0057

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->rootView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->interestButtonText:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->interestButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->searchEdittext:Landroid/widget/EditText;

    .line 74
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->searchEdittext:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/fragment/CommunityFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CommunityFragment$1;-><init>(Lco/kr/festfive/fragment/CommunityFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 88
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->searchIbtn:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->searchIbtn:Landroid/widget/ImageView;

    new-instance v1, Lco/kr/festfive/fragment/CommunityFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CommunityFragment$2;-><init>(Lco/kr/festfive/fragment/CommunityFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->rootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->listView:Landroid/widget/ListView;

    .line 97
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/fragment/CommunityFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CommunityFragment$3;-><init>(Lco/kr/festfive/fragment/CommunityFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    new-instance v0, Lco/kr/festfive/adapter/CommunityAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/CommunityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/CommunityAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->communityAdapter:Lco/kr/festfive/adapter/CommunityAdapter;

    .line 117
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 123
    iget-object v0, p0, Lco/kr/festfive/fragment/CommunityFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/CommunityFragment;->getCommunityListToServer(Ljava/lang/String;)V

    .line 124
    return-void
.end method
