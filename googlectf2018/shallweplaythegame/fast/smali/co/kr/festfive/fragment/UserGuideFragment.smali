.class public Lco/kr/festfive/fragment/UserGuideFragment;
.super Landroid/support/v4/app/Fragment;
.source "UserGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private backButtonLinear:Landroid/widget/TextView;

.field private child:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private childListContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private childListImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countText:Landroid/widget/TextView;

.field private expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private group:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private interestButtonImage:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private searchEdittext:Landroid/widget/EditText;

.field private userGuideAdapter:Lco/kr/festfive/adapter/UserGuideAdapter;

.field private userListItem:Lco/kr/festfive/model/UserListItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/UserGuideFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->searchEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/UserGuideFragment;->getUserGuideListToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/UserGuideFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->group:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/UserGuideFragment;->group:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->child:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/UserGuideFragment;->child:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->childListContent:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/UserGuideFragment;->childListContent:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/UserGuideFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->childListImage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lco/kr/festfive/fragment/UserGuideFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 40
    iput-object p1, p0, Lco/kr/festfive/fragment/UserGuideFragment;->childListImage:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/UserGuideFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->countText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/UserGuideFragment;)Lco/kr/festfive/adapter/UserGuideAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/UserGuideFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->userGuideAdapter:Lco/kr/festfive/adapter/UserGuideAdapter;

    return-object v0
.end method

.method private getUserGuideListToServer(Ljava/lang/String;)V
    .locals 7
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0}, Lco/kr/festfive/fragment/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 149
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 151
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    new-instance v4, Lco/kr/festfive/adapter/UserGuideAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lco/kr/festfive/adapter/UserGuideAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lco/kr/festfive/fragment/UserGuideFragment;->userGuideAdapter:Lco/kr/festfive/adapter/UserGuideAdapter;

    .line 153
    iget-object v4, p0, Lco/kr/festfive/fragment/UserGuideFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/UserListItem;->getOfficeId()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "officeId":Ljava/lang/String;
    invoke-interface {v3, v2}, Lco/kr/festfive/service/FestInterface;->getUserGuide(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 157
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/UserGuideFragment$3;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/UserGuideFragment$3;-><init>(Lco/kr/festfive/fragment/UserGuideFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080022

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lco/kr/festfive/fragment/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 226
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
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
    .line 75
    const v0, 0x7f0a006c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->rootView:Landroid/view/View;

    .line 77
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getUserListItem()Lco/kr/festfive/model/UserListItem;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->userListItem:Lco/kr/festfive/model/UserListItem;

    .line 79
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->backButtonLinear:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->backButtonLinear:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->searchEdittext:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->searchEdittext:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/fragment/UserGuideFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/UserGuideFragment$1;-><init>(Lco/kr/festfive/fragment/UserGuideFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 108
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->countText:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/AnimatedExpandableListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    .line 111
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    new-instance v1, Lco/kr/festfive/fragment/UserGuideFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/UserGuideFragment$2;-><init>(Lco/kr/festfive/fragment/UserGuideFragment;)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/model/AnimatedExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 134
    new-instance v0, Lco/kr/festfive/adapter/UserGuideAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/UserGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/UserGuideAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->userGuideAdapter:Lco/kr/festfive/adapter/UserGuideAdapter;

    .line 136
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/UserGuideFragment;->getUserGuideListToServer(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lco/kr/festfive/fragment/UserGuideFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 145
    return-void
.end method
