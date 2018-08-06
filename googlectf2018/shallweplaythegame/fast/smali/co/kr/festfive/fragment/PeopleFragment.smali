.class public Lco/kr/festfive/fragment/PeopleFragment;
.super Landroid/support/v4/app/Fragment;
.source "PeopleFragment.java"

# interfaces
.implements Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;,
        Lco/kr/festfive/fragment/PeopleFragment$GroupHolder;,
        Lco/kr/festfive/fragment/PeopleFragment$TabItem;
    }
.end annotation


# instance fields
.field private SelectedOfficeNm:Ljava/lang/String;

.field private adapter:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

.field private closeButton:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/GroupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private groupListArr:Lcom/google/gson/JsonArray;

.field private inflater:Landroid/view/LayoutInflater;

.field private lastSelectTabIndex:I

.field private listview:Landroid/widget/ListView;

.field private objectData:Lcom/google/gson/JsonObject;

.field onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private searchEt:Landroid/widget/EditText;

.field private searchIbtn:Landroid/widget/ImageView;

.field private selectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private tabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->groupList:Ljava/util/ArrayList;

    .line 73
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->SelectedOfficeNm:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lco/kr/festfive/fragment/PeopleFragment;->context:Landroid/content/Context;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->lastSelectTabIndex:I

    .line 269
    iput-object v1, p0, Lco/kr/festfive/fragment/PeopleFragment;->objectData:Lcom/google/gson/JsonObject;

    .line 605
    new-instance v0, Lco/kr/festfive/fragment/PeopleFragment$8;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/PeopleFragment$8;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/PeopleFragment;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/fragment/PeopleFragment;Lco/kr/festfive/manager/FestPreferenceManager;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # Lco/kr/festfive/manager/FestPreferenceManager;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lco/kr/festfive/fragment/PeopleFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lco/kr/festfive/fragment/PeopleFragment;)Lcom/google/gson/JsonArray;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->groupListArr:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method static synthetic access$1102(Lco/kr/festfive/fragment/PeopleFragment;Lcom/google/gson/JsonArray;)Lcom/google/gson/JsonArray;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # Lcom/google/gson/JsonArray;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment;->groupListArr:Lcom/google/gson/JsonArray;

    return-object p1
.end method

.method static synthetic access$1200(Lco/kr/festfive/fragment/PeopleFragment;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    invoke-direct {p0}, Lco/kr/festfive/fragment/PeopleFragment;->drawGroupList()V

    return-void
.end method

.method static synthetic access$1300(Lco/kr/festfive/fragment/PeopleFragment;)Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->adapter:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/PeopleFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->lastSelectTabIndex:I

    return v0
.end method

.method static synthetic access$202(Lco/kr/festfive/fragment/PeopleFragment;I)I
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lco/kr/festfive/fragment/PeopleFragment;->lastSelectTabIndex:I

    return p1
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/support/design/widget/TabLayout;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->searchEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/PeopleFragment;Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # Lcom/google/gson/JsonObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lco/kr/festfive/fragment/PeopleFragment;->getGroupListFromServer(Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/PeopleFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/PeopleFragment;->hideSoftKey(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/PeopleFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;

    .prologue
    .line 58
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$702(Lco/kr/festfive/fragment/PeopleFragment;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment;->popupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$802(Lco/kr/festfive/fragment/PeopleFragment;Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 58
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment;->selectedTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object p1
.end method

.method static synthetic access$900(Lco/kr/festfive/fragment/PeopleFragment;Lcom/google/gson/JsonArray;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/PeopleFragment;
    .param p1, "x1"    # Lcom/google/gson/JsonArray;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/PeopleFragment;->drawOfficeList(Lcom/google/gson/JsonArray;)V

    return-void
.end method

.method private drawGroupList()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->adapter:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;->notifyDataSetChanged()V

    .line 309
    return-void
.end method

.method private drawOfficeList(Lcom/google/gson/JsonArray;)V
    .locals 4
    .param p1, "data"    # Lcom/google/gson/JsonArray;

    .prologue
    .line 274
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 275
    .local v1, "officeArr":Lcom/google/gson/JsonArray;
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 276
    .local v0, "jobj":Lcom/google/gson/JsonObject;
    const-string v2, "office_id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "office_name"

    const-string v3, "\uc804\uccb4"

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 279
    invoke-virtual {v1, p1}, Lcom/google/gson/JsonArray;->addAll(Lcom/google/gson/JsonArray;)V

    .line 281
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lco/kr/festfive/fragment/PeopleFragment;->reDrawOfficeList(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;)V

    .line 282
    return-void
.end method

.method private getGroupListFromServer(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    .locals 9
    .param p1, "object"    # Lcom/google/gson/JsonObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v7, "user_id"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "userId":Ljava/lang/String;
    const-string v6, "getGroupListFromServer"

    const-string v7, "getGroupListFromServer \ud638\ucd9c "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, "officeId":Ljava/lang/String;
    move-object v3, p2

    .line 364
    .local v3, "search":Ljava/lang/String;
    const-string v6, "==="

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "object : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v6, "==="

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key    : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string v6, "getGroupListFromServer"

    const-string v7, "getGroupListFromServer 2 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    if-eqz p1, :cond_1

    .line 368
    const-string v6, "office_id"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 375
    :cond_0
    :goto_0
    const-string v6, "getGroupListFromServer"

    const-string v7, "getGroupListFromServer 3 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, ""

    const-string v8, "loading..."

    invoke-static {v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 377
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v4

    .line 379
    .local v4, "service":Lco/kr/festfive/service/FestInterface;
    const-string v6, "getGroupListFromServer"

    const-string v7, "getGroupListFromServer 4 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-interface {v4, v5, v2, v3}, Lco/kr/festfive/service/FestInterface;->getCompanyList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 382
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v6, Lco/kr/festfive/fragment/PeopleFragment$7;

    invoke-direct {v6, p0, v1}, Lco/kr/festfive/fragment/PeopleFragment$7;-><init>(Lco/kr/festfive/fragment/PeopleFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v6}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 471
    return-void

    .line 370
    .end local v0    # "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    .end local v1    # "dialog":Landroid/app/ProgressDialog;
    .end local v4    # "service":Lco/kr/festfive/service/FestInterface;
    :cond_1
    if-eqz p2, :cond_0

    .line 371
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getOfficeListFromServer()V
    .locals 7

    .prologue
    .line 312
    invoke-virtual {p0}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, ""

    const-string v6, "loading..."

    invoke-static {v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 313
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v2

    .line 314
    .local v2, "service":Lco/kr/festfive/service/FestInterface;
    const-string v4, "PeopleFragment"

    const-string v5, "getOfficeListFromServer \ud638\ucd9c "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v4, p0, Lco/kr/festfive/fragment/PeopleFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v5, "user_id"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "userId":Ljava/lang/String;
    invoke-interface {v2, v3}, Lco/kr/festfive/service/FestInterface;->getSelectOffice(Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 320
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v4, Lco/kr/festfive/fragment/PeopleFragment$6;

    invoke-direct {v4, p0, v1}, Lco/kr/festfive/fragment/PeopleFragment$6;-><init>(Lco/kr/festfive/fragment/PeopleFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v4}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 355
    return-void
.end method

.method private hideSoftKey(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 623
    invoke-virtual {p0}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 624
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 625
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p0}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->inflater:Landroid/view/LayoutInflater;

    .line 119
    const v0, 0x7f0801f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 120
    const v0, 0x7f0800da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lco/kr/festfive/fragment/PeopleFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/PeopleFragment$1;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f080046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->closeButton:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->closeButton:Landroid/widget/TextView;

    new-instance v1, Lco/kr/festfive/fragment/PeopleFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/PeopleFragment$2;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0801cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->searchEt:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->searchEt:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/fragment/PeopleFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/PeopleFragment$3;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 159
    const v0, 0x7f0801cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->searchIbtn:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->searchIbtn:Landroid/widget/ImageView;

    new-instance v1, Lco/kr/festfive/fragment/PeopleFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/PeopleFragment$4;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v0, 0x7f080175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->listview:Landroid/widget/ListView;

    .line 178
    new-instance v0, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->adapter:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    .line 179
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/fragment/PeopleFragment;->adapter:Lco/kr/festfive/fragment/PeopleFragment$GroupListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 180
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->listview:Landroid/widget/ListView;

    iget-object v1, p0, Lco/kr/festfive/fragment/PeopleFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 182
    invoke-direct {p0}, Lco/kr/festfive/fragment/PeopleFragment;->getOfficeListFromServer()V

    .line 184
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lco/kr/festfive/fragment/PeopleFragment$5;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/PeopleFragment$5;-><init>(Lco/kr/festfive/fragment/PeopleFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 226
    return-void
.end method

.method private reDrawOfficeList(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonObject;)V
    .locals 12
    .param p1, "data"    # Lcom/google/gson/JsonArray;
    .param p2, "objData"    # Lcom/google/gson/JsonObject;

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0a0083

    const/4 v9, 0x0

    .line 287
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "blankView":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 291
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string v7, "office_name"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "officeName":Ljava/lang/String;
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    .line 293
    .local v4, "tab":Landroid/support/design/widget/TabLayout$Tab;
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/PeopleFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 294
    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 295
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 297
    new-instance v6, Lco/kr/festfive/fragment/PeopleFragment$TabItem;

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-direct {v6, p0, v3, v7}, Lco/kr/festfive/fragment/PeopleFragment$TabItem;-><init>(Lco/kr/festfive/fragment/PeopleFragment;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 298
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v6, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v3    # "officeName":Ljava/lang/String;
    .end local v4    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lco/kr/festfive/fragment/PeopleFragment;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v10, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 303
    .local v1, "blankView2":Landroid/view/View;
    return-void
.end method


# virtual methods
.method public getBackKeyListener()Lco/kr/festfive/activity/PeoPleActivity$OnBackKeyListener;
    .locals 0

    .prologue
    .line 86
    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->popupWindow:Landroid/widget/PopupWindow;

    .line 636
    :goto_0
    return-void

    .line 634
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/PeopleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 111
    const v1, 0x7f0a0066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "rootView":Landroid/view/View;
    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/PeopleFragment;->initView(Landroid/view/View;)V

    .line 114
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 103
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lco/kr/festfive/fragment/PeopleFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 106
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 267
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lco/kr/festfive/fragment/PeopleFragment;->context:Landroid/content/Context;

    .line 83
    return-void
.end method
