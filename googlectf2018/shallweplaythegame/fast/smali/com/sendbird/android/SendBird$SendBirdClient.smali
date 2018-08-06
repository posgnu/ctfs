.class public Lcom/sendbird/android/SendBird$SendBirdClient;
.super Ljava/lang/Object;
.source "SendBird.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/SendBird;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SendBirdClient"
.end annotation


# instance fields
.field private disconnectBeforeConnect:Z

.field private mAPIClient:Lcom/sendbird/android/APIClient;

.field private mAccessToken:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mCachedMessagingChannels:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sendbird/android/model/MessagingChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Lcom/sendbird/android/model/Channel;

.field private mChannelUrl:Ljava/lang/String;

.field private mChannelUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChannels:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sendbird/android/model/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mGCMRegToken:Ljava/lang/String;

.field private mJoinRequired:Z

.field private mLastMessageTimestamp:J

.field private mLastMessageTimestampTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingMessages:Z

.field private mLoginRequired:Z

.field private mMarkAsReadRequested:Z

.field private mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

.field private mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

.field private mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

.field private mSendBirdMultiChannelSystemEventHandler:Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

.field private mSendBirdNotificationHandler:Lcom/sendbird/android/SendBirdNotificationHandler;

.field private mSendBirdSystemEventHandler:Lcom/sendbird/android/SendBirdSystemEventHandler;

.field private mTimer:Lcom/sendbird/android/CountDownTimer;

.field private mTypeStartRequested:Z

.field private mUIThreadHandler:Landroid/os/Handler;

.field private mUserBlockList:Lcom/sendbird/android/UserBlockList;

.field private mUserId:Ljava/lang/String;

.field private mUserImageUrl:Ljava/lang/String;

.field private mUserKey:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mWSClient:Lcom/sendbird/android/WSClient;

.field private reconnectCount:I

.field private reconnectDelay:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectDelay:I

    .line 1417
    const/4 v0, 0x0

    iput v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectCount:I

    .line 1419
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestamp:J

    .line 1442
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAppId:Ljava/lang/String;

    .line 1443
    new-instance v0, Lcom/sendbird/android/APIClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAppId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sendbird/android/APIClient;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    .line 1444
    iput-boolean v3, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    .line 1445
    iput-boolean v3, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mJoinRequired:Z

    .line 1446
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUIThreadHandler:Landroid/os/Handler;

    .line 1447
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mCachedMessagingChannels:Ljava/util/Hashtable;

    .line 1448
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannels:Ljava/util/Hashtable;

    .line 1449
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    .line 1451
    new-instance v0, Lcom/sendbird/android/CountDownTimer;

    const/16 v1, 0x3e8

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/sendbird/android/CountDownTimer;-><init>(IIZ)V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTimer:Lcom/sendbird/android/CountDownTimer;

    .line 1452
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTimer:Lcom/sendbird/android/CountDownTimer;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$1;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$1;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/CountDownTimer;->setEventHandler(Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;)V

    .line 1481
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTimer:Lcom/sendbird/android/CountDownTimer;

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->start()V

    .line 1482
    return-void
.end method

.method static synthetic access$1000(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->typeStart()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->typeEnd()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/FileInfo;Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Lcom/sendbird/android/model/FileInfo;
    .param p2, "x2"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 1383
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient;->cmdFile(Lcom/sendbird/android/model/FileInfo;Lcom/sendbird/android/model/Channel;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    .prologue
    .line 1383
    invoke-direct/range {p0 .. p5}, Lcom/sendbird/android/SendBird$SendBirdClient;->uploadFile(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Z

    .prologue
    .line 1383
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient;->startMessaging(Ljava/util/Collection;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->joinMessaging(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 1383
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient;->inviteMessaging(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->endMessaging(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->endAllMessaging()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->hideMessaging(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sendbird/android/SendBird$SendBirdClient;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # J

    .prologue
    .line 1383
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient;->connect(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->hideAllMessaging()V

    return-void
.end method

.method static synthetic access$2202(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Lcom/sendbird/android/CountDownTimer;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTimer:Lcom/sendbird/android/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sendbird/android/SendBird$SendBirdClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mMarkAsReadRequested:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Z

    .prologue
    .line 1383
    iput-boolean p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mMarkAsReadRequested:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->cmdRead()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sendbird/android/SendBird$SendBirdClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTypeStartRequested:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Z

    .prologue
    .line 1383
    iput-boolean p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTypeStartRequested:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->cmdTypeStart()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->disconnect()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->resetUserBlockList(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V

    return-void
.end method

.method static synthetic access$3102(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Z

    .prologue
    .line 1383
    iput-boolean p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/model/Channel;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/Channel;)Lcom/sendbird/android/model/Channel;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Z

    .prologue
    .line 1383
    iput-boolean p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mJoinRequired:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannels:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Lcom/sendbird/android/CountDownTimer;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sendbird/android/SendBird$SendBirdClient;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Z

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->startWSClient(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdNotificationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdNotificationHandler:Lcom/sendbird/android/SendBirdNotificationHandler;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sendbird/android/SendBird$SendBirdClient;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mCachedMessagingChannels:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBird$SendBirdConnectionState;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->getConnectionStatus()Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdSystemEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdSystemEventHandler:Lcom/sendbird/android/SendBirdSystemEventHandler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelSystemEventHandler:Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sendbird/android/SendBird$SendBirdClient;)Lcom/sendbird/android/WSClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sendbird/android/SendBird$SendBirdClient;)J
    .locals 2
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget-wide v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/sendbird/android/SendBird$SendBirdClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectDelay:I

    return v0
.end method

.method static synthetic access$4402(Lcom/sendbird/android/SendBird$SendBirdClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # I

    .prologue
    .line 1383
    iput p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectDelay:I

    return p1
.end method

.method static synthetic access$4428(Lcom/sendbird/android/SendBird$SendBirdClient;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # I

    .prologue
    .line 1383
    iget v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectDelay:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectDelay:I

    return v0
.end method

.method static synthetic access$4500(Lcom/sendbird/android/SendBird$SendBirdClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    iget v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectCount:I

    return v0
.end method

.method static synthetic access$4502(Lcom/sendbird/android/SendBird$SendBirdClient;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # I

    .prologue
    .line 1383
    iput p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectCount:I

    return p1
.end method

.method static synthetic access$4512(Lcom/sendbird/android/SendBird$SendBirdClient;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # I

    .prologue
    .line 1383
    iget v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnectCount:I

    return v0
.end method

.method static synthetic access$4600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Z)Lcom/sendbird/android/SendBird$SendBirdDataType;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 1383
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient;->messageReceived(Ljava/lang/String;Z)Lcom/sendbird/android/SendBird$SendBirdDataType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sendbird/android/SendBird$SendBirdClient;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # I

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->reconnect(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->cancelAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 1383
    invoke-direct/range {p0 .. p5}, Lcom/sendbird/android/SendBird$SendBirdClient;->cmdMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->markAsRead()V

    return-void
.end method

.method static synthetic access$800(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->markAllAsRead()V

    return-void
.end method

.method static synthetic access$900(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient;->markAsRead(Ljava/lang/String;)V

    return-void
.end method

.method private cancelAll()V
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0}, Lcom/sendbird/android/APIClient;->cancelAll()V

    .line 2737
    :cond_0
    return-void
.end method

.method private cmdFile(Lcom/sendbird/android/model/FileInfo;Lcom/sendbird/android/model/Channel;)V
    .locals 2
    .param p1, "fileInfo"    # Lcom/sendbird/android/model/FileInfo;
    .param p2, "toChannel"    # Lcom/sendbird/android/model/Channel;

    .prologue
    .line 2915
    if-nez p2, :cond_0

    .line 2920
    :goto_0
    return-void

    .line 2919
    :cond_0
    invoke-virtual {p2}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/sendbird/android/Command;->bFile(JLcom/sendbird/android/model/FileInfo;)Lcom/sendbird/android/Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->send(Lcom/sendbird/android/Command;)Z

    goto :goto_0
.end method

.method private cmdMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/sendbird/android/model/Channel;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "tempId"    # Ljava/lang/String;
    .param p5, "toChannel"    # Lcom/sendbird/android/model/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/model/Channel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2808
    .local p4, "mentionedUserIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2809
    .local v6, "sent":Z
    if-eqz p5, :cond_0

    .line 2810
    invoke-virtual {p5}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/Command;->bMessage(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/sendbird/android/Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->send(Lcom/sendbird/android/Command;)Z

    move-result v6

    .line 2813
    :cond_0
    if-nez v6, :cond_1

    .line 2814
    move v2, v6

    .line 2815
    .local v2, "finalSent":Z
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$48;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient$48;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2824
    .end local v2    # "finalSent":Z
    :cond_1
    return-void
.end method

.method private cmdRead()V
    .locals 4

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    if-nez v0, :cond_0

    .line 2887
    :goto_0
    return-void

    .line 2886
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sendbird/android/Command;->bRead(JJ)Lcom/sendbird/android/Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->send(Lcom/sendbird/android/Command;)Z

    goto :goto_0
.end method

.method private cmdTypeEnd()V
    .locals 4

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    if-nez v0, :cond_0

    .line 2912
    :goto_0
    return-void

    .line 2911
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sendbird/android/Command;->bTypeEnd(JJ)Lcom/sendbird/android/Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->send(Lcom/sendbird/android/Command;)Z

    goto :goto_0
.end method

.method private cmdTypeStart()V
    .locals 4

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    if-nez v0, :cond_0

    .line 2899
    :goto_0
    return-void

    .line 2898
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    invoke-virtual {v0}, Lcom/sendbird/android/model/Channel;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sendbird/android/Command;->bTypeStart(JJ)Lcom/sendbird/android/Command;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->send(Lcom/sendbird/android/Command;)Z

    goto :goto_0
.end method

.method private connect(J)V
    .locals 3
    .param p1, "maxMessageTimestamp"    # J

    .prologue
    const/4 v1, 0x0

    .line 2143
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->disconnectBeforeConnect:Z

    if-eqz v0, :cond_0

    .line 2144
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->disconnect()V

    .line 2147
    :cond_0
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 2148
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$26;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2254
    :goto_0
    return-void

    .line 2183
    :cond_1
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mJoinRequired:Z

    if-eqz v0, :cond_4

    .line 2184
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrl:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2185
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/SendBird$SendBirdClient$27;

    invoke-direct {v2, p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$27;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/APIClient;->channelJoin(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0

    .line 2211
    :cond_2
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrls:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2212
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrls:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/sendbird/android/SendBird$SendBirdClient$28;

    invoke-direct {v2, p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$28;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;J)V

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/APIClient;->channelMultiJoin(Ljava/util/ArrayList;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0

    .line 2244
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    .line 2245
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannels:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 2246
    iput-boolean v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mJoinRequired:Z

    .line 2250
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->disconnectBeforeConnect:Z

    .line 2252
    iput-wide p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestamp:J

    .line 2253
    invoke-direct {p0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->startWSClient(Z)V

    goto :goto_0
.end method

.method private disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2740
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2741
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Disconnecting."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2744
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_1

    .line 2745
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0}, Lcom/sendbird/android/APIClient;->cancelAll()V

    .line 2748
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    if-eqz v0, :cond_2

    .line 2749
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    invoke-virtual {v0}, Lcom/sendbird/android/WSClient;->disconnect()V

    .line 2750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    .line 2753
    :cond_2
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

    if-eqz v0, :cond_3

    .line 2754
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 2757
    :cond_3
    iput-boolean v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->disconnectBeforeConnect:Z

    .line 2758
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestamp:J

    .line 2760
    iput-boolean v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTypeStartRequested:Z

    .line 2761
    iput-boolean v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mMarkAsReadRequested:Z

    .line 2763
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 2764
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Disconnected."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2766
    :cond_4
    return-void
.end method

.method private endAllMessaging()V
    .locals 2

    .prologue
    .line 3040
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 3041
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$55;

    invoke-direct {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$55;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3087
    :cond_0
    :goto_0
    return-void

    .line 3054
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 3055
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$56;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$56;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/APIClient;->messagingEndAll(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method private endMessaging(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 2989
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 2990
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$53;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$53;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3037
    :cond_0
    :goto_0
    return-void

    .line 3003
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 3004
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$54;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$54;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/sendbird/android/APIClient;->messagingEnd(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method private getConnectionStatus()Lcom/sendbird/android/SendBird$SendBirdConnectionState;
    .locals 1

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    if-eqz v0, :cond_0

    .line 2770
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    invoke-virtual {v0}, Lcom/sendbird/android/WSClient;->getConnectionStatus()Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    move-result-object v0

    .line 2773
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSED:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    goto :goto_0
.end method

.method private hideAllMessaging()V
    .locals 2

    .prologue
    .line 3141
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 3142
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$59;

    invoke-direct {v0, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$59;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3188
    :cond_0
    :goto_0
    return-void

    .line 3155
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 3156
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$60;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$60;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/APIClient;->messagingHideAll(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method private hideMessaging(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 3090
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 3091
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$57;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$57;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3138
    :cond_0
    :goto_0
    return-void

    .line 3104
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 3105
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$58;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$58;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/sendbird/android/APIClient;->messagingHide(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method private inviteMessaging(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2930
    .local p2, "guestIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 2931
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$51;

    invoke-direct {v0, p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$51;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2986
    :cond_0
    :goto_0
    return-void

    .line 2945
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 2946
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$52;

    invoke-direct {v1, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$52;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sendbird/android/APIClient;->messagingInvite(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method private joinMessaging(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 3191
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 3192
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$61;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$61;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3241
    :cond_0
    :goto_0
    return-void

    .line 3206
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 3207
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$62;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$62;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/sendbird/android/APIClient;->messagingJoin(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method private markAllAsRead()V
    .locals 2

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$50;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$50;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/APIClient;->markAllAsRead(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2880
    return-void
.end method

.method private markAsRead()V
    .locals 1

    .prologue
    .line 2828
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mMarkAsReadRequested:Z

    .line 2829
    return-void
.end method

.method private markAsRead(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 2832
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$49;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$49;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/sendbird/android/APIClient;->markAsRead(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2855
    return-void
.end method

.method private messageReceived(Ljava/lang/String;Z)Lcom/sendbird/android/SendBird$SendBirdDataType;
    .locals 18
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "present"    # Z

    .prologue
    .line 2301
    sget-boolean v14, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 2302
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2305
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sendbird/android/Command;->parse(Ljava/lang/String;)Lcom/sendbird/android/Command;

    move-result-object v2

    .line 2307
    .local v2, "cmd":Lcom/sendbird/android/Command;
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v14

    const-string v15, "ts"

    invoke-virtual {v14, v15}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 2308
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsJsonObject()Lcom/sendbird/android/shadow/com/google/gson/JsonObject;

    move-result-object v14

    const-string v15, "ts"

    invoke-virtual {v14, v15}, Lcom/sendbird/android/shadow/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sendbird/android/shadow/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v12

    .line 2310
    .local v12, "msgTs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestamp:J

    cmp-long v14, v12, v14

    if-lez v14, :cond_1

    .line 2311
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestamp:J

    .line 2315
    .end local v12    # "msgTs":J
    :cond_1
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MESG"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2316
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/sendbird/android/model/Message;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/Message;

    move-result-object v11

    .line 2317
    .local v11, "msg":Lcom/sendbird/android/model/Message;
    if-eqz v11, :cond_17

    .line 2318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    if-eqz v14, :cond_2

    .line 2319
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$30;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$30;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2331
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->Message:Lcom/sendbird/android/SendBird$SendBirdDataType;

    .line 2609
    .end local v11    # "msg":Lcom/sendbird/android/model/Message;
    :goto_0
    return-object v14

    .line 2334
    .restart local v11    # "msg":Lcom/sendbird/android/model/Message;
    :cond_2
    invoke-virtual {v11}, Lcom/sendbird/android/model/Message;->getChannelId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2335
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v11}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v16, v14

    if-lez v14, :cond_4

    .line 2336
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v11}, Lcom/sendbird/android/model/Message;->getTimestamp()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2339
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    if-eqz v14, :cond_17

    .line 2340
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$31;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$31;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/Message;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2353
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->Message:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto :goto_0

    .line 2356
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "msg":Lcom/sendbird/android/model/Message;
    :cond_5
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SYSM"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2357
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/sendbird/android/model/SystemMessage;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/SystemMessage;

    move-result-object v11

    .line 2358
    .local v11, "msg":Lcom/sendbird/android/model/SystemMessage;
    if-eqz v11, :cond_17

    .line 2359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    if-eqz v14, :cond_6

    .line 2360
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$32;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$32;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/SystemMessage;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2368
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->SystemMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto :goto_0

    .line 2371
    :cond_6
    invoke-virtual {v11}, Lcom/sendbird/android/model/SystemMessage;->getChannelId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2372
    .restart local v7    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v11}, Lcom/sendbird/android/model/SystemMessage;->getTimestamp()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v16, v14

    if-lez v14, :cond_8

    .line 2373
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v11}, Lcom/sendbird/android/model/SystemMessage;->getTimestamp()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    if-eqz v14, :cond_17

    .line 2377
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$33;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$33;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/SystemMessage;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2386
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->SystemMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2389
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "msg":Lcom/sendbird/android/model/SystemMessage;
    :cond_9
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "FILE"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2390
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/sendbird/android/model/FileLink;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/FileLink;

    move-result-object v5

    .line 2391
    .local v5, "fileLink":Lcom/sendbird/android/model/FileLink;
    if-eqz v5, :cond_17

    .line 2392
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    if-eqz v14, :cond_a

    .line 2393
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$34;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/sendbird/android/SendBird$SendBirdClient$34;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/FileLink;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2405
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->FileLink:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2408
    :cond_a
    invoke-virtual {v5}, Lcom/sendbird/android/model/FileLink;->getChannelId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2409
    .restart local v7    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v5}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v16, v14

    if-lez v14, :cond_c

    .line 2410
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Lcom/sendbird/android/model/FileLink;->getTimestamp()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2413
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    if-eqz v14, :cond_17

    .line 2414
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$35;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/sendbird/android/SendBird$SendBirdClient$35;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/FileLink;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2423
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->FileLink:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2426
    .end local v5    # "fileLink":Lcom/sendbird/android/model/FileLink;
    .end local v7    # "key":Ljava/lang/String;
    :cond_d
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "BRDM"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 2427
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/sendbird/android/model/BroadcastMessage;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;Z)Lcom/sendbird/android/model/BroadcastMessage;

    move-result-object v11

    .line 2428
    .local v11, "msg":Lcom/sendbird/android/model/BroadcastMessage;
    if-eqz v11, :cond_17

    .line 2429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    if-eqz v14, :cond_e

    .line 2430
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$36;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$36;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/BroadcastMessage;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2440
    :cond_e
    invoke-virtual {v11}, Lcom/sendbird/android/model/BroadcastMessage;->getChannelId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2441
    .restart local v7    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-virtual {v11}, Lcom/sendbird/android/model/BroadcastMessage;->getTimestamp()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v14, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v14, v16, v14

    if-lez v14, :cond_10

    .line 2442
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLastMessageTimestampTable:Ljava/util/Hashtable;

    invoke-virtual {v11}, Lcom/sendbird/android/model/BroadcastMessage;->getTimestamp()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    if-eqz v14, :cond_11

    .line 2446
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$37;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$37;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/BroadcastMessage;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2456
    :cond_11
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->BroadcastMessage:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2458
    .end local v7    # "key":Ljava/lang/String;
    .end local v11    # "msg":Lcom/sendbird/android/model/BroadcastMessage;
    :cond_12
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "READ"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 2459
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-static {v14}, Lcom/sendbird/android/model/ReadStatus;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/ReadStatus;

    move-result-object v11

    .line 2460
    .local v11, "msg":Lcom/sendbird/android/model/ReadStatus;
    if-eqz v11, :cond_17

    .line 2461
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    if-eqz v14, :cond_17

    .line 2462
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$38;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$38;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/ReadStatus;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2470
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->ReadStatus:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2473
    .end local v11    # "msg":Lcom/sendbird/android/model/ReadStatus;
    :cond_13
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "TPST"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "TPEN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 2474
    :cond_14
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v3

    .line 2475
    .local v3, "command":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-static {v14}, Lcom/sendbird/android/model/TypeStatus;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/TypeStatus;

    move-result-object v11

    .line 2476
    .local v11, "msg":Lcom/sendbird/android/model/TypeStatus;
    if-eqz v11, :cond_17

    .line 2477
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    if-eqz v14, :cond_17

    .line 2478
    const-string v14, "TPST"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 2479
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$39;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$39;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/TypeStatus;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2487
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->StartTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2489
    :cond_15
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$40;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11}, Lcom/sendbird/android/SendBird$SendBirdClient$40;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/TypeStatus;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2497
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->EndTyping:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2501
    .end local v3    # "command":Ljava/lang/String;
    .end local v11    # "msg":Lcom/sendbird/android/model/TypeStatus;
    :cond_16
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MCUP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 2502
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdNotificationHandler:Lcom/sendbird/android/SendBirdNotificationHandler;

    if-eqz v14, :cond_17

    .line 2503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v14, :cond_17

    .line 2504
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-static {v14}, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;

    move-result-object v10

    .line 2505
    .local v10, "messagingChannelUpdate":Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mCachedMessagingChannels:Ljava/util/Hashtable;

    invoke-virtual {v10}, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->getChannelId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 2507
    .local v6, "hasCachedMessagingChannel":Z
    invoke-virtual {v10}, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->isMessageUpdate()Z

    move-result v14

    if-eqz v14, :cond_18

    if-eqz v6, :cond_18

    .line 2508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mCachedMessagingChannels:Ljava/util/Hashtable;

    invoke-virtual {v10}, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->getChannelId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sendbird/android/model/MessagingChannel;

    .line 2510
    .local v9, "messagingChannel":Lcom/sendbird/android/model/MessagingChannel;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v10}, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->getChannelId()J

    move-result-wide v16

    new-instance v15, Lcom/sendbird/android/SendBird$SendBirdClient$41;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/sendbird/android/SendBird$SendBirdClient$41;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/MessagingChannel;)V

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/sendbird/android/APIClient;->messagingInfoMessageOnly(JLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2609
    .end local v6    # "hasCachedMessagingChannel":Z
    .end local v9    # "messagingChannel":Lcom/sendbird/android/model/MessagingChannel;
    .end local v10    # "messagingChannelUpdate":Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    :cond_17
    :goto_1
    sget-object v14, Lcom/sendbird/android/SendBird$SendBirdDataType;->None:Lcom/sendbird/android/SendBird$SendBirdDataType;

    goto/16 :goto_0

    .line 2533
    .restart local v6    # "hasCachedMessagingChannel":Z
    .restart local v10    # "messagingChannelUpdate":Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v10}, Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;->getChannelId()J

    move-result-wide v16

    new-instance v15, Lcom/sendbird/android/SendBird$SendBirdClient$42;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sendbird/android/SendBird$SendBirdClient$42;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Lcom/sendbird/android/APIClient;->messagingInfo(JLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_1

    .line 2559
    .end local v6    # "hasCachedMessagingChannel":Z
    .end local v10    # "messagingChannelUpdate":Lcom/sendbird/android/SendBird$InternalModel$MessagingChannelUpdate;
    :cond_19
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "MTIO"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 2560
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdNotificationHandler:Lcom/sendbird/android/SendBirdNotificationHandler;

    if-eqz v14, :cond_17

    .line 2561
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-static {v14}, Lcom/sendbird/android/model/Mention;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/Mention;

    move-result-object v8

    .line 2562
    .local v8, "mention":Lcom/sendbird/android/model/Mention;
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$43;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/sendbird/android/SendBird$SendBirdClient$43;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/Mention;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2571
    .end local v8    # "mention":Lcom/sendbird/android/model/Mention;
    :cond_1a
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "UBUP"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 2572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v15, Lcom/sendbird/android/SendBird$SendBirdClient$44;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sendbird/android/SendBird$SendBirdClient$44;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v14, v15}, Lcom/sendbird/android/APIClient;->userBlockList(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_1

    .line 2583
    :cond_1b
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getCommand()Ljava/lang/String;

    move-result-object v14

    const-string v15, "SYEV"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 2584
    invoke-virtual {v2}, Lcom/sendbird/android/Command;->getJsonElement()Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    move-result-object v14

    invoke-static {v14}, Lcom/sendbird/android/model/SystemEvent;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/model/SystemEvent;

    move-result-object v4

    .line 2585
    .local v4, "event":Lcom/sendbird/android/model/SystemEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdSystemEventHandler:Lcom/sendbird/android/SendBirdSystemEventHandler;

    if-eqz v14, :cond_1c

    .line 2586
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$45;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/sendbird/android/SendBird$SendBirdClient$45;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/SystemEvent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2596
    :cond_1c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelSystemEventHandler:Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    if-eqz v14, :cond_17

    .line 2597
    new-instance v14, Lcom/sendbird/android/SendBird$SendBirdClient$46;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/sendbird/android/SendBird$SendBirdClient$46;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/model/SystemEvent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method private reconnect(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

    if-nez v0, :cond_1

    .line 2258
    new-instance v0, Lcom/sendbird/android/CountDownTimer;

    const/16 v1, 0x3e8

    invoke-direct {v0, p1, v1}, Lcom/sendbird/android/CountDownTimer;-><init>(II)V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

    .line 2259
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$29;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$29;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/CountDownTimer;->setEventHandler(Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;)V

    .line 2292
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mReconnectTimer:Lcom/sendbird/android/CountDownTimer;

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->start()V

    .line 2298
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2295
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Reconnecting to SendBird in progress."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetUserBlockList(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)V
    .locals 1
    .param p1, "el"    # Lcom/sendbird/android/shadow/com/google/gson/JsonElement;

    .prologue
    .line 1431
    invoke-static {p1}, Lcom/sendbird/android/UserBlockList;->build(Lcom/sendbird/android/shadow/com/google/gson/JsonElement;)Lcom/sendbird/android/UserBlockList;

    move-result-object v0

    .line 1432
    .local v0, "userBlockList":Lcom/sendbird/android/UserBlockList;
    if-eqz v0, :cond_0

    .line 1433
    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserBlockList:Lcom/sendbird/android/UserBlockList;

    .line 1435
    :cond_0
    return-void
.end method

.method private send(Lcom/sendbird/android/Command;)Z
    .locals 2
    .param p1, "command"    # Lcom/sendbird/android/Command;

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    invoke-virtual {v0}, Lcom/sendbird/android/WSClient;->getConnectionStatus()Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    move-result-object v0

    sget-object v1, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    if-ne v0, v1, :cond_0

    .line 2924
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    invoke-virtual {v0, p1}, Lcom/sendbird/android/WSClient;->send(Lcom/sendbird/android/Command;)Z

    move-result v0

    .line 2926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startMessaging(Ljava/util/Collection;Z)V
    .locals 2
    .param p2, "isGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 3244
    .local p1, "guestIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_1

    .line 3245
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$63;

    invoke-direct {v0, p0, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$63;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/Collection;Z)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3295
    :cond_0
    :goto_0
    return-void

    .line 3259
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 3260
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$64;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$64;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sendbird/android/APIClient;->messagingStart(Ljava/util/Collection;ZLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method private startWSClient(Z)V
    .locals 2
    .param p1, "reconnect"    # Z

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    if-eqz v0, :cond_0

    .line 2615
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    invoke-virtual {v0}, Lcom/sendbird/android/WSClient;->disconnect()V

    .line 2616
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    .line 2619
    :cond_0
    new-instance v0, Lcom/sendbird/android/WSClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sendbird/android/WSClient;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    .line 2620
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$47;

    invoke-direct {v1, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$47;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Z)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/WSClient;->setEventHandler(Lcom/sendbird/android/WSClient$WSClientEventHandler;)V

    .line 2730
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mWSClient:Lcom/sendbird/android/WSClient;

    invoke-virtual {v0}, Lcom/sendbird/android/WSClient;->connect()V

    .line 2731
    return-void
.end method

.method private typeEnd()V
    .locals 1

    .prologue
    .line 2902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTypeStartRequested:Z

    .line 2903
    invoke-direct {p0}, Lcom/sendbird/android/SendBird$SendBirdClient;->cmdTypeEnd()V

    .line 2904
    return-void
.end method

.method private typeStart()V
    .locals 1

    .prologue
    .line 2890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mTypeStartRequested:Z

    .line 2891
    return-void
.end method

.method private uploadFile(Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Lcom/sendbird/android/SendBirdFileUploadEventHandler;)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "customField"    # Ljava/lang/String;
    .param p5, "handler"    # Lcom/sendbird/android/SendBirdFileUploadEventHandler;

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    if-eqz v0, :cond_0

    .line 3299
    iget-object v7, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$65;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sendbird/android/SendBird$SendBirdClient$65;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/SendBirdFileUploadEventHandler;Ljava/io/File;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, p1, v0}, Lcom/sendbird/android/APIClient;->uploadFile(Ljava/io/File;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3335
    :cond_0
    return-void
.end method


# virtual methods
.method public channelList(ILjava/lang/String;ILcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .param p4, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sendbird/android/APIClient;->channelList(ILjava/lang/String;ILcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1568
    return-void
.end method

.method public channelMetaCounterDecrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1708
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1709
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$9;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$9;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1724
    :goto_0
    return-void

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaCounterDecrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public channelMetaCounterDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1670
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1671
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$7;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$7;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1686
    :goto_0
    return-void

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaCounterDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public channelMetaCounterGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1651
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1652
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$6;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$6;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1667
    :goto_0
    return-void

    .line 1666
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaCounterGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public channelMetaCounterIncrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1689
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1690
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$8;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$8;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1705
    :goto_0
    return-void

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaCounterIncrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public channelMetaCounterSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1632
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1633
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$5;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$5;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1648
    :goto_0
    return-void

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaCounterSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public channelMetaDataDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1613
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1614
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$4;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1629
    :goto_0
    return-void

    .line 1628
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaDataDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public channelMetaDataGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1594
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1595
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$3;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$3;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1610
    :goto_0
    return-void

    .line 1609
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaDataGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public channelMetaDataSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/APIClient$APIClientEventHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1575
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1576
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$2;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1591
    :goto_0
    return-void

    .line 1590
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->channelMetaDataSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/handler/UserExistenceHandler;)V
    .locals 2
    .param p2, "handler"    # Lcom/sendbird/android/handler/UserExistenceHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/handler/UserExistenceHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1935
    .local p1, "userIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1936
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$19;

    invoke-direct {v0, p0, p2, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$19;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UserExistenceHandler;Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1992
    :goto_0
    return-void

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$20;

    invoke-direct {v1, p0, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$20;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UserExistenceHandler;)V

    invoke-virtual {v0, p1, v1}, Lcom/sendbird/android/APIClient;->checkUserExistence(Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelUrls()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1513
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrls:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCurrentChannel()Lcom/sendbird/android/model/Channel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    if-nez v0, :cond_0

    .line 1540
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannel:Lcom/sendbird/android/model/Channel;

    return-object v0
.end method

.method public getCurrentChannels()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sendbird/android/model/Channel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1546
    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannels:Ljava/util/Hashtable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannels:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1547
    :cond_0
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Not connected."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1550
    :cond_1
    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannels:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1551
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1552
    .local v1, "currentChannelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sendbird/android/model/Channel;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1553
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannels:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/model/Channel;

    .line 1554
    .local v0, "channel":Lcom/sendbird/android/model/Channel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1557
    .end local v0    # "channel":Lcom/sendbird/android/model/Channel;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1558
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Not connected."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1561
    :cond_3
    return-object v1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isUserBlocked(JJ)Z
    .locals 1
    .param p1, "userId"    # J
    .param p3, "timestamp"    # J

    .prologue
    .line 3338
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserBlockList:Lcom/sendbird/android/UserBlockList;

    if-eqz v0, :cond_0

    .line 3339
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserBlockList:Lcom/sendbird/android/UserBlockList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sendbird/android/UserBlockList;->isBlocked(JJ)Z

    move-result v0

    .line 3341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leave(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1994
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1995
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$21;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$21;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2050
    :goto_0
    return-void

    .line 2017
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$22;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$22;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/sendbird/android/APIClient;->channelLeave(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public leave(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2053
    .local p1, "channelUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 2054
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$23;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$23;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2115
    :goto_0
    return-void

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$24;

    invoke-direct {v1, p0}, Lcom/sendbird/android/SendBird$SendBirdClient$24;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    invoke-virtual {v0, p1, v1}, Lcom/sendbird/android/APIClient;->channelLeave(Ljava/util/ArrayList;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 8
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserImageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAccessToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mGCMRegToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mDeviceId:Ljava/lang/String;

    new-instance v7, Lcom/sendbird/android/SendBird$SendBirdClient$25;

    invoke-direct {v7, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$25;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    invoke-virtual/range {v0 .. v7}, Lcom/sendbird/android/APIClient;->guestLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 2140
    return-void
.end method

.method public memberCount(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1753
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$11;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1768
    :goto_0
    return-void

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2}, Lcom/sendbird/android/APIClient;->memberCount(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public memberList(Ljava/lang/String;ZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "onlineOnly"    # Z
    .param p3, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/APIClient;->memberList(Ljava/lang/String;ZLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1572
    return-void
.end method

.method public messageDelete(JLcom/sendbird/android/handler/DeleteMessageHandler;)V
    .locals 3
    .param p1, "messageId"    # J
    .param p3, "handler"    # Lcom/sendbird/android/handler/DeleteMessageHandler;

    .prologue
    .line 1891
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1892
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$17;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$17;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/DeleteMessageHandler;J)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1932
    :goto_0
    return-void

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$18;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sendbird/android/SendBird$SendBirdClient$18;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/DeleteMessageHandler;J)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sendbird/android/APIClient;->messageDelete(JLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public messageList(Ljava/lang/String;JIIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 10
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "messageTimestamp"    # J
    .param p4, "prevLimit"    # I
    .param p5, "nextLimit"    # I
    .param p6, "include"    # Z
    .param p7, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1851
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1852
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$15;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sendbird/android/SendBird$SendBirdClient$15;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;JIIZ)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1868
    :goto_0
    return-void

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sendbird/android/APIClient;->messageList(Ljava/lang/String;JIIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public messageListByTimestamp(Ljava/lang/String;JJLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 8
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "messageTimestampStart"    # J
    .param p4, "messageTimestampEnd"    # J
    .param p6, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1871
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1872
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$16;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/sendbird/android/SendBird$SendBirdClient$16;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;JJ)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1888
    :goto_0
    return-void

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sendbird/android/APIClient;->messageListByTimestamp(Ljava/lang/String;JJLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public messagingListCancel()V
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0}, Lcom/sendbird/android/APIClient;->messagingListCancel()V

    .line 1848
    return-void
.end method

.method public messagingList_v3(Ljava/lang/String;IIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "limit"    # I
    .param p4, "showEmpty"    # Z
    .param p5, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1828
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1829
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$14;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sendbird/android/SendBird$SendBirdClient$14;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1844
    :goto_0
    return-void

    .line 1843
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sendbird/android/APIClient;->messagingList_v3(Ljava/lang/String;IIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public messagingUnreadCount(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1790
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1791
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$13;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$13;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1806
    :goto_0
    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1}, Lcom/sendbird/android/APIClient;->messagingUnreadCount(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public onlineMemberCount(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1734
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$10;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1749
    :goto_0
    return-void

    .line 1748
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2}, Lcom/sendbird/android/APIClient;->onlineMemberCount(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public registerMultiChannelSystemEventHandler(Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    .prologue
    .line 2797
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelSystemEventHandler:Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    .line 2798
    return-void
.end method

.method public registerNotificationHandler(Lcom/sendbird/android/SendBirdNotificationHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sendbird/android/SendBirdNotificationHandler;

    .prologue
    .line 2777
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdNotificationHandler:Lcom/sendbird/android/SendBirdNotificationHandler;

    .line 2778
    return-void
.end method

.method public registerPushToken(Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/sendbird/android/handler/RegisterPushTokenHandler;

    .prologue
    .line 3345
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 3346
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$66;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$66;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3377
    :goto_0
    return-void

    .line 3360
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mGCMRegToken:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/SendBird$SendBirdClient$67;

    invoke-direct {v2, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$67;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/RegisterPushTokenHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/APIClient;->registerPushToken(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public registerSystemEventHandler(Lcom/sendbird/android/SendBirdSystemEventHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sendbird/android/SendBirdSystemEventHandler;

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdSystemEventHandler:Lcom/sendbird/android/SendBirdSystemEventHandler;

    .line 2788
    return-void
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1439
    return-void
.end method

.method public setChannelUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 1495
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrl:Ljava/lang/String;

    .line 1496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mJoinRequired:Z

    .line 1498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrls:Ljava/util/Set;

    .line 1499
    return-void
.end method

.method public setChannelUrls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1506
    .local p1, "channelUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrls:Ljava/util/Set;

    .line 1507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mJoinRequired:Z

    .line 1509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mChannelUrl:Ljava/lang/String;

    .line 1510
    return-void
.end method

.method public setEventHandler(Lcom/sendbird/android/SendBirdEventHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/sendbird/android/SendBirdEventHandler;

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    .line 1486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    .line 1487
    return-void
.end method

.method public setLoginInfo(Lcom/sendbird/android/SendBird$LoginOption;Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # Lcom/sendbird/android/SendBird$LoginOption;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 1517
    invoke-virtual {p1}, Lcom/sendbird/android/SendBird$LoginOption;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserId:Ljava/lang/String;

    .line 1518
    invoke-virtual {p1}, Lcom/sendbird/android/SendBird$LoginOption;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserName:Ljava/lang/String;

    .line 1519
    invoke-virtual {p1}, Lcom/sendbird/android/SendBird$LoginOption;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mUserImageUrl:Ljava/lang/String;

    .line 1520
    invoke-virtual {p1}, Lcom/sendbird/android/SendBird$LoginOption;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAccessToken:Ljava/lang/String;

    .line 1521
    invoke-virtual {p1}, Lcom/sendbird/android/SendBird$LoginOption;->getGcmRegToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mGCMRegToken:Ljava/lang/String;

    .line 1522
    iput-object p2, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mDeviceId:Ljava/lang/String;

    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    .line 1524
    return-void
.end method

.method public setMultiChannelEventHandler(Lcom/sendbird/android/SendBirdMultiChannelEventHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    .prologue
    .line 1490
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdEventHandler:Lcom/sendbird/android/SendBirdEventHandler;

    .line 1491
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelEventHandler:Lcom/sendbird/android/SendBirdMultiChannelEventHandler;

    .line 1492
    return-void
.end method

.method public unregisterAllDevicesPushToken(Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    .prologue
    .line 3415
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 3416
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$70;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$70;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3447
    :goto_0
    return-void

    .line 3430
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    new-instance v1, Lcom/sendbird/android/SendBird$SendBirdClient$71;

    invoke-direct {v1, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$71;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/APIClient;->unregisterAllDevicesPushToken(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public unregisterCurrentDevicePushToken(Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/sendbird/android/handler/UnregisterPushTokenHandler;

    .prologue
    .line 3380
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 3381
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$68;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$68;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 3412
    :goto_0
    return-void

    .line 3395
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    iget-object v1, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mGCMRegToken:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/SendBird$SendBirdClient$69;

    invoke-direct {v2, p0, p1}, Lcom/sendbird/android/SendBird$SendBirdClient$69;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/handler/UnregisterPushTokenHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/APIClient;->unregisterCurrentDevicePushToken(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method

.method public unregisterMultiChannelSystemEventHandler()V
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelSystemEventHandler:Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    if-eqz v0, :cond_0

    .line 2802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdMultiChannelSystemEventHandler:Lcom/sendbird/android/SendBirdMultiChannelSystemEventHandler;

    .line 2804
    :cond_0
    return-void
.end method

.method public unregisterNotificationHandler()V
    .locals 1

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdNotificationHandler:Lcom/sendbird/android/SendBirdNotificationHandler;

    if-eqz v0, :cond_0

    .line 2782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdNotificationHandler:Lcom/sendbird/android/SendBirdNotificationHandler;

    .line 2784
    :cond_0
    return-void
.end method

.method public unregisterSystemEventHandler()V
    .locals 1

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdSystemEventHandler:Lcom/sendbird/android/SendBirdSystemEventHandler;

    if-eqz v0, :cond_0

    .line 2792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mSendBirdSystemEventHandler:Lcom/sendbird/android/SendBirdSystemEventHandler;

    .line 2794
    :cond_0
    return-void
.end method

.method public userList(Ljava/lang/String;IILcom/sendbird/android/APIClient$APIClientEventHandler;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "limit"    # I
    .param p4, "handler"    # Lcom/sendbird/android/APIClient$APIClientEventHandler;

    .prologue
    .line 1771
    iget-boolean v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mLoginRequired:Z

    if-eqz v0, :cond_0

    .line 1772
    new-instance v0, Lcom/sendbird/android/SendBird$SendBirdClient$12;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient$12;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/APIClient$APIClientEventHandler;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->login(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V

    .line 1787
    :goto_0
    return-void

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient;->mAPIClient:Lcom/sendbird/android/APIClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sendbird/android/APIClient;->userList(Ljava/lang/String;IILcom/sendbird/android/APIClient$APIClientEventHandler;)V

    goto :goto_0
.end method
