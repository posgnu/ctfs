.class Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->cacheWritingResponse(Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

.field final synthetic val$cacheBody:Lcom/sendbird/android/shadow/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;

.field final synthetic val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;Lcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;Lcom/sendbird/android/shadow/okio/BufferedSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;

    iput-object p4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$cacheBody:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 845
    invoke-static {p0, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->discard(Lcom/sendbird/android/shadow/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 847
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;->abort()V

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/BufferedSource;->close()V

    .line 850
    return-void
.end method

.method public read(Lcom/sendbird/android/shadow/okio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, 0x1

    .line 817
    :try_start_0
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v2, p1, p2, p3}, Lcom/sendbird/android/shadow/okio/BufferedSource;->read(Lcom/sendbird/android/shadow/okio/Buffer;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 826
    .local v4, "bytesRead":J
    cmp-long v2, v4, v0

    if-nez v2, :cond_2

    .line 827
    iget-boolean v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v2, :cond_0

    .line 828
    iput-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 829
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$cacheBody:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v2}, Lcom/sendbird/android/shadow/okio/BufferedSink;->close()V

    :cond_0
    move-wide v4, v0

    .line 836
    .end local v4    # "bytesRead":J
    :goto_0
    return-wide v4

    .line 818
    :catch_0
    move-exception v6

    .line 819
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    if-nez v0, :cond_1

    .line 820
    iput-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->cacheRequestClosed:Z

    .line 821
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$cacheRequest:Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;->abort()V

    .line 823
    :cond_1
    throw v6

    .line 834
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "bytesRead":J
    :cond_2
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$cacheBody:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/BufferedSink;->buffer()Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sendbird/android/shadow/okio/Buffer;->copyTo(Lcom/sendbird/android/shadow/okio/Buffer;JJ)Lcom/sendbird/android/shadow/okio/Buffer;

    .line 835
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$cacheBody:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/BufferedSink;->emitCompleteSegments()Lcom/sendbird/android/shadow/okio/BufferedSink;

    goto :goto_0
.end method

.method public timeout()Lcom/sendbird/android/shadow/okio/Timeout;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$2;->val$source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/BufferedSource;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
