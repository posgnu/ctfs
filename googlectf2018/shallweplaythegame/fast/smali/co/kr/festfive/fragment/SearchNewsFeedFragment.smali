.class public Lco/kr/festfive/fragment/SearchNewsFeedFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchNewsFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/kr/festfive/listener/DeleteListener;
.implements Lco/kr/festfive/listener/ItemActionListener;
.implements Lco/kr/festfive/listener/AddItemListener;


# instance fields
.field private category:Ljava/lang/String;

.field private closeButtonImage:Landroid/widget/LinearLayout;

.field private dataSize:I

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private gitTest:Ljava/lang/String;

.field private isMain:Z

.field private listView:Landroid/widget/ListView;

.field private mLockListView:Z

.field private mPage:I

.field private menuTab:Landroid/widget/LinearLayout;

.field private newSearch:Z

.field private rootView:Landroid/view/View;

.field private screen:Landroid/widget/LinearLayout;

.field private searchEdittext:Landroid/widget/EditText;

.field private searchNewsFeedAdapter:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

.field private searchWord:Ljava/lang/String;

.field private search_button:Landroid/widget/Button;

.field private titleRelative:Landroid/widget/RelativeLayout;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    iput-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    .line 68
    iput-boolean v3, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->isMain:Z

    .line 69
    iput-boolean v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mLockListView:Z

    .line 74
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 76
    iput v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mPage:I

    .line 77
    iput v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->dataSize:I

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->category:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->gitTest:Ljava/lang/String;

    .line 81
    iput-boolean v3, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->newSearch:Z

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Lco/kr/festfive/adapter/SearchNewsFeedAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchNewsFeedAdapter:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1102(Lco/kr/festfive/fragment/SearchNewsFeedFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mLockListView:Z

    return p1
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/SearchNewsFeedFragment;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getNewsFeedListToServer(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->screen:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->dataSize:I

    return v0
.end method

.method static synthetic access$402(Lco/kr/festfive/fragment/SearchNewsFeedFragment;I)I
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    iput p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->dataSize:I

    return p1
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->closeButtonImage:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->titleRelative:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->titleText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    .prologue
    .line 57
    iget v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mPage:I

    return v0
.end method

.method private getNewsFeedListToServer(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "newSearch"    # Z

    .prologue
    .line 241
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 242
    .local v7, "dialog":Landroid/app/ProgressDialog;
    const-string v2, "loading..."

    invoke-virtual {v7, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 243
    const-string v2, ""

    invoke-virtual {v7, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v0

    .line 247
    .local v0, "service":Lco/kr/festfive/service/FestInterface;
    if-eqz p2, :cond_0

    .line 248
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchNewsFeedAdapter:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchNewsFeedAdapter:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-virtual {v2}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;->clear()V

    .line 253
    :cond_0
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "user_id"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "office_id"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "officeId":Ljava/lang/String;
    iget v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mPage:I

    iget-object v5, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->category:Ljava/lang/String;

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lco/kr/festfive/service/FestInterface;->getNewsFeedList(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v6

    .line 258
    .local v6, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;

    invoke-direct {v2, p0, v7}, Lco/kr/festfive/fragment/SearchNewsFeedFragment$5;-><init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v6, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 316
    return-void
.end method

.method public static hideKeyboard(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 385
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 390
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public addItem()V
    .locals 2

    .prologue
    .line 226
    iget-boolean v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mLockListView:Z

    if-nez v1, :cond_0

    .line 227
    iget v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mPage:I

    .line 228
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->mLockListView:Z

    .line 229
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "search":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getNewsFeedListToServer(Ljava/lang/String;Z)V

    .line 232
    .end local v0    # "search":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public delete(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 337
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NewFeedListItem;)V
    .locals 3
    .param p1, "newFeedListItem"    # Lco/kr/festfive/model/NewFeedListItem;

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/DetailFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "news_feed_id"

    invoke-virtual {p1}, Lco/kr/festfive/model/NewFeedListItem;->getNewsFeedId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 344
    return-void
.end method

.method public detail(Lco/kr/festfive/model/NoticeListItem;)V
    .locals 0
    .param p1, "noticeListItem"    # Lco/kr/festfive/model/NoticeListItem;

    .prologue
    .line 349
    return-void
.end method

.method public link(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 372
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 374
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080045

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801d0

    if-ne v0, v1, :cond_1

    .line 327
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SEARCHWORD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->isMain:Z

    .line 90
    const-string v0, "SearchNewsFeedFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchWord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 95
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 113
    const v1, 0x7f0a0069

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->closeButtonImage:Landroid/widget/LinearLayout;

    .line 116
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->closeButtonImage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->screen:Landroid/widget/LinearLayout;

    .line 120
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801c8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->search_button:Landroid/widget/Button;

    .line 122
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0801cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    .line 123
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 127
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 129
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    new-instance v2, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment$1;-><init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 147
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->search_button:Landroid/widget/Button;

    new-instance v2, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment$2;-><init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    new-instance v2, Lco/kr/festfive/fragment/SearchNewsFeedFragment$3;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment$3;-><init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    const v2, 0x7f08020b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->titleRelative:Landroid/widget/RelativeLayout;

    .line 181
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->titleRelative:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    const v2, 0x7f08020d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->titleText:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->listView:Landroid/widget/ListView;

    .line 186
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lco/kr/festfive/fragment/SearchNewsFeedFragment$4;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment$4;-><init>(Lco/kr/festfive/fragment/SearchNewsFeedFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    new-instance v1, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0, p0}, Lco/kr/festfive/adapter/SearchNewsFeedAdapter;-><init>(Landroid/app/Activity;Lco/kr/festfive/listener/DeleteListener;Lco/kr/festfive/listener/ItemActionListener;Lco/kr/festfive/listener/AddItemListener;)V

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchNewsFeedAdapter:Lco/kr/festfive/adapter/SearchNewsFeedAdapter;

    .line 212
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    invoke-static {v1}, Lco/kr/festfive/utils/Utils;->IsNullSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 215
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getNewsFeedListToServer(Ljava/lang/String;Z)V

    .line 216
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->screen:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 217
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->hideKeyboard(Landroid/app/Activity;)V

    .line 221
    :cond_1
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 238
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/SearchNewsFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "searchData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->category:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setMenuTab(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "_menuTab"    # Landroid/widget/LinearLayout;

    .prologue
    .line 107
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    .line 108
    return-void
.end method

.method public userDetail(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v3, "user_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "myUserId":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/fragment/MyDetailUserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 365
    :goto_0
    return-void

    .line 361
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/kr/festfive/activity/UserDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "targetUserId"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
