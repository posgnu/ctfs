.class public Lco/kr/festfive/activity/SendBirdChatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SendBirdChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdChatActivity$RoundedDrawable;,
        Lco/kr/festfive/activity/SendBirdChatActivity$Helper;,
        Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;,
        Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;,
        Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;
    }
.end annotation


# static fields
.field public static final REQUEST_CHANNEL_LIST:I = 0x64


# instance fields
.field private backButtonImage:Landroid/widget/ImageView;

.field private backButtonText:Landroid/widget/TextView;

.field private channelName:Ljava/lang/String;

.field private mBtnClose:Landroid/widget/ImageButton;

.field private mBtnLeave:Landroid/widget/Button;

.field private mBtnMembers:Landroid/widget/Button;

.field private mBtnSettings:Landroid/widget/ImageButton;

.field private mChannelUrl:Ljava/lang/String;

.field private mDoNotDisconnect:Z

.field private mSendBirdChatAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

.field private mSendBirdChatFragment:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

.field private mTopBarContainer:Landroid/view/View;

.field private mTxtChannelUrl:Landroid/widget/TextView;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/SendBirdChatActivity;)Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatFragment:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sendbird/android/model/FileLink;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/model/FileLink;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity;->downloadUrl(Lcom/sendbird/android/model/FileLink;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 110
    invoke-static {p0, p1, p2}, Lco/kr/festfive/activity/SendBirdChatActivity;->getDisplayTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 110
    invoke-static {p0, p1, p2}, Lco/kr/festfive/activity/SendBirdChatActivity;->displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p0, p1}, Lco/kr/festfive/activity/SendBirdChatActivity;->displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/SendBirdChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdChatActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 110
    invoke-static {p0, p1, p2}, Lco/kr/festfive/activity/SendBirdChatActivity;->getDisplayDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1860
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->display(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 1861
    return-void
.end method

.method private static displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "circle"    # Z

    .prologue
    .line 1864
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->display(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 1865
    return-void
.end method

.method private static downloadUrl(Lcom/sendbird/android/model/FileLink;Landroid/content/Context;)V
    .locals 6
    .param p0, "fileLink"    # Lcom/sendbird/android/model/FileLink;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 1908
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1909
    .local v2, "name":Ljava/lang/String;
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1910
    .local v0, "downloadDir":Ljava/io/File;
    const-string v4, "FASTFIVE"

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1911
    .local v1, "downloadFile":Ljava/io/File;
    invoke-static {v3, v1, p1}, Lco/kr/festfive/activity/SendBirdChatActivity$UrlDownloadAsyncTask;->download(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V

    .line 1912
    return-void
.end method

.method private static getDisplayDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milli"    # J

    .prologue
    .line 1878
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1880
    .local v1, "date":Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1882
    .local v4, "formatDate":Ljava/lang/String;
    const-string v5, "."

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1884
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1886
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v3, "format":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 1889
    .local v2, "day1":Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, "asd":Ljava/lang/String;
    return-object v0
.end method

.method private static getDisplayDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milli"    # J

    .prologue
    .line 1897
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1899
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1900
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1903
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDisplayTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milli"    # J

    .prologue
    .line 1868
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1870
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1871
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1874
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initFragment()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    invoke-direct {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatFragment:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .line 229
    new-instance v0, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-direct {v0, p0, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    .line 230
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatFragment:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;->setSendBirdChatAdapter(Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;)V

    .line 244
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0800af

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatFragment:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatFragment;

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 247
    return-void
.end method

.method private initSendBird(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 285
    const-string v7, "appKey"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "appKey":Ljava/lang/String;
    const-string v7, "uuid"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "uuid":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v7

    invoke-virtual {v7}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v7

    const-string v8, "user_name"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "nickname":Ljava/lang/String;
    const-string v7, "channelName"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "channelName":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "SendBirdGCMToken"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "gcmRegToken":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v7

    invoke-virtual {v7}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v7

    const-string v8, "registration_id"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "token":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v7

    invoke-virtual {v7}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v7

    const-string v8, "user_profile_thumb_url"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "thumb":Ljava/lang/String;
    const-string v7, "cks4451"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nickname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v7, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const-string v7, "channelUrl"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mChannelUrl:Ljava/lang/String;

    .line 300
    invoke-static {p0, v0}, Lcom/sendbird/android/SendBird;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    invoke-static {v6}, Lcom/sendbird/android/SendBird$LoginOption;->build(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sendbird/android/SendBird$LoginOption;->setUserName(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/sendbird/android/SendBird$LoginOption;->setImageUrl(Ljava/lang/String;)Lcom/sendbird/android/SendBird$LoginOption;

    move-result-object v7

    invoke-static {v7}, Lcom/sendbird/android/SendBird;->login(Lcom/sendbird/android/SendBird$LoginOption;)V

    .line 303
    new-instance v7, Lco/kr/festfive/activity/SendBirdChatActivity$3;

    invoke-direct {v7, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$3;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V

    invoke-static {v7}, Lcom/sendbird/android/SendBird;->setEventHandler(Lcom/sendbird/android/SendBirdEventHandler;)V

    .line 398
    return-void
.end method

.method private initUIComponents()V
    .locals 2

    .prologue
    .line 401
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mTopBarContainer:Landroid/view/View;

    .line 403
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->backButtonImage:Landroid/widget/ImageView;

    .line 404
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->backButtonImage:Landroid/widget/ImageView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$4;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->backButtonText:Landroid/widget/TextView;

    .line 411
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->backButtonText:Landroid/widget/TextView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdChatActivity$5;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$5;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->titleText:Landroid/widget/TextView;

    .line 472
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->resizeMenubar()V

    .line 473
    return-void
.end method

.method public static makeSendBirdArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "channelUrl"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v0
.end method

.method public static makeSendBirdArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "channelUrl"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "channelName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v0
.end method

.method private resizeMenubar()V
    .locals 3

    .prologue
    .line 201
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 202
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 203
    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 207
    :goto_0
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mTopBarContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-void

    .line 205
    :cond_0
    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->getResources()Landroid/content/res/Resources;

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
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 224
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 253
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 254
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 255
    const-string v0, "channelUrl"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mChannelUrl:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->clear()V

    .line 259
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mSendBirdChatAdapter:Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdChatActivity$SendBirdChatAdapter;->notifyDataSetChanged()V

    .line 261
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mChannelUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    const/16 v1, 0x32

    new-instance v4, Lco/kr/festfive/activity/SendBirdChatActivity$2;

    invoke-direct {v4, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$2;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/sendbird/android/MessageListQuery;->prev(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->resizeMenubar()V

    .line 197
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v0, 0x7f0a0034

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 159
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/FestManager;

    invoke-virtual {v0}, Lco/kr/festfive/FestManager;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 163
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 166
    :cond_0
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->initFragment()V

    .line 168
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->initUIComponents()V

    .line 169
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/kr/festfive/activity/SendBirdChatActivity;->initSendBird(Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mChannelUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->queryMessageList(Ljava/lang/String;)Lcom/sendbird/android/MessageListQuery;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    const/16 v1, 0x32

    new-instance v4, Lco/kr/festfive/activity/SendBirdChatActivity$1;

    invoke-direct {v4, p0}, Lco/kr/festfive/activity/SendBirdChatActivity$1;-><init>(Lco/kr/festfive/activity/SendBirdChatActivity;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/sendbird/android/MessageListQuery;->prev(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    .line 190
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 214
    iget-boolean v0, p0, Lco/kr/festfive/activity/SendBirdChatActivity;->mDoNotDisconnect:Z

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lcom/sendbird/android/SendBird;->disconnect()V

    .line 218
    :cond_0
    return-void
.end method
