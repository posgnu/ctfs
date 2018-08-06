.class public Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;
.super Landroid/support/v4/app/Fragment;
.source "SendBirdChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendBirdChannelListFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;,
        Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

.field private mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

.field private mChannelListSearchQuery:Lcom/sendbird/android/ChannelListQuery;

.field private mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

.field private mEtxtSearch:Landroid/widget/EditText;

.field private mHandler:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;

.field private mListView:Landroid/widget/ListView;

.field private mSearchAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mHandler:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->loadMoreChannels()V

    return-void
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->showChannelList()V

    return-void
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->showSearchList()V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mEtxtSearch:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mSearchAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    return-object v0
.end method

.method private initUIComponents(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 234
    const v0, 0x7f080124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mListView:Landroid/widget/ListView;

    .line 235
    new-instance v0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    .line 236
    new-instance v0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mSearchAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    .line 237
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$2;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 246
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$3;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 260
    const v0, 0x7f08009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mEtxtSearch:Landroid/widget/EditText;

    .line 261
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mEtxtSearch:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$4;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mEtxtSearch:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$5;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$5;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    return-void
.end method

.method private loadMoreChannels()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    if-ne v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    invoke-virtual {v0}, Lcom/sendbird/android/ChannelListQuery;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    invoke-virtual {v0}, Lcom/sendbird/android/ChannelListQuery;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$6;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$6;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mSearchAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListSearchQuery:Lcom/sendbird/android/ChannelListQuery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListSearchQuery:Lcom/sendbird/android/ChannelListQuery;

    invoke-virtual {v0}, Lcom/sendbird/android/ChannelListQuery;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListSearchQuery:Lcom/sendbird/android/ChannelListQuery;

    invoke-virtual {v0}, Lcom/sendbird/android/ChannelListQuery;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListSearchQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$7;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$7;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    goto :goto_0
.end method

.method private search(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 344
    :cond_0
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->showChannelList()V

    .line 366
    :goto_0
    return-void

    .line 348
    :cond_1
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->showSearchList()V

    .line 350
    invoke-static {p1}, Lcom/sendbird/android/SendBird;->queryChannelList(Ljava/lang/String;)Lcom/sendbird/android/ChannelListQuery;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListSearchQuery:Lcom/sendbird/android/ChannelListQuery;

    .line 351
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListSearchQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$8;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$8;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    goto :goto_0
.end method

.method private showChannelList()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    .line 332
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 333
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->notifyDataSetChanged()V

    .line 334
    return-void
.end method

.method private showSearchList()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mSearchAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    .line 338
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mCurrentAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->notifyDataSetChanged()V

    .line 340
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const v1, 0x7f0a008d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->initUIComponents(Landroid/view/View;)V

    .line 213
    invoke-static {}, Lcom/sendbird/android/SendBird;->queryChannelList()Lcom/sendbird/android/ChannelListQuery;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    .line 214
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v2, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$1;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;)V

    invoke-virtual {v1, v2}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    .line 228
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->showChannelList()V

    .line 230
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 326
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->notifyDataSetChanged()V

    .line 327
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mSearchAdapter:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelAdapter;->notifyDataSetChanged()V

    .line 328
    return-void
.end method

.method public setSendBirdChannelListHandler(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;)V
    .locals 0
    .param p1, "handler"    # Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;

    .prologue
    .line 201
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->mHandler:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;

    .line 202
    return-void
.end method
