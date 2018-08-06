.class public Lco/kr/festfive/fragment/NewsFeedListFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewsFeedListFragment.java"

# interfaces
.implements Lco/kr/festfive/listener/DialogListener;
.implements Lco/kr/festfive/listener/DeleteListener;
.implements Lco/kr/festfive/listener/ItemActionListener;
.implements Lco/kr/festfive/listener/AddItemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;,
        Lco/kr/festfive/fragment/NewsFeedListFragment$NoticeHolder;,
        Lco/kr/festfive/fragment/NewsFeedListFragment$PagerAdapter;
    }
.end annotation


# instance fields
.field private category:Ljava/lang/String;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private listView:Landroid/widget/ListView;

.field private mIsLoading:Z

.field private mIsScrollingForShownNotify:Z

.field private mIsShownNotify:Z

.field private mLockListView:Z

.field private mPage:I

.field private mPagerAdapter:Lco/kr/festfive/fragment/NewsFeedListFragment$PagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private newButtonImage:Landroid/widget/ImageView;

.field private newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

.field private noticeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NoticeListMainItem;",
            ">;"
        }
    .end annotation
.end field

.field private reportImage:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private searchButtonImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 61
    iput-boolean v1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mLockListView:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->noticeList:Ljava/util/ArrayList;

    .line 64
    iput v1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    .line 65
    iput-boolean v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mIsLoading:Z

    .line 66
    iput-boolean v1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mIsShownNotify:Z

    .line 67
    iput-boolean v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mIsScrollingForShownNotify:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->category:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/NewsFeedListFragment;)Lco/kr/festfive/adapter/NewFeedAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/fragment/NewsFeedListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/NewsFeedListFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 54
    iget v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    return v0
.end method

.method static synthetic access$202(Lco/kr/festfive/fragment/NewsFeedListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    return p1
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/NewsFeedListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->noticeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lco/kr/festfive/fragment/NewsFeedListFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 54
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->noticeList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/NewsFeedListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;

    .prologue
    .line 54
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/fragment/NewsFeedListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mLockListView:Z

    return p1
.end method

.method private createComplaintChannel(Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;)V
    .locals 7
    .param p1, "listener"    # Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;

    .prologue
    .line 201
    const/4 v4, 0x1

    iput-boolean v4, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mIsLoading:Z

    .line 202
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 204
    .local v1, "dialog":Landroid/app/ProgressDialog;
    iget-object v4, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "userId":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 207
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->createComplaint(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 209
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/NewsFeedListFragment$3;

    invoke-direct {v4, p0, v1, p1}, Lco/kr/festfive/fragment/NewsFeedListFragment$3;-><init>(Lco/kr/festfive/fragment/NewsFeedListFragment;Landroid/app/ProgressDialog;Lco/kr/festfive/fragment/NewsFeedListFragment$OnCreateComplaint;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 248
    return-void
.end method

.method private getNewsFeedListToServer(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 251
    iput-boolean v3, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mIsLoading:Z

    .line 255
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 256
    .local v7, "dialog":Landroid/app/ProgressDialog;
    const-string v2, "loading..."

    invoke-virtual {v7, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 257
    const-string v2, ""

    invoke-virtual {v7, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    iget v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    if-ne v2, v3, :cond_0

    .line 260
    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 263
    :cond_0
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v0

    .line 269
    .local v0, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "user_id"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "office_id"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "officeId":Ljava/lang/String;
    iget v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    const-string v3, ""

    iget-object v5, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->category:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lco/kr/festfive/service/FestInterface;->getNewsFeedList(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v6

    .line 274
    .local v6, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/fragment/NewsFeedListFragment$4;

    invoke-direct {v2, p0, v7, v1, p1}, Lco/kr/festfive/fragment/NewsFeedListFragment$4;-><init>(Lco/kr/festfive/fragment/NewsFeedListFragment;Landroid/app/ProgressDialog;Ljava/lang/String;I)V

    invoke-interface {v6, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 362
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-boolean v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mLockListView:Z

    if-nez v0, :cond_0

    .line 134
    iget v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    .line 135
    iput-boolean v1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mLockListView:Z

    .line 137
    invoke-direct {p0, v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getNewsFeedListToServer(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public delete(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 381
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->clear()V

    .line 382
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getNewsFeedListToServer(I)V

    .line 383
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NewFeedListItem;)V
    .locals 3
    .param p1, "newFeedListItem"    # Lco/kr/festfive/model/NewFeedListItem;

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/DetailFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 395
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "news_feed_id"

    invoke-virtual {p1}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->startActivity(Landroid/content/Intent;)V

    .line 398
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NoticeListItem;)V
    .locals 0
    .param p1, "noticeListItem"    # Lco/kr/festfive/model/NoticeListItem;

    .prologue
    .line 403
    return-void
.end method

.method public getReload()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public link(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 428
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 430
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->startActivity(Landroid/content/Intent;)V

    .line 432
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v0, 0x3e8

    .line 177
    if-ne p1, v0, :cond_1

    .line 178
    if-ne p2, v0, :cond_1

    .line 179
    const-string v0, "namsang"

    const-string v1, "\ucd08\uae30\ud654\uc791\uc5c5?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->clear()V

    .line 184
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getNewsFeedListToServer(I)V

    .line 189
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 91
    const v2, 0x7f0a0063

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->rootView:Landroid/view/View;

    .line 92
    iput v5, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->mPage:I

    .line 96
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "userId":Ljava/lang/String;
    new-instance v0, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;

    invoke-direct {v0}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;-><init>()V

    .line 98
    .local v0, "authChecker":Lco/kr/festfive/model/auth/WriteFeedAuthChecker;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/model/auth/WriteFeedAuthChecker;->checkAuth(Ljava/lang/String;Lco/kr/festfive/model/auth/listener/OnAuthCheckedListener;)V

    .line 103
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->rootView:Landroid/view/View;

    const v3, 0x7f080124

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->listView:Landroid/widget/ListView;

    .line 105
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->listView:Landroid/widget/ListView;

    new-instance v3, Lco/kr/festfive/fragment/NewsFeedListFragment$1;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/NewsFeedListFragment$1;-><init>(Lco/kr/festfive/fragment/NewsFeedListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    new-instance v2, Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p0, p0, p0}, Lco/kr/festfive/adapter/NewFeedAdapter;-><init>(Landroid/app/Activity;Lco/kr/festfive/listener/DeleteListener;Lco/kr/festfive/listener/ItemActionListener;Lco/kr/festfive/listener/AddItemListener;)V

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    .line 119
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    new-instance v3, Lco/kr/festfive/fragment/NewsFeedListFragment$2;

    invoke-direct {v3, p0}, Lco/kr/festfive/fragment/NewsFeedListFragment$2;-><init>(Lco/kr/festfive/fragment/NewsFeedListFragment;)V

    invoke-virtual {v2, v3}, Lco/kr/festfive/adapter/NewFeedAdapter;->setOnDetailListener(Lco/kr/festfive/adapter/NewFeedAdapter$OnDetailListener;)V

    .line 127
    invoke-direct {p0, v5}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getNewsFeedListToServer(I)V

    .line 129
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 172
    return-void
.end method

.method public onSuccess(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 366
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_0

    .line 368
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getNewsFeedListToServer(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->newFeedAdapter:Lco/kr/festfive/adapter/NewFeedAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/adapter/NewFeedAdapter;->clear()V

    .line 196
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getNewsFeedListToServer(I)V

    .line 198
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/SearchNewsFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "searchData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->startActivity(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->category:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public userDetail(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedListFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "myUserId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->startActivity(Landroid/content/Intent;)V

    .line 424
    :goto_0
    return-void

    .line 420
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "targetUserId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
