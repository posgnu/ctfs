.class public Lco/kr/festfive/activity/SendBirdMessagingActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SendBirdMessagingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/kr/festfive/activity/SendBirdMessagingActivity$RoundedDrawable;,
        Lco/kr/festfive/activity/SendBirdMessagingActivity$Helper;,
        Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;,
        Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;,
        Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;,
        Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;
    }
.end annotation


# static fields
.field private static final REQUEST_MEMBER_LIST:I = 0x64

.field static sendBirdMessagingActivity:Lco/kr/festfive/activity/SendBirdMessagingActivity;


# instance fields
.field private backButtonImage:Landroid/widget/ImageView;

.field private backButtonText:Landroid/widget/TextView;

.field private index:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isForeground:Z

.field private mAccessType:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

.field private mChannelUrl:Ljava/lang/String;

.field private mMessagingChannel:Lcom/sendbird/android/model/MessagingChannel;

.field private mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

.field private mSendBirdMessagingFragment:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

.field private mTargetUserIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTimer:Landroid/os/CountDownTimer;

.field private titleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->index:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lcom/sendbird/android/model/MessagingChannel;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mMessagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getDisplayDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sendbird/android/model/FileLink;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/model/FileLink;
    .param p1, "x1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {p0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->downloadUrl(Lcom/sendbird/android/model/FileLink;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getDisplayTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lco/kr/festfive/activity/SendBirdMessagingActivity;Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 0
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;
    .param p1, "x1"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->updateMessagingChannel(Lcom/sendbird/android/model/MessagingChannel;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {p0, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .prologue
    .line 113
    iget-boolean v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->isForeground:Z

    return v0
.end method

.method static synthetic access$400(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->index:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lco/kr/festfive/activity/SendBirdMessagingActivity;)Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;
    .locals 1
    .param p0, "x0"    # Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .prologue
    .line 113
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingFragment:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    return-object v0
.end method

.method private checkDegree(Ljava/lang/String;)I
    .locals 8
    .param p1, "fileUri"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 1066
    const/4 v0, 0x0

    .line 1068
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 1070
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 1076
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 1077
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1078
    .local v4, "orientation1":I
    if-eq v4, v7, :cond_0

    .line 1081
    packed-switch v4, :pswitch_data_0

    .line 1099
    .end local v4    # "orientation1":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 1071
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "cks"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1083
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "orientation1":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1084
    goto :goto_1

    .line 1087
    :pswitch_2
    const/16 v0, 0xb4

    .line 1088
    goto :goto_1

    .line 1090
    :pswitch_3
    const/16 v0, 0x10e

    .line 1091
    goto :goto_1

    .line 1093
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1081
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 2447
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;->display(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 2448
    return-void
.end method

.method private static displayUrlImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "circle"    # Z

    .prologue
    .line 2451
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;->display(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 2452
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
    .line 2455
    invoke-virtual {p0}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/model/FileInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 2456
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sendbird/android/model/FileLink;->getFileInfo()Lcom/sendbird/android/model/FileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/model/FileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2458
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2459
    .local v0, "downloadDir":Ljava/io/File;
    const-string v4, "FASTFIVE"

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 2460
    .local v1, "downloadFile":Ljava/io/File;
    invoke-static {v3, v1, p1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$UrlDownloadAsyncTask;->download(Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V

    .line 2461
    return-void
.end method

.method private static getDisplayDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milli"    # J

    .prologue
    .line 2429
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2431
    .local v1, "date":Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 2433
    .local v4, "formatDate":Ljava/lang/String;
    const-string v5, "."

    const-string v6, "-"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2435
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2437
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v3, "format":Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 2440
    .local v2, "day1":Ljava/util/Date;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2442
    .local v0, "asd":Ljava/lang/String;
    return-object v0
.end method

.method private static getDisplayDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milli"    # J

    .prologue
    .line 2409
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2411
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 2412
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2415
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

.method private static getDisplayMemberNames(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/model/MessagingChannel$Member;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "members":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/model/MessagingChannel$Member;>;"
    const/4 v5, 0x2

    .line 328
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v5, :cond_0

    .line 329
    const-string v2, "No Members"

    .line 341
    :goto_0
    return-object v2

    .line 330
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 331
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 332
    .local v1, "names":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/MessagingChannel$Member;

    .line 333
    .local v0, "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    invoke-virtual {v0}, Lcom/sendbird/android/model/MessagingChannel$Member;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sendbird/android/model/MessagingChannel$Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 339
    .end local v0    # "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 341
    .end local v1    # "names":Ljava/lang/StringBuffer;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getDisplayTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "milli"    # J

    .prologue
    .line 2419
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2421
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 2422
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2425
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
    .line 301
    new-instance v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    invoke-direct {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingFragment:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .line 302
    new-instance v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-direct {v0, p0, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    .line 303
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingFragment:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;->setSendBirdMessagingAdapter(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)V

    .line 305
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0800af

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingFragment:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdChatFragment;

    .line 306
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 309
    return-void
.end method

.method private initSendBird()V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$2;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$2;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;)V

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->registerNotificationHandler(Lcom/sendbird/android/SendBirdNotificationHandler;)V

    .line 362
    new-instance v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;

    invoke-direct {v0, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$3;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;)V

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->setEventHandler(Lcom/sendbird/android/SendBirdEventHandler;)V

    .line 525
    return-void
.end method

.method private initUIComponents()V
    .locals 2

    .prologue
    .line 567
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->backButtonImage:Landroid/widget/ImageView;

    .line 568
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->backButtonImage:Landroid/widget/ImageView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$4;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$4;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->backButtonText:Landroid/widget/TextView;

    .line 575
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->backButtonText:Landroid/widget/TextView;

    new-instance v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$5;

    invoke-direct {v1, p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$5;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->titleText:Landroid/widget/TextView;

    .line 628
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->resizeMenubar()V

    .line 629
    return-void
.end method

.method public static makeMessagingJoinArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "join"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "channelUrl"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v0
.end method

.method public static makeMessagingJoinArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "join"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v1, "channelName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v1, "channelUrl"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v0
.end method

.method public static makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "targetUserId"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string v1, ""

    invoke-static {p0, p1, p2, v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "targetUserId"    # Ljava/lang/String;
    .param p4, "targetUserName"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {p0, p1, p2, v0, p4}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static makeMessagingStartArgs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "targetUserIds"    # [Ljava/lang/String;
    .param p4, "targetUserName"    # Ljava/lang/String;

    .prologue
    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "start"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "targetUserIds"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 153
    const-string v1, "targetUserName"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method private resizeMenubar()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method private updateMessagingChannel(Lcom/sendbird/android/model/MessagingChannel;)V
    .locals 12
    .param p1, "messagingChannel"    # Lcom/sendbird/android/model/MessagingChannel;

    .prologue
    .line 528
    iput-object p1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mMessagingChannel:Lcom/sendbird/android/model/MessagingChannel;

    .line 530
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->toJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 531
    .local v1, "channelData":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v6, "channel"

    invoke-virtual {v1, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    .line 532
    .local v0, "channel":Lcom/sendbird/android/shadow/com/google/gson/JsonObject;
    const-string v6, "custom_type"

    invoke-virtual {v0, v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "customType":Ljava/lang/String;
    const-string v6, "complaint"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 534
    iget-object v6, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    :goto_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 541
    .local v5, "readStatus":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getMembers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/model/MessagingChannel$Member;

    .line 542
    .local v4, "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    iget-object v7, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-static {v7}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->access$800(Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sendbird/android/model/MessagingChannel$Member;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 543
    .local v2, "currentStatus":Ljava/lang/Long;
    if-nez v2, :cond_0

    .line 544
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 546
    :cond_0
    invoke-virtual {v4}, Lcom/sendbird/android/model/MessagingChannel$Member;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/sendbird/android/model/MessagingChannel$Member;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/sendbird/android/model/MessagingChannel;->getLastReadMillis(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 536
    .end local v2    # "currentStatus":Ljava/lang/Long;
    .end local v4    # "member":Lcom/sendbird/android/model/MessagingChannel$Member;
    .end local v5    # "readStatus":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    iget-object v6, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getMembers()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getDisplayMemberNames(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 548
    .restart local v5    # "readStatus":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    iget-object v6, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-virtual {v6, v5}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->resetReadStatus(Ljava/util/Hashtable;)V

    .line 550
    iget-object v6, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-virtual {p1}, Lcom/sendbird/android/model/MessagingChannel;->getMembers()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->setMembers(Ljava/util/List;)V

    .line 551
    iget-object v6, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-virtual {v6}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->notifyDataSetChanged()V

    .line 553
    const-string v6, "cks4451"

    const-string v7, "updateMessagingChannel"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 297
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 313
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 315
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 316
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 318
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->getCurrentChannel()Lcom/sendbird/android/model/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userIds"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird;->inviteMessaging(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->resizeMenubar()V

    .line 216
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->setContentView(I)V

    .line 186
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lco/kr/festfive/FestManager;

    invoke-virtual {v1}, Lco/kr/festfive/FestManager;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 188
    sput-object p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->sendBirdMessagingActivity:Lco/kr/festfive/activity/SendBirdMessagingActivity;

    .line 191
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 192
    invoke-static {p0}, Lco/kr/festfive/utils/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 197
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->initFragment()V

    .line 199
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->initUIComponents()V

    .line 202
    invoke-virtual {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 203
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    sget-object v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->START:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mAccessType:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    .line 205
    const-string v1, "targetUserIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTargetUserIds:Ljava/util/List;

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    const-string v1, "join"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    sget-object v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->JOIN:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mAccessType:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    .line 208
    const-string v1, "channelUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mChannelUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->isForeground:Z

    .line 286
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 290
    :cond_0
    invoke-static {}, Lcom/sendbird/android/SendBird;->disconnect()V

    .line 291
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 233
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->isForeground:Z

    .line 236
    invoke-static {}, Lcom/sendbird/android/SendBird;->markAsRead()V

    .line 238
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 241
    :cond_0
    new-instance v0, Lco/kr/festfive/activity/SendBirdMessagingActivity$1;

    const-wide/32 v2, 0x240c8400

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lco/kr/festfive/activity/SendBirdMessagingActivity$1;-><init>(Lco/kr/festfive/activity/SendBirdMessagingActivity;JJ)V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTimer:Landroid/os/CountDownTimer;

    .line 256
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 258
    invoke-direct {p0}, Lco/kr/festfive/activity/SendBirdMessagingActivity;->initSendBird()V

    .line 260
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    invoke-static {}, Lcom/sendbird/android/SendBird;->getConnectionState()Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 261
    const-string v0, "HAMA"

    invoke-static {}, Lcom/sendbird/android/SendBird;->getConnectionState()Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v0, "HAMA"

    const-string v1, "sendbird connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/sendbird/android/SendBird;->connect()V

    .line 266
    :cond_1
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->clear()V

    .line 267
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mSendBirdMessagingAdapter:Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;

    invoke-virtual {v0}, Lco/kr/festfive/activity/SendBirdMessagingActivity$SendBirdMessagingAdapter;->notifyDataSetChanged()V

    .line 269
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mAccessType:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    sget-object v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->START:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    const-string v0, "cks4451"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mTargetUserIds:Ljava/util/List;

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->startMessaging(Ljava/util/Collection;)V

    .line 278
    :cond_2
    :goto_0
    return-void

    .line 273
    :cond_3
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mAccessType:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    sget-object v1, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->JOIN:Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;

    invoke-virtual {v0, v1}, Lco/kr/festfive/activity/SendBirdMessagingActivity$AccessType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "cks4451"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "join : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mChannelUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdMessagingActivity;->mChannelUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sendbird/android/SendBird;->joinMessaging(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 633
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 634
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 638
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 639
    return-void
.end method
