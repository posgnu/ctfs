.class final Lretrofit/OkHttpCall;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lretrofit/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;,
        Lretrofit/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Call",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final args:[Ljava/lang/Object;

.field private volatile canceled:Z

.field private executed:Z

.field private volatile rawCall:Lcom/squareup/okhttp/Call;

.field private final requestFactory:Lretrofit/RequestFactory;

.field private final responseConverter:Lretrofit/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Converter",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final retrofit:Lretrofit/Retrofit;


# direct methods
.method constructor <init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/Converter;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .param p2, "requestFactory"    # Lretrofit/RequestFactory;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Retrofit;",
            "Lretrofit/RequestFactory;",
            "Lretrofit/Converter",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    .local p3, "responseConverter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    .line 42
    iput-object p2, p0, Lretrofit/OkHttpCall;->requestFactory:Lretrofit/RequestFactory;

    .line 43
    iput-object p3, p0, Lretrofit/OkHttpCall;->responseConverter:Lretrofit/Converter;

    .line 44
    iput-object p4, p0, Lretrofit/OkHttpCall;->args:[Ljava/lang/Object;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lretrofit/OkHttpCall;)Lretrofit/Retrofit;
    .locals 1
    .param p0, "x0"    # Lretrofit/OkHttpCall;

    .prologue
    .line 29
    iget-object v0, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    return-object v0
.end method

.method static synthetic access$100(Lretrofit/OkHttpCall;Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    .locals 1
    .param p0, "x0"    # Lretrofit/OkHttpCall;
    .param p1, "x1"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lretrofit/OkHttpCall;->parseResponse(Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object v0

    return-object v0
.end method

.method private createRawCall()Lcom/squareup/okhttp/Call;
    .locals 3

    .prologue
    .line 120
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    iget-object v0, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    invoke-virtual {v0}, Lretrofit/Retrofit;->client()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lretrofit/OkHttpCall;->requestFactory:Lretrofit/RequestFactory;

    iget-object v2, p0, Lretrofit/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lretrofit/RequestFactory;->create([Ljava/lang/Object;)Lcom/squareup/okhttp/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    return-object v0
.end method

.method private parseResponse(Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    .locals 12
    .param p1, "rawResponse"    # Lcom/squareup/okhttp/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/Response;",
            ")",
            "Lretrofit/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v5

    .line 127
    .local v5, "rawBody":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v6

    new-instance v7, Lretrofit/OkHttpCall$NoContentResponseBody;

    .line 128
    invoke-virtual {v5}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    invoke-virtual {v5}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v10

    invoke-direct {v7, v8, v10, v11}, Lretrofit/OkHttpCall$NoContentResponseBody;-><init>(Lcom/squareup/okhttp/MediaType;J)V

    invoke-virtual {v6, v7}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v6

    .line 129
    invoke-virtual {v6}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    .line 132
    .local v3, "code":I
    const/16 v6, 0xc8

    if-lt v3, v6, :cond_0

    const/16 v6, 0x12c

    if-lt v3, v6, :cond_1

    .line 135
    :cond_0
    :try_start_0
    invoke-static {v5}, Lretrofit/Utils;->readBodyToBytesIfNecessary(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/ResponseBody;

    move-result-object v1

    .line 136
    .local v1, "bufferedBody":Lcom/squareup/okhttp/ResponseBody;
    invoke-static {v1, p1}, Lretrofit/Response;->error(Lcom/squareup/okhttp/ResponseBody;Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 138
    invoke-static {v5}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 149
    .end local v1    # "bufferedBody":Lcom/squareup/okhttp/ResponseBody;
    :goto_0
    return-object v6

    .line 138
    :catchall_0
    move-exception v6

    invoke-static {v5}, Lretrofit/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v6

    .line 142
    :cond_1
    const/16 v6, 0xcc

    if-eq v3, v6, :cond_2

    const/16 v6, 0xcd

    if-ne v3, v6, :cond_3

    .line 143
    :cond_2
    const/4 v6, 0x0

    invoke-static {v6, p1}, Lretrofit/Response;->success(Ljava/lang/Object;Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object v6

    goto :goto_0

    .line 146
    :cond_3
    new-instance v2, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;

    invoke-direct {v2, v5}, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;-><init>(Lcom/squareup/okhttp/ResponseBody;)V

    .line 148
    .local v2, "catchingBody":Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;
    :try_start_1
    iget-object v6, p0, Lretrofit/OkHttpCall;->responseConverter:Lretrofit/Converter;

    invoke-interface {v6, v2}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "body":Ljava/lang/Object;, "TT;"
    invoke-static {v0, p1}, Lretrofit/Response;->success(Ljava/lang/Object;Lcom/squareup/okhttp/Response;)Lretrofit/Response;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    .line 150
    .end local v0    # "body":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 153
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->throwIfCaught()V

    .line 154
    throw v4
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 159
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lretrofit/OkHttpCall;->canceled:Z

    .line 160
    iget-object v0, p0, Lretrofit/OkHttpCall;->rawCall:Lcom/squareup/okhttp/Call;

    .line 161
    .local v0, "rawCall":Lcom/squareup/okhttp/Call;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 164
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit/OkHttpCall;->clone()Lretrofit/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lretrofit/Call;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    invoke-virtual {p0}, Lretrofit/OkHttpCall;->clone()Lretrofit/OkHttpCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit/OkHttpCall;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/OkHttpCall",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    new-instance v0, Lretrofit/OkHttpCall;

    iget-object v1, p0, Lretrofit/OkHttpCall;->retrofit:Lretrofit/Retrofit;

    iget-object v2, p0, Lretrofit/OkHttpCall;->requestFactory:Lretrofit/RequestFactory;

    iget-object v3, p0, Lretrofit/OkHttpCall;->responseConverter:Lretrofit/Converter;

    iget-object v4, p0, Lretrofit/OkHttpCall;->args:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit/OkHttpCall;-><init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/Converter;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public enqueue(Lretrofit/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<TT;>;"
    monitor-enter p0

    .line 54
    :try_start_0
    iget-boolean v2, p0, Lretrofit/OkHttpCall;->executed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already executed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 55
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lretrofit/OkHttpCall;->executed:Z

    .line 56
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    invoke-direct {p0}, Lretrofit/OkHttpCall;->createRawCall()Lcom/squareup/okhttp/Call;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 65
    .local v0, "rawCall":Lcom/squareup/okhttp/Call;
    iget-boolean v2, p0, Lretrofit/OkHttpCall;->canceled:Z

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 68
    :cond_1
    iput-object v0, p0, Lretrofit/OkHttpCall;->rawCall:Lcom/squareup/okhttp/Call;

    .line 70
    new-instance v2, Lretrofit/OkHttpCall$1;

    invoke-direct {v2, p0, p1}, Lretrofit/OkHttpCall$1;-><init>(Lretrofit/OkHttpCall;Lretrofit/Callback;)V

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/Call;->enqueue(Lcom/squareup/okhttp/Callback;)V

    .line 102
    .end local v0    # "rawCall":Lcom/squareup/okhttp/Call;
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public execute()Lretrofit/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lretrofit/OkHttpCall;, "Lretrofit/OkHttpCall<TT;>;"
    monitor-enter p0

    .line 106
    :try_start_0
    iget-boolean v1, p0, Lretrofit/OkHttpCall;->executed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already executed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lretrofit/OkHttpCall;->executed:Z

    .line 108
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-direct {p0}, Lretrofit/OkHttpCall;->createRawCall()Lcom/squareup/okhttp/Call;

    move-result-object v0

    .line 111
    .local v0, "rawCall":Lcom/squareup/okhttp/Call;
    iget-boolean v1, p0, Lretrofit/OkHttpCall;->canceled:Z

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 114
    :cond_1
    iput-object v0, p0, Lretrofit/OkHttpCall;->rawCall:Lcom/squareup/okhttp/Call;

    .line 116
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-direct {p0, v1}, Lretrofit/OkHttpCall;->parseResponse(Lcom/squareup/okhttp/Response;)Lretrofit/Response;

    move-result-object v1

    return-object v1
.end method
