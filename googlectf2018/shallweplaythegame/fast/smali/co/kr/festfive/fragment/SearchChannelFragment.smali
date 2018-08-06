.class public Lco/kr/festfive/fragment/SearchChannelFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchChannelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;
    }
.end annotation


# static fields
.field private static final REQUEST_SENDBIRD_CHANNEL_LIST_ACTIVITY:I = 0x65

.field private static final REQUEST_SENDBIRD_CHAT_ACTIVITY:I = 0x64

.field private static final REQUEST_SENDBIRD_MESSAGING_ACTIVITY:I = 0xc8

.field private static final REQUEST_SENDBIRD_MESSAGING_CHANNEL_LIST_ACTIVITY:I = 0xc9

.field private static final REQUEST_SENDBIRD_USER_LIST_ACTIVITY:I = 0x12c


# instance fields
.field final appId:Ljava/lang/String;

.field private channelMetaDataQuery:Lcom/sendbird/android/ChannelMetaDataQuery;

.field private chatId:Ljava/lang/String;

.field private closeButtonImage:Landroid/widget/TextView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private inflater:Landroid/view/LayoutInflater;

.field private lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

.field private listView:Landroid/widget/ListView;

.field private mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

.field private officeCntTv:Landroid/widget/TextView;

.field private officeId:Ljava/lang/String;

.field private onChat:Landroid/view/View$OnClickListener;

.field private rootView:Landroid/view/View;

.field private searchButtonImage:Landroid/widget/ImageView;

.field private searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

.field private searchChannelListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/SearchChannelListItem;",
            ">;"
        }
    .end annotation
.end field

.field private searchEdittext:Landroid/widget/EditText;

.field private selectedIndex:I

.field private sorting:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/SearchChannelListItem;",
            ">;"
        }
    .end annotation
.end field

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tabTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;",
            ">;"
        }
    .end annotation
.end field

.field userId:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 74
    const-string v0, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->appId:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/kr/festfive/utils/Utils;->generateDeviceUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->selectedIndex:I

    .line 84
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabTitle:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 350
    new-instance v0, Lco/kr/festfive/fragment/SearchChannelFragment$6;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/SearchChannelFragment$6;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->onChat:Landroid/view/View$OnClickListener;

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->sorting:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/fragment/SearchChannelFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->sorting()V

    return-void
.end method

.method static synthetic access$1100(Lco/kr/festfive/fragment/SearchChannelFragment;Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;
    .param p1, "x1"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/SearchChannelFragment;->getMetaData(Lcom/sendbird/android/model/Channel;)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/fragment/SearchChannelFragment;->getSearchUserListToServer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/SearchChannelFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->selectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/SearchChannelFragment;)Lco/kr/festfive/adapter/SearchChannelAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lco/kr/festfive/fragment/SearchChannelFragment;Lco/kr/festfive/adapter/SearchChannelAdapter;)Lco/kr/festfive/adapter/SearchChannelAdapter;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;
    .param p1, "x1"    # Lco/kr/festfive/adapter/SearchChannelAdapter;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabTitle:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method static synthetic access$702(Lco/kr/festfive/fragment/SearchChannelFragment;Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;
    .param p1, "x1"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object p1
.end method

.method static synthetic access$800(Lco/kr/festfive/fragment/SearchChannelFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/SearchChannelFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/SearchChannelFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getChatList(Ljava/lang/String;)V
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 529
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 530
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/adapter/SearchChannelAdapter;->clear()V

    .line 532
    iput-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    .line 535
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 537
    new-instance v0, Lco/kr/festfive/adapter/SearchChannelAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lco/kr/festfive/adapter/SearchChannelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    .line 539
    const-string v0, ""

    if-eq p1, v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    :cond_1
    invoke-static {}, Lcom/sendbird/android/SendBird;->queryChannelList()Lcom/sendbird/android/ChannelListQuery;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    .line 545
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    new-instance v1, Lco/kr/festfive/fragment/SearchChannelFragment$8;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/SearchChannelFragment$8;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/ChannelListQuery;->next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    .line 562
    return-void

    .line 542
    :cond_2
    invoke-static {p1}, Lcom/sendbird/android/SendBird;->queryChannelList(Ljava/lang/String;)Lcom/sendbird/android/ChannelListQuery;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->mChannelListQuery:Lcom/sendbird/android/ChannelListQuery;

    goto :goto_0
.end method

.method private getMetaData(Lcom/sendbird/android/model/Channel;)V
    .locals 3
    .param p1, "mItemList"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 565
    invoke-virtual {p1}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sendbird/android/SendBird;->queryChannelMetaData(Ljava/lang/String;)Lcom/sendbird/android/ChannelMetaDataQuery;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->channelMetaDataQuery:Lcom/sendbird/android/ChannelMetaDataQuery;

    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v0, "key":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "description"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    const-string v1, "message"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->channelMetaDataQuery:Lcom/sendbird/android/ChannelMetaDataQuery;

    new-instance v2, Lco/kr/festfive/fragment/SearchChannelFragment$9;

    invoke-direct {v2, p0, p1}, Lco/kr/festfive/fragment/SearchChannelFragment$9;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;Lcom/sendbird/android/model/Channel;)V

    invoke-virtual {v1, v0, v2}, Lcom/sendbird/android/ChannelMetaDataQuery;->get(Ljava/util/Collection;Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;)V

    .line 591
    return-void
.end method

.method private getOfficeListFromServer()V
    .locals 7

    .prologue
    .line 235
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 236
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 238
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v4, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "userId":Ljava/lang/String;
    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getSelectOffice(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 242
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/SearchChannelFragment$5;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/SearchChannelFragment$5;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 277
    return-void
.end method

.method private getSearchUserListToServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "officeId"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lco/kr/festfive/utils/Utils;->HideSoftKeyboard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 443
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v1

    .line 445
    .local v1, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    if-nez v2, :cond_0

    .line 446
    new-instance v2, Lco/kr/festfive/adapter/SearchChannelAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lco/kr/festfive/adapter/SearchChannelAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    .line 449
    :cond_0
    invoke-interface {v1, p1, p2}, Lco/kr/festfive/service/FestInterface;->getMemberList(Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 451
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v2, Lco/kr/festfive/fragment/SearchChannelFragment$7;

    invoke-direct {v2, p0}, Lco/kr/festfive/fragment/SearchChannelFragment$7;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    invoke-interface {v0, v2}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 522
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 408
    const-string v0, "fastfive"

    .line 410
    .local v0, "channelUrl":Ljava/lang/String;
    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lco/kr/festfive/fragment/SearchChannelFragment;->getChatList(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private initSendBird()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method private sorting()V
    .locals 11

    .prologue
    .line 421
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 425
    iget-object v10, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    new-instance v0, Lco/kr/festfive/model/SearchChannelListItem;

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v1}, Lco/kr/festfive/model/SearchChannelListItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v2}, Lco/kr/festfive/model/SearchChannelListItem;->getUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    .line 426
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v3}, Lco/kr/festfive/model/SearchChannelListItem;->getUserCompany()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v4}, Lco/kr/festfive/model/SearchChannelListItem;->getUserPosition()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v5}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    .line 427
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v6}, Lco/kr/festfive/model/SearchChannelListItem;->getOfficeRoomName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v7}, Lco/kr/festfive/model/SearchChannelListItem;->getUserProfileThumbUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/kr/festfive/model/SearchChannelListItem;

    invoke-virtual {v8}, Lco/kr/festfive/model/SearchChannelListItem;->getUserLevel()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lco/kr/festfive/model/SearchChannelListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {v10, v0}, Lco/kr/festfive/adapter/SearchChannelAdapter;->add(Ljava/lang/Object;)V

    .line 421
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 434
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->officeCntTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchChannelAdapter:Lco/kr/festfive/adapter/SearchChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080046

    if-ne v0, v1, :cond_0

    .line 601
    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 603
    :cond_0
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
    .line 120
    const v0, 0x7f0a0068

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->officeCntTv:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 125
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->closeButtonImage:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->closeButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchButtonImage:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchButtonImage:Landroid/widget/ImageView;

    new-instance v1, Lco/kr/festfive/fragment/SearchChannelFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/SearchChannelFragment$1;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    .line 139
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/fragment/SearchChannelFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/SearchChannelFragment$2;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 156
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->listView:Landroid/widget/ListView;

    .line 157
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lco/kr/festfive/fragment/SearchChannelFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/SearchChannelFragment$3;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 174
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 178
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v1, "user_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->initSendBird()V

    .line 184
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getChatList(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    const-string v1, "\uba64\ubc84 \uac80\uc0c9"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v0, 0x1

    iput v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->selectedIndex:I

    .line 189
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabTitle:Ljava/util/ArrayList;

    new-instance v1, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    const-string v2, "\uc804\uccb4"

    const-string v3, ""

    invoke-direct {v1, p0, v2, v3}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lco/kr/festfive/fragment/SearchChannelFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/SearchChannelFragment$4;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 216
    invoke-direct {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getOfficeListFromServer()V

    .line 217
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->officeId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lco/kr/festfive/fragment/SearchChannelFragment;->getSearchUserListToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 595
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 596
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 229
    sub-int v0, p4, p3

    .line 232
    .local v0, "count":I
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 225
    return-void
.end method

.method public setTab(Lcom/google/gson/JsonArray;)V
    .locals 10
    .param p1, "data"    # Lcom/google/gson/JsonArray;

    .prologue
    const/4 v9, 0x0

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 282
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabTitle:Ljava/util/ArrayList;

    new-instance v4, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    const-string v6, "office_name"

    invoke-virtual {v5, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "office_id"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;-><init>(Lco/kr/festfive/fragment/SearchChannelFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabTitle:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 287
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    .line 288
    .local v1, "tab":Landroid/support/design/widget/TabLayout$Tab;
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 289
    .local v2, "temp_tv":Landroid/widget/TextView;
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabTitle:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;

    invoke-virtual {v3}, Lco/kr/festfive/fragment/SearchChannelFragment$TabItem;->getOffice_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 292
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabTitle:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 293
    if-nez v0, :cond_1

    .line 294
    iput-object v1, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 296
    :cond_1
    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 297
    iget-object v3, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v1    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v2    # "temp_tv":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public startChat()V
    .locals 10

    .prologue
    .line 302
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getJoinUserList()Ljava/util/ArrayList;

    move-result-object v5

    .line 303
    .local v5, "joinUserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getJoinUserChannelList()Ljava/util/ArrayList;

    move-result-object v4

    .line 305
    .local v4, "joinUserChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 306
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 308
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    .line 348
    :goto_0
    return-void

    .line 316
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 317
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 319
    .restart local v0    # "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p0, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 327
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x1

    .line 328
    .local v3, "isJoin":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 329
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    if-eq v6, v7, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 330
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 331
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v8, v9, v6}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingJoinArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 332
    .restart local v0    # "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 328
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/SearchChannelFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-class v7, Lco/kr/festfive/activity/SendBirdMessagingActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v6, "FE51B777-56C3-4284-921B-6C5BB10DC53A"

    iget-object v7, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userId:Ljava/lang/String;

    iget-object v8, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->userName:Ljava/lang/String;

    iget-object v9, p0, Lco/kr/festfive/fragment/SearchChannelFragment;->chatId:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 340
    .restart local v0    # "args":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v2}, Lco/kr/festfive/fragment/SearchChannelFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
