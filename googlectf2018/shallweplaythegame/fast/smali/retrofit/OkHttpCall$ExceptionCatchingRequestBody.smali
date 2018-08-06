.class final Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionCatchingRequestBody"
.end annotation


# instance fields
.field private final delegate:Lcom/squareup/okhttp/ResponseBody;

.field private thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/ResponseBody;)V
    .locals 0
    .param p1, "delegate"    # Lcom/squareup/okhttp/ResponseBody;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 193
    iput-object p1, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    .line 194
    return-void
.end method

.method static synthetic access$202(Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .param p0, "x0"    # Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;
    .param p1, "x1"    # Ljava/io/IOException;

    .prologue
    .line 188
    iput-object p1, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 231
    return-void
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v1}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    .line 205
    throw v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    iget-object v2, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->delegate:Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/BufferedSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 217
    .local v0, "delegateSource":Lokio/BufferedSource;
    new-instance v2, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody$1;

    invoke-direct {v2, p0, v0}, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody$1;-><init>(Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;Lokio/Source;)V

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    return-object v2

    .line 213
    .end local v0    # "delegateSource":Lokio/BufferedSource;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/IOException;
    iput-object v1, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    .line 215
    throw v1
.end method

.method throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lretrofit/OkHttpCall$ExceptionCatchingRequestBody;->thrownException:Ljava/io/IOException;

    throw v0

    .line 237
    :cond_0
    return-void
.end method
