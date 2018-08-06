.class public Lco/kr/festfive/activity/SendBirdUserListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SendBirdUserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask;,
        Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;
    }
.end annotation


# instance fields
.field private mBtnClose:Landroid/widget/ImageButton;

.field private mBtnOK:Landroid/widget/Button;

.field private mSelectedUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private mSendBirdUserListFragment:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

.field private mTopBarContainer:Landroid/view/View;

.field private mTxtChannelUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/SendBirdUserListActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdUserListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mSelectedUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lco/kr/festfive/activity/SendBirdUserListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdUserListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 61
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mSelectedUsers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/SendBirdUserListActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdUserListActivity;

    .prologue
    .line 61
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mBtnOK:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lco/kr/festfive/activity/SendBirdUserListActivity;->displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private static displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-static {p1, p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask;->display(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 384
    return-void
.end method

.method private initFragment()V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mSelectedUsers:Ljava/util/List;

    .line 147
    new-instance v0, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    invoke-direct {v0}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mSendBirdUserListFragment:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .line 149
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mSendBirdUserListFragment:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    new-instance v1, Lco/kr/festfive/activity/SendBirdUserListActivity$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$1;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity;)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;->setSendBirdUserListHandler(Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment$SendBirdUserListHandler;)V

    .line 161
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0800af

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mSendBirdUserListFragment:Lco/kr/festfive/activity/SendBirdUserListActivity$SendBirdUserListFragment;

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 164
    return-void
.end method

.method private initSendBird(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v3, "appKey"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "appKey":Ljava/lang/String;
    const-string v3, "uuid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "uuid":Ljava/lang/String;
    const-string v3, "nickname"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "nickname":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SendBirdGCMToken"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "nickname":Ljava/lang/String;
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initUIComponents()V
    .locals 2

    .prologue
    .line 167
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mTopBarContainer:Landroid/view/View;

    .line 168
    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mTxtChannelUrl:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mBtnClose:Landroid/widget/ImageButton;

    .line 171
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mBtnOK:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mBtnClose:Landroid/widget/ImageButton;

    new-instance v1, Lco/kr/festfive/activity/SendBirdUserListActivity$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$2;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mBtnOK:Landroid/widget/Button;

    new-instance v1, Lco/kr/festfive/activity/SendBirdUserListActivity$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdUserListActivity$3;-><init>(Lco/kr/festfive/activity/SendBirdUserListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->resizeMenubar()V

    .line 199
    return-void
.end method

.method public static makeSendBirdArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method private resizeMenubar()V
    .locals 3

    .prologue
    .line 113
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 114
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 115
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 119
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    return-void

    .line 117
    :cond_0
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 137
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->resizeMenubar()V

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f0a0036

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 86
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/FestManager;

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 88
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->initSendBird(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->initFragment()V

    .line 90
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdUserListActivity;->initUIComponents()V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 126
    return-void
.end method
