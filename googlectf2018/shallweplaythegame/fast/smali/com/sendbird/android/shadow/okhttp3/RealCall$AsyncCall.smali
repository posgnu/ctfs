.class final Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;
.super Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# instance fields
.field private final forWebSocket:Z

.field private final responseCallback:Lcom/sendbird/android/shadow/okhttp3/Callback;

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;


# direct methods
.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/RealCall;Lcom/sendbird/android/shadow/okhttp3/Callback;Z)V
    .locals 4
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/RealCall;
    .param p2, "responseCallback"    # Lcom/sendbird/android/shadow/okhttp3/Callback;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    .line 99
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->redactedUrl()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/sendbird/android/shadow/okhttp3/Callback;

    .line 101
    iput-boolean p3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->forWebSocket:Z

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/sendbird/android/shadow/okhttp3/RealCall;Lcom/sendbird/android/shadow/okhttp3/Callback;ZLcom/sendbird/android/shadow/okhttp3/RealCall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/okhttp3/RealCall;
    .param p2, "x1"    # Lcom/sendbird/android/shadow/okhttp3/Callback;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/sendbird/android/shadow/okhttp3/RealCall$1;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;-><init>(Lcom/sendbird/android/shadow/okhttp3/RealCall;Lcom/sendbird/android/shadow/okhttp3/Callback;Z)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->cancel()V

    .line 118
    return-void
.end method

.method protected execute()V
    .locals 7

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 127
    .local v2, "signalledCallback":Z
    :try_start_0
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    iget-boolean v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->forWebSocket:Z

    invoke-static {v3, v4}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->access$100(Lcom/sendbird/android/shadow/okhttp3/RealCall;Z)Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v1

    .line 128
    .local v1, "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    iget-boolean v3, v3, Lcom/sendbird/android/shadow/okhttp3/RealCall;->canceled:Z

    if-eqz v3, :cond_0

    .line 129
    const/4 v2, 0x1

    .line 130
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/sendbird/android/shadow/okhttp3/Callback;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    new-instance v5, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4, v5}, Lcom/sendbird/android/shadow/okhttp3/Callback;->onFailure(Lcom/sendbird/android/shadow/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->access$300(Lcom/sendbird/android/shadow/okhttp3/RealCall;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->finished(Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;)V

    .line 145
    .end local v1    # "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    :goto_1
    return-void

    .line 132
    .restart local v1    # "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    :cond_0
    const/4 v2, 0x1

    .line 133
    :try_start_1
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/sendbird/android/shadow/okhttp3/Callback;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-interface {v3, v4, v1}, Lcom/sendbird/android/shadow/okhttp3/Callback;->onResponse(Lcom/sendbird/android/shadow/okhttp3/Call;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    .end local v1    # "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 138
    :try_start_2
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v3

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Callback failure for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-static {v6}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->access$200(Lcom/sendbird/android/shadow/okhttp3/RealCall;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_2
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->access$300(Lcom/sendbird/android/shadow/okhttp3/RealCall;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->finished(Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;)V

    goto :goto_1

    .line 140
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->responseCallback:Lcom/sendbird/android/shadow/okhttp3/Callback;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-interface {v3, v4, v0}, Lcom/sendbird/android/shadow/okhttp3/Callback;->onFailure(Lcom/sendbird/android/shadow/okhttp3/Call;Ljava/io/IOException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->access$300(Lcom/sendbird/android/shadow/okhttp3/RealCall;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;->finished(Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;)V

    throw v3
.end method

.method get()Lcom/sendbird/android/shadow/okhttp3/RealCall;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/RealCall;->originalRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Request;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lcom/sendbird/android/shadow/okhttp3/Request;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/RealCall;->originalRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    return-object v0
.end method

.method tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RealCall$AsyncCall;->this$0:Lcom/sendbird/android/shadow/okhttp3/RealCall;

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/RealCall;->originalRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
