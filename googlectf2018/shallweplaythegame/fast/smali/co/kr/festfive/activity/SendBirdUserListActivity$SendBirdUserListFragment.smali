.class public Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SendBirdUserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendBirdUserListFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;,
        Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

.field private mHandler:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;

.field private mListView:Landroid/widget/ListView;

.field private mSelectedUsers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sendbird/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListQuery:Lcom/sendbird/android/UserListQuery;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 218
    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .prologue
    .line 202
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->loadMoreUsers()V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .prologue
    .line 202
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .prologue
    .line 202
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mSelectedUsers:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .prologue
    .line 202
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mHandler:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;

    return-object v0
.end method

.method private initUIComponents(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 233
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mSelectedUsers:Ljava/util/HashSet;

    .line 234
    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mListView:Landroid/widget/ListView;

    .line 235
    new-instance v0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    .line 236
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$1;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$2;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 254
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    return-void
.end method

.method private loadMoreUsers()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mUserListQuery:Lcom/sendbird/android/UserListQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mUserListQuery:Lcom/sendbird/android/UserListQuery;

    invoke-virtual {v0}, Lcom/sendbird/android/UserListQuery;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mUserListQuery:Lcom/sendbird/android/UserListQuery;

    invoke-virtual {v0}, Lcom/sendbird/android/UserListQuery;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mUserListQuery:Lcom/sendbird/android/UserListQuery;

    new-instance v1, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$3;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/UserListQuery;->next(Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    const v1, 0x7f0a0092

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->initUIComponents(Landroid/view/View;)V

    .line 226
    invoke-static {}, Lcom/sendbird/android/SendBird;->queryUserList()Lcom/sendbird/android/UserListQuery;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mUserListQuery:Lcom/sendbird/android/UserListQuery;

    .line 227
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mUserListQuery:Lcom/sendbird/android/UserListQuery;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/sendbird/android/UserListQuery;->setLimit(I)V

    .line 229
    return-object v0
.end method

.method public setSendBirdUserListHandler(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;)V
    .locals 0
    .param p1, "handler"    # Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;

    .prologue
    .line 214
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->mHandler:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;

    .line 215
    return-void
.end method
