.class public Lco/kr/festfive/activity/SendBirdChannelListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SendBirdChannelListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask;,
        Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;
    }
.end annotation


# instance fields
.field private mBtnClose:Landroid/widget/ImageButton;

.field private mBtnSettings:Landroid/widget/ImageButton;

.field private mSendBirdChannelListFragment:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

.field private mTopBarContainer:Landroid/view/View;

.field private mTxtChannelUrl:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method private static displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {p1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$UrlDownloadAsyncTask;->display(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 458
    return-void
.end method

.method private initFragment()V
    .locals 3

    .prologue
    .line 139
    new-instance v0, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    invoke-direct {v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mSendBirdChannelListFragment:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .line 140
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mSendBirdChannelListFragment:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$1;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$1;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity;)V

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;->setSendBirdChannelListHandler(Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment$SendBirdChannelListHandler;)V

    .line 150
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0800af

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mSendBirdChannelListFragment:Lco/kr/festfive/activity/SendBirdChannelListActivity$SendBirdChannelListFragment;

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 153
    return-void
.end method

.method private initSendBird(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const-string v5, "appKey"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "appKey":Ljava/lang/String;
    const-string v5, "uuid"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "uuid":Ljava/lang/String;
    const-string v5, "nickname"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "nickname":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "SendBirdGCMToken"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "gcmRegToken":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v5

    invoke-virtual {v5}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v5

    const-string v6, "registration_id"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "token":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sendbird/android/SendBird;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-static {v4}, Lcom/sendbird/android/SendBird$LoginOption;->build(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sendbird/android/SendBird$LoginOption;->setUserName(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v5

    invoke-static {v5}, Lcom/sendbird/android/SendBird;->login(Lcom/sendbird/android/SendBird$LoginOption;)V

    .line 96
    return-void
.end method

.method private initUIComponents()V
    .locals 2

    .prologue
    .line 156
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mTopBarContainer:Landroid/view/View;

    .line 157
    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mTxtChannelUrl:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mBtnClose:Landroid/widget/ImageButton;

    .line 160
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mBtnSettings:Landroid/widget/ImageButton;

    .line 162
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mBtnClose:Landroid/widget/ImageButton;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$2;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$2;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mBtnSettings:Landroid/widget/ImageButton;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChannelListActivity$3;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity$3;-><init>(Lco/kr/festfive/activity/SendBirdChannelListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->resizeMenubar()V

    .line 184
    return-void
.end method

.method public static makeSendBirdArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method private resizeMenubar()V
    .locals 3

    .prologue
    .line 106
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 108
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChannelListActivity;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void

    .line 110
    :cond_0
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->getResources()Landroid/content/res/Resources;

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
    .line 128
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 130
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->resizeMenubar()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 81
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/FestManager;

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 83
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->initSendBird(Landroid/os/Bundle;)V

    .line 84
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->initFragment()V

    .line 85
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChannelListActivity;->initUIComponents()V

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 124
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 119
    return-void
.end method
