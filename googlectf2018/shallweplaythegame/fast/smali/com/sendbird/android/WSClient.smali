.class Lcom/sendbird/android/WSClient;
.super Ljava/lang/Object;
.source "WSClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/WSClient$WSClientEventHandler;
    }
.end annotation


# instance fields
.field private mExplicitDisconnect:Z

.field private mHandler:Lcom/sendbird/android/WSClient$WSClientEventHandler;

.field private mLastActiveMillis:J

.field private mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

.field private mPinger:Lcom/sendbird/android/CountDownTimer;

.field private mRecvBuffer:Ljava/lang/StringBuffer;

.field private mRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

.field private final mSessionKey:Ljava/lang/String;

.field private mWatchdog:Lcom/sendbird/android/CountDownTimer;

.field private mWebsocket:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

.field private mWebsocketCall:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

.field private mWriteExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionKey"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sendbird/android/WSClient;->mSessionKey:Ljava/lang/String;

    .line 53
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/sendbird/android/WSClient;->mRecvBuffer:Ljava/lang/StringBuffer;

    .line 54
    new-instance v2, Lcom/sendbird/android/CountDownTimer;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Lcom/sendbird/android/CountDownTimer;-><init>(I)V

    iput-object v2, p0, Lcom/sendbird/android/WSClient;->mWatchdog:Lcom/sendbird/android/CountDownTimer;

    .line 55
    iget-object v2, p0, Lcom/sendbird/android/WSClient;->mWatchdog:Lcom/sendbird/android/CountDownTimer;

    new-instance v3, Lcom/sendbird/android/WSClient$1;

    invoke-direct {v3, p0}, Lcom/sendbird/android/WSClient$1;-><init>(Lcom/sendbird/android/WSClient;)V

    invoke-virtual {v2, v3}, Lcom/sendbird/android/CountDownTimer;->setEventHandler(Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;)V

    .line 89
    new-instance v2, Lcom/sendbird/android/CountDownTimer;

    const/16 v3, 0x3e8

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/sendbird/android/CountDownTimer;-><init>(IIZ)V

    iput-object v2, p0, Lcom/sendbird/android/WSClient;->mPinger:Lcom/sendbird/android/CountDownTimer;

    .line 90
    iget-object v2, p0, Lcom/sendbird/android/WSClient;->mPinger:Lcom/sendbird/android/CountDownTimer;

    new-instance v3, Lcom/sendbird/android/WSClient$2;

    invoke-direct {v3, p0}, Lcom/sendbird/android/WSClient$2;-><init>(Lcom/sendbird/android/WSClient;)V

    invoke-virtual {v2, v3}, Lcom/sendbird/android/CountDownTimer;->setEventHandler(Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;)V

    .line 125
    invoke-static {}, Lcom/sendbird/android/SendBird;->getHostUrlLastUpdatedAt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/sendbird/android/SendBird;->getHostUrlLastUpdatedAt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 126
    :cond_0
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "User-Agent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Jand/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sendbird/android/SendBird;->VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "SendBird"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Android,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sendbird/android/SendBird;->getOSVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sendbird/android/SendBird;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Connection"

    const-string v4, "keep-alive"

    invoke-virtual {v2, v3, v4}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.sendbird.com/routing/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "CALL"

    invoke-virtual {v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v1

    .line 134
    .local v1, "routeRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;-><init>()V

    .line 135
    .local v0, "okHttpClient":Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->newCall(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/sendbird/android/WSClient$3;

    invoke-direct {v3, p0}, Lcom/sendbird/android/WSClient$3;-><init>(Lcom/sendbird/android/WSClient;)V

    invoke-interface {v2, v3}, Lcom/sendbird/android/shadow/okhttp3/Call;->enqueue(Lcom/sendbird/android/shadow/okhttp3/Callback;)V

    .line 202
    .end local v0    # "okHttpClient":Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    .end local v1    # "routeRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/sendbird/android/SendBird;->getWsHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sendbird/android/WSClient;->initWebSocket(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mHandler:Lcom/sendbird/android/WSClient$WSClientEventHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/WSClient$WSClientEventHandler;)Lcom/sendbird/android/WSClient$WSClientEventHandler;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;
    .param p1, "x1"    # Lcom/sendbird/android/WSClient$WSClientEventHandler;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sendbird/android/WSClient;->mHandler:Lcom/sendbird/android/WSClient$WSClientEventHandler;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sendbird/android/WSClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sendbird/android/WSClient;->quit()V

    return-void
.end method

.method static synthetic access$200(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mWatchdog:Lcom/sendbird/android/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sendbird/android/WSClient;)J
    .locals 2
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/sendbird/android/WSClient;->mLastActiveMillis:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sendbird/android/WSClient;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/sendbird/android/WSClient;->mLastActiveMillis:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/sendbird/android/WSClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sendbird/android/WSClient;->initWebSocket(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mWebsocket:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;)Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;
    .param p1, "x1"    # Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/sendbird/android/WSClient;->mWebsocket:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mPinger:Lcom/sendbird/android/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sendbird/android/WSClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sendbird/android/WSClient;->active()V

    return-void
.end method

.method static synthetic access$800(Lcom/sendbird/android/WSClient;)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mRecvBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sendbird/android/WSClient;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/WSClient;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sendbird/android/WSClient;->mExplicitDisconnect:Z

    return v0
.end method

.method private active()V
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sendbird/android/WSClient;->mLastActiveMillis:J

    .line 226
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mWatchdog:Lcom/sendbird/android/CountDownTimer;

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 227
    return-void
.end method

.method private initWebSocket(Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/?p=Android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sendbird/android/SendBird;->getOSVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sendbird/android/SendBird;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ai="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sendbird/android/SendBird;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/WSClient;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/WSClient;->mRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    .line 212
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/WSClient;->mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    .line 216
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    .line 222
    return-void
.end method

.method private quit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    iget-object v3, p0, Lcom/sendbird/android/WSClient;->mPinger:Lcom/sendbird/android/CountDownTimer;

    invoke-virtual {v3}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 318
    iget-object v3, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_0

    .line 320
    :try_start_0
    iget-object v3, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iput-object v4, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    .line 328
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sendbird/android/WSClient;->mWebsocket:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    .line 329
    .local v2, "ws":Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;
    iput-object v4, p0, Lcom/sendbird/android/WSClient;->mWebsocket:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    .line 330
    iput-object v4, p0, Lcom/sendbird/android/WSClient;->mWebsocketCall:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

    .line 331
    iput-object v4, p0, Lcom/sendbird/android/WSClient;->mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    .line 334
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/sendbird/android/WSClient$5;

    invoke-direct {v3, p0, v2}, Lcom/sendbird/android/WSClient$5;-><init>(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 353
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_1
    return-void

    .line 321
    .end local v2    # "ws":Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    iput-object v4, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iput-object v4, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    throw v3

    .line 354
    .restart local v2    # "ws":Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;
    :catch_1
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/sendbird/android/WSClient;->mRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    invoke-static {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;->create(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/WSClient;->mWebsocketCall:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

    .line 232
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mWebsocketCall:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

    new-instance v1, Lcom/sendbird/android/WSClient$4;

    invoke-direct {v1, p0}, Lcom/sendbird/android/WSClient$4;-><init>(Lcom/sendbird/android/WSClient;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;->enqueue(Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;)V

    .line 298
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 300
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/WSClient;->mExplicitDisconnect:Z

    .line 304
    invoke-direct {p0}, Lcom/sendbird/android/WSClient;->quit()V

    .line 305
    return-void
.end method

.method public getConnectionStatus()Lcom/sendbird/android/SendBird$SendBirdConnectionState;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sendbird/android/WSClient;->mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    .line 309
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->OPEN:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    .line 312
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sendbird/android/SendBird$SendBirdConnectionState;->CLOSED:Lcom/sendbird/android/SendBird$SendBirdConnectionState;

    goto :goto_0
.end method

.method public send(Lcom/sendbird/android/Command;)Z
    .locals 3
    .param p1, "command"    # Lcom/sendbird/android/Command;

    .prologue
    .line 361
    sget-boolean v1, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 362
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/sendbird/android/Command;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/sendbird/android/WSClient;->mOkHttpClient:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sendbird/android/WSClient;->mWebsocket:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/WSClient;->mWriteExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sendbird/android/WSClient$6;

    invoke-direct {v2, p0, p1}, Lcom/sendbird/android/WSClient$6;-><init>(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/Command;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    const/4 v1, 0x1

    .line 385
    :goto_0
    return v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEventHandler(Lcom/sendbird/android/WSClient$WSClientEventHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sendbird/android/WSClient$WSClientEventHandler;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sendbird/android/WSClient;->mHandler:Lcom/sendbird/android/WSClient$WSClientEventHandler;

    .line 49
    return-void
.end method
