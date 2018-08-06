.class public Lco/kr/festfive/fragment/CooperationFragment;
.super Landroid/support/v4/app/Fragment;
.source "CooperationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/kr/festfive/listener/CooperateItemListener;


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/CooperationListItem;",
            ">;"
        }
    .end annotation
.end field

.field private backButtonImage:Landroid/widget/TextView;

.field private callText:Ljava/lang/String;

.field private cooperationAdapter:Lco/kr/festfive/adapter/CooperationAdapter;

.field private expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private interestButtonImage:Landroid/widget/ImageView;

.field private mailText:Ljava/lang/String;

.field private onCall:Landroid/view/View$OnClickListener;

.field private onMail:Landroid/view/View$OnClickListener;

.field private rootView:Landroid/view/View;

.field private searchButton:Landroid/widget/ImageView;

.field private searchEdittext:Landroid/widget/EditText;

.field private selectedIndex:I

.field private tabLayout:Landroid/support/design/widget/TabLayout;

.field private tabTitle:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 55
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 56
    iput v3, p0, Lco/kr/festfive/fragment/CooperationFragment;->selectedIndex:I

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\uc5c5\ubb34"

    aput-object v2, v0, v1

    const-string v1, "\ub77c\uc774\ud504"

    aput-object v1, v0, v3

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->tabTitle:[Ljava/lang/String;

    .line 328
    new-instance v0, Lco/kr/festfive/fragment/CooperationFragment$6;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/CooperationFragment$6;-><init>(Lco/kr/festfive/fragment/CooperationFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->onCall:Landroid/view/View$OnClickListener;

    .line 337
    new-instance v0, Lco/kr/festfive/fragment/CooperationFragment$7;

    invoke-direct {v0, p0}, Lco/kr/festfive/fragment/CooperationFragment$7;-><init>(Lco/kr/festfive/fragment/CooperationFragment;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->onMail:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/CooperationFragment;)I
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 46
    iget v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->selectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lco/kr/festfive/fragment/CooperationFragment;I)I
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lco/kr/festfive/fragment/CooperationFragment;->selectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/adapter/CooperationAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->cooperationAdapter:Lco/kr/festfive/adapter/CooperationAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/fragment/CooperationFragment;Lco/kr/festfive/adapter/CooperationAdapter;)Lco/kr/festfive/adapter/CooperationAdapter;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;
    .param p1, "x1"    # Lco/kr/festfive/adapter/CooperationAdapter;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/fragment/CooperationFragment;->cooperationAdapter:Lco/kr/festfive/adapter/CooperationAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/CooperationFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchEdittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lco/kr/festfive/fragment/CooperationFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lco/kr/festfive/fragment/CooperationFragment;->getOfficenerListToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lco/kr/festfive/fragment/CooperationFragment;)Lco/kr/festfive/model/AnimatedExpandableListView;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    return-object v0
.end method

.method static synthetic access$600(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->callText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lco/kr/festfive/fragment/CooperationFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/CooperationFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->mailText:Ljava/lang/String;

    return-object v0
.end method

.method private getOfficenerListToServer(Ljava/lang/String;)V
    .locals 8
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, ""

    const-string v7, "loading..."

    invoke-static {v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 205
    .local v1, "dialog":Landroid/app/ProgressDialog;
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getService()Lco/kr/festfive/service/FestInterface;

    move-result-object v3

    .line 207
    .local v3, "service":Lco/kr/festfive/service/FestInterface;
    iget-object v5, p0, Lco/kr/festfive/fragment/CooperationFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "office_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "officeId":Ljava/lang/String;
    iget-object v5, p0, Lco/kr/festfive/fragment/CooperationFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "userId":Ljava/lang/String;
    invoke-interface {v3, v2, v4, p1}, Lco/kr/festfive/service/FestInterface;->getOfficenerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/Call;

    move-result-object v0

    .line 212
    .local v0, "call":Lretrofit/Call;, "Lretrofit/Call<Lcom/google/gson/JsonObject;>;"
    new-instance v5, Lco/kr/festfive/fragment/CooperationFragment$5;

    invoke-direct {v5, p0, v1}, Lco/kr/festfive/fragment/CooperationFragment$5;-><init>(Lco/kr/festfive/fragment/CooperationFragment;Landroid/app/ProgressDialog;)V

    invoke-interface {v0, v5}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 278
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Lco/kr/festfive/fragment/CooperationFragment;->callText:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lco/kr/festfive/fragment/CooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0095

    invoke-virtual {p0, v2}, Lco/kr/festfive/fragment/CooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\uc804\ud654\ub97c \uac78\uae4c\uc694?"

    iget-object v4, p0, Lco/kr/festfive/fragment/CooperationFragment;->onCall:Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lco/kr/festfive/utils/Utils;->Confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 318
    return-void
.end method

.method public homepage(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 324
    .local v1, "u":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/CooperationFragment;->startActivity(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->rootView:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->backButtonImage:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->backButtonImage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchButton:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchButton:Landroid/widget/ImageView;

    new-instance v1, Lco/kr/festfive/fragment/CooperationFragment$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CooperationFragment$2;-><init>(Lco/kr/festfive/fragment/CooperationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchEdittext:Landroid/widget/EditText;

    .line 139
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchEdittext:Landroid/widget/EditText;

    new-instance v1, Lco/kr/festfive/fragment/CooperationFragment$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CooperationFragment$3;-><init>(Lco/kr/festfive/fragment/CooperationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 168
    new-instance v0, Lco/kr/festfive/adapter/CooperationAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lco/kr/festfive/adapter/CooperationAdapter;-><init>(Landroid/content/Context;Lco/kr/festfive/listener/CooperateItemListener;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->cooperationAdapter:Lco/kr/festfive/adapter/CooperationAdapter;

    .line 170
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->rootView:Landroid/view/View;

    const v1, 0x7f08009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/model/AnimatedExpandableListView;

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    .line 171
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->expandableListView:Lco/kr/festfive/model/AnimatedExpandableListView;

    new-instance v1, Lco/kr/festfive/fragment/CooperationFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CooperationFragment$4;-><init>(Lco/kr/festfive/fragment/CooperationFragment;)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/model/AnimatedExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->arrayList:Ljava/util/ArrayList;

    .line 195
    return-void
.end method

.method public mail(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lco/kr/festfive/fragment/CooperationFragment;->mailText:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lco/kr/festfive/fragment/CooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0095

    invoke-virtual {p0, v2}, Lco/kr/festfive/fragment/CooperationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\uc774\uba54\uc77c\uc744 \ubcf4\ub0b4\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    iget-object v4, p0, Lco/kr/festfive/fragment/CooperationFragment;->onMail:Landroid/view/View$OnClickListener;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lco/kr/festfive/utils/Utils;->Confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 311
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080021

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080023

    if-ne v0, v1, :cond_2

    .line 283
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08010f

    if-ne v0, v1, :cond_3

    .line 290
    const/4 v0, 0x1

    iput v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->selectedIndex:I

    .line 291
    new-instance v0, Lco/kr/festfive/adapter/CooperationAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lco/kr/festfive/adapter/CooperationAdapter;-><init>(Landroid/content/Context;Lco/kr/festfive/listener/CooperateItemListener;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->cooperationAdapter:Lco/kr/festfive/adapter/CooperationAdapter;

    .line 292
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/CooperationFragment;->getOfficenerListToServer(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08011b

    if-ne v0, v1, :cond_1

    .line 298
    const/4 v0, 0x2

    iput v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->selectedIndex:I

    .line 299
    new-instance v0, Lco/kr/festfive/adapter/CooperationAdapter;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lco/kr/festfive/adapter/CooperationAdapter;-><init>(Landroid/content/Context;Lco/kr/festfive/listener/CooperateItemListener;)V

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->cooperationAdapter:Lco/kr/festfive/adapter/CooperationAdapter;

    .line 300
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/CooperationFragment;->getOfficenerListToServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
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
    .line 80
    const v0, 0x7f0a0059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->rootView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0801f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 82
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lco/kr/festfive/fragment/CooperationFragment;->tabTitle:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lco/kr/festfive/fragment/CooperationFragment;->setTab(Landroid/support/design/widget/TabLayout;[Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->tabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lco/kr/festfive/fragment/CooperationFragment$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/CooperationFragment$1;-><init>(Lco/kr/festfive/fragment/CooperationFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 106
    invoke-virtual {p0}, Lco/kr/festfive/fragment/CooperationFragment;->init()V

    .line 107
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->searchEdittext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/fragment/CooperationFragment;->getOfficenerListToServer(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lco/kr/festfive/fragment/CooperationFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 199
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 201
    return-void
.end method

.method public setTab(Landroid/support/design/widget/TabLayout;[Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Landroid/support/design/widget/TabLayout;
    .param p2, "tabTitle"    # [Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    .line 114
    .local v1, "newTab":Landroid/support/design/widget/TabLayout$Tab;
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 115
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    .line 116
    invoke-virtual {p1, v1}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "newTab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_0
    return-void
.end method
