.class public Lco/kr/festfive/fragment/NewsFeedFragment;
.super Landroid/support/v4/app/Fragment;
.source "NewsFeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private HRFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

.field private HelpFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

.field private category:[Ljava/lang/String;

.field private categoryItems:[Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

.field private fragmentlayout:Landroid/widget/FrameLayout;

.field private lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

.field private menuTab:Landroid/widget/LinearLayout;

.field private newButtonImage:Landroid/widget/ImageView;

.field private newFragment:Landroid/support/v4/app/Fragment;

.field private newsFeedHelp_tv:Landroid/widget/TextView;

.field private newsFeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/kr/festfive/model/NewsFeedList;",
            ">;"
        }
    .end annotation
.end field

.field private newsFeedMember_tv:Landroid/widget/TextView;

.field private newsFeedNews_tv:Landroid/widget/TextView;

.field private newsFeedNotice_tv:Landroid/widget/TextView;

.field private newsFeedRecruit_tv:Landroid/widget/TextView;

.field private newsFeedTotal_tv:Landroid/widget/TextView;

.field private newsFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

.field private pushNewsFeedId:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private searchButtonImage:Landroid/widget/ImageView;

.field private tabTitle:[Ljava/lang/String;

.field private tabToActivityName:Ljava/lang/String;

.field private totalFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 52
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v0

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " \uc804\uccb4 "

    aput-object v1, v0, v4

    const-string v1, " \uacf5\uc9c0 "

    aput-object v1, v0, v5

    const-string v1, " \ub274\uc2a4 "

    aput-object v1, v0, v6

    const-string v1, " \uad6c\uc778 "

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, " \uba64\ubc84 "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " Help "

    aput-object v2, v0, v1

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->tabTitle:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v4

    aput-object v3, v0, v5

    const-string v1, "NEWS"

    aput-object v1, v0, v6

    const-string v1, "HR"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, "HELP"

    aput-object v2, v0, v1

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->category:[Ljava/lang/String;

    .line 56
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\ub274\uc2a4\ud53c\ub4dc"

    aput-object v1, v0, v4

    const-string v1, "\uad6c\uc778\uad6c\uc9c1"

    aput-object v1, v0, v5

    const-string v1, "\ubd88\ud3b8\uc2e0\uace0 (Help)"

    aput-object v1, v0, v6

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->categoryItems:[Ljava/lang/String;

    .line 57
    iput-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    .line 59
    const-string v0, " \uba64\ubc84 "

    iput-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->tabToActivityName:Ljava/lang/String;

    return-void
.end method

.method private DialogSelectOption([Ljava/lang/String;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 296
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const-string v1, "\uce74\ud14c\uace0\ub9ac \uc120\ud0dd"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 298
    new-instance v1, Lco/kr/festfive/fragment/NewsFeedFragment$3;

    invoke-direct {v1, p0, p1}, Lco/kr/festfive/fragment/NewsFeedFragment$3;-><init>(Lco/kr/festfive/fragment/NewsFeedFragment;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    new-instance v1, Lco/kr/festfive/fragment/NewsFeedFragment$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/fragment/NewsFeedFragment$4;-><init>(Lco/kr/festfive/fragment/NewsFeedFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 334
    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/fragment/NewsFeedFragment;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/fragment/NewsFeedFragment;Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$Tab;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedFragment;
    .param p1, "x1"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/fragment/NewsFeedFragment;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic access$102(Lco/kr/festfive/fragment/NewsFeedFragment;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedFragment;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 46
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newFragment:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic access$200(Lco/kr/festfive/fragment/NewsFeedFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->category:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lco/kr/festfive/fragment/NewsFeedFragment;)Lco/kr/festfive/manager/FestPreferenceManager;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/fragment/NewsFeedFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    return-object v0
.end method

.method private getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, "newFragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 261
    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->totalFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 232
    goto :goto_0

    .line 234
    :pswitch_1
    new-instance v0, Lco/kr/festfive/fragment/NoticeFragment;

    .end local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lco/kr/festfive/fragment/NoticeFragment;-><init>()V

    .line 235
    .restart local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newsFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 240
    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->HRFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 243
    goto :goto_0

    .line 247
    :pswitch_4
    new-instance v0, Landroid/support/v4/app/Fragment;

    .end local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 249
    .restart local v0    # "newFragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 253
    :pswitch_5
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->HelpFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 254
    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v0, 0x3e8

    .line 338
    if-ne p1, v0, :cond_0

    .line 339
    if-ne p2, v0, :cond_0

    .line 340
    iget-object v0, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-virtual {v0}, Lco/kr/festfive/fragment/NewsFeedListFragment;->refresh()V

    .line 344
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 76
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->context:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 269
    .local v2, "vid":I
    sparse-switch v2, :sswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 272
    :sswitch_0
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 273
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lco/kr/festfive/fragment/SearchNewsFeedFragment;

    invoke-direct {v0}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;-><init>()V

    .line 274
    .local v0, "searchNewsFeedFragment":Lco/kr/festfive/fragment/SearchNewsFeedFragment;
    iget-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Lco/kr/festfive/fragment/SearchNewsFeedFragment;->setMenuTab(Landroid/widget/LinearLayout;)V

    .line 275
    const v3, 0x7f08003e

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 276
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 277
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 281
    .end local v0    # "searchNewsFeedFragment":Lco/kr/festfive/fragment/SearchNewsFeedFragment;
    .end local v1    # "transaction":Landroid/support/v4/app/FragmentTransaction;
    :sswitch_1
    iget-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    if-nez v3, :cond_0

    .line 282
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v3

    invoke-virtual {v3}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v3

    iput-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->festPreferenceManager:Lco/kr/festfive/manager/FestPreferenceManager;

    .line 285
    :cond_0
    iget-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->categoryItems:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lco/kr/festfive/fragment/NewsFeedFragment;->DialogSelectOption([Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x7f08015b -> :sswitch_1
        0x7f0801c7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    new-instance v1, Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;-><init>()V

    iput-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->totalFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 83
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->totalFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->category:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lco/kr/festfive/fragment/NewsFeedListFragment;->setCategory(Ljava/lang/String;)V

    .line 84
    new-instance v1, Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;-><init>()V

    iput-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newsFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 85
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newsFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->category:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lco/kr/festfive/fragment/NewsFeedListFragment;->setCategory(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;-><init>()V

    iput-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->HRFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 87
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->HRFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->category:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lco/kr/festfive/fragment/NewsFeedListFragment;->setCategory(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {v1}, Lco/kr/festfive/fragment/NewsFeedListFragment;-><init>()V

    iput-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->HelpFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    .line 89
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->HelpFragment:Lco/kr/festfive/fragment/NewsFeedListFragment;

    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->category:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lco/kr/festfive/fragment/NewsFeedListFragment;->setCategory(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->pushNewsFeedId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lco/kr/festfive/activity/DetailFeedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "news_feed_id"

    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->pushNewsFeedId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Lco/kr/festfive/fragment/NewsFeedFragment;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
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
    const v5, 0x7f080160

    const/4 v4, 0x0

    .line 118
    const v2, 0x7f0a0062

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->rootView:Landroid/view/View;

    .line 124
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0801c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->searchButtonImage:Landroid/widget/ImageView;

    .line 125
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->searchButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->rootView:Landroid/view/View;

    const v3, 0x7f08015b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newButtonImage:Landroid/widget/ImageView;

    .line 128
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->rootView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->fragmentlayout:Landroid/widget/FrameLayout;

    .line 132
    new-instance v2, Lco/kr/festfive/fragment/NewsFeedListFragment;

    invoke-direct {v2}, Lco/kr/festfive/fragment/NewsFeedListFragment;-><init>()V

    iput-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newFragment:Landroid/support/v4/app/Fragment;

    .line 133
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newFragment:Landroid/support/v4/app/Fragment;

    check-cast v2, Lco/kr/festfive/fragment/NewsFeedListFragment;

    iget-object v3, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->category:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lco/kr/festfive/fragment/NewsFeedListFragment;->setCategory(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 136
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->newFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 137
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->rootView:Landroid/view/View;

    const v3, 0x7f0801f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    .line 141
    .local v0, "tabLayout":Landroid/support/design/widget/TabLayout;
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->tabTitle:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lco/kr/festfive/fragment/NewsFeedFragment;->setTab(Landroid/support/design/widget/TabLayout;[Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->rootView:Landroid/view/View;

    return-object v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 224
    return-void
.end method

.method public setFragmentInAdapter(Lco/kr/festfive/adapter/FragmentTabAdapter;)Lco/kr/festfive/adapter/FragmentTabAdapter;
    .locals 2
    .param p1, "adapter"    # Lco/kr/festfive/adapter/FragmentTabAdapter;

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->tabTitle:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    return-object p1
.end method

.method public setMenuTab(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "_menuTab"    # Landroid/widget/LinearLayout;

    .prologue
    .line 106
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->menuTab:Landroid/widget/LinearLayout;

    .line 107
    return-void
.end method

.method public setPushNewsFeedId(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushNewsFeedId"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->pushNewsFeedId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTab(Landroid/support/design/widget/TabLayout;[Ljava/lang/String;)V
    .locals 8
    .param p1, "tabLayout"    # Landroid/support/design/widget/TabLayout;
    .param p2, "tabTitle"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 147
    const/high16 v4, 0x40600000    # 3.5f

    iget-object v5, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 150
    .local v1, "px":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    .line 151
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    .line 152
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lco/kr/festfive/fragment/NewsFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 153
    .local v3, "temp_tv":Landroid/widget/TextView;
    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    if-nez v0, :cond_0

    .line 157
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 159
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 160
    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHeight(I)V

    .line 162
    aget-object v4, p2, v0

    iget-object v5, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->tabToActivityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 163
    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lco/kr/festfive/fragment/NewsFeedFragment$1;

    invoke-direct {v5, p0, p2}, Lco/kr/festfive/fragment/NewsFeedFragment$1;-><init>(Lco/kr/festfive/fragment/NewsFeedFragment;[Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :goto_1
    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 205
    invoke-virtual {p1, v2}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lco/kr/festfive/fragment/NewsFeedFragment$2;

    invoke-direct {v5, p0}, Lco/kr/festfive/fragment/NewsFeedFragment$2;-><init>(Lco/kr/festfive/fragment/NewsFeedFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 207
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v3    # "temp_tv":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p1, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    iput-object v4, p0, Lco/kr/festfive/fragment/NewsFeedFragment;->lastSelectTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 209
    return-void
.end method
