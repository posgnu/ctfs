.class public Lco/kr/festfive/fragment/NoticeFragment;
.super Landroid/support/v4/app/Fragment;
.source "NoticeFragment.java"


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;"
        }
    .end annotation
.end field

.field private expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private noticeExAdapter:Lco/kr/festfive/adapter/NoticeExAdapter;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->arrayList:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/NoticeFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/NoticeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/NoticeFragment;)Lco/kr/festfive/adapter/NoticeExAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NoticeFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->noticeExAdapter:Lco/kr/festfive/adapter/NoticeExAdapter;

    return-object v0
.end method

.method private getNoticeFromServer()V
    .locals 8

    .prologue
    .line 112
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NoticeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, ""

    const-string v7, "loading..."

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 114
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 116
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v5, :cond_0

    .line 117
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    iput-object v5, p0, Lco/kr/festfive/fragment/NoticeFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 120
    :cond_0
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "userId":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/fragment/NoticeFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "office_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "officeId":Ljava/lang/String;
    const-string v5, "==Log=="

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "office id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {v3, v4, v2}, Lco/kr/festfive/service/FestInterface;->getNotice(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 126
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v5, Lco/kr/festfive/fragment/NoticeFragment$2;

    invoke-direct {v5, p0, v1}, Lco/kr/festfive/fragment/NoticeFragment$2;-><init>(Lco/kr/festfive/fragment/NoticeFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
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
    .line 63
    const v0, 0x7f0a0064

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->rootView:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/AnimatedExpandableListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    .line 68
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    new-instance v1, Lco/kr/festfive/fragment/NoticeFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/NoticeFragment$1;-><init>(Lco/kr/festfive/fragment/NoticeFragment;)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/model/AnimatedExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 91
    new-instance v0, Lco/kr/festfive/adapter/NoticeExAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NoticeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/adapter/NoticeExAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->noticeExAdapter:Lco/kr/festfive/adapter/NoticeExAdapter;

    .line 92
    invoke-direct {p0}, Lco/kr/festfive/fragment/NoticeFragment;->getNoticeFromServer()V

    .line 94
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lco/kr/festfive/fragment/NoticeFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "NoticeFragment"

    const-string v1, "onDestroyView \ud638\ucd9c"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 102
    return-void
.end method
