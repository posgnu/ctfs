.class Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;
.super Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;
.source "WebSocketCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamWebSocket"
.end annotation


# instance fields
.field private final replyExecutor:Ljava/util/concurrent/ExecutorService;

.field private final streamAllocation:Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;


# direct methods
.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;Ljava/lang/String;)V
    .locals 8
    .param p1, "streamAllocation"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;
    .param p2, "random"    # Ljava/util/Random;
    .param p3, "replyExecutor"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "listener"    # Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection()Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    move-result-object v0

    iget-object v2, v0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 174
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection()Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    move-result-object v0

    iget-object v3, v0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 173
    invoke-direct/range {v0 .. v7}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;-><init>(ZLcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;->streamAllocation:Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    .line 176
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;->replyExecutor:Ljava/util/concurrent/ExecutorService;

    .line 177
    return-void
.end method

.method static create(Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;Lcom/sendbird/android/shadow/okhttp3/Response;Ljava/util/Random;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;)Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;
    .locals 10
    .param p0, "streamAllocation"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;
    .param p1, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .param p2, "random"    # Ljava/util/Random;
    .param p3, "listener"    # Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    .prologue
    const/4 v2, 0x1

    .line 159
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Response;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Request;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    const-string v3, "OkHttp %s WebSocket"

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    .line 162
    invoke-static {v3, v8}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 163
    .local v1, "replyExecutor":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 165
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;

    move-object v3, p0

    move-object v4, p2

    move-object v5, v1

    move-object v6, p3

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;Ljava/util/Random;Ljava/util/concurrent/ExecutorService;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;->replyExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 181
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;->streamAllocation:Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->noNewStreams()V

    .line 182
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;->streamAllocation:Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$StreamWebSocket;->streamAllocation:Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream()Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->streamFinished(ZLcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;)V

    .line 183
    return-void
.end method
