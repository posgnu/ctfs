.class public final Lcom/sendbird/android/shadow/okhttp3/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;,
        Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;,
        Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    .line 177
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/internal/io/FileSystem;->SYSTEM:Lcom/sendbird/android/shadow/okhttp3/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sendbird/android/shadow/okhttp3/Cache;-><init>(Ljava/io/File;JLcom/sendbird/android/shadow/okhttp3/internal/io/FileSystem;)V

    .line 178
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLcom/sendbird/android/shadow/okhttp3/internal/io/FileSystem;)V
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lcom/sendbird/android/shadow/okhttp3/internal/io/FileSystem;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/Cache$1;

    invoke-direct {v0, p0}, Lcom/sendbird/android/shadow/okhttp3/Cache$1;-><init>(Lcom/sendbird/android/shadow/okhttp3/Cache;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    .line 181
    const v2, 0x31191

    const/4 v3, 0x2

    move-object v0, p4

    move-object v1, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->create(Lcom/sendbird/android/shadow/okhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    .line 182
    return-void
.end method

.method private abortQuietly(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;
    .param p1, "x1"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->put(Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;
    .param p1, "x1"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->remove(Lcom/sendbird/android/shadow/okhttp3/Request;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sendbird/android/shadow/okio/BufferedSource;)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Lcom/sendbird/android/shadow/okhttp3/Cache;->readInt(Lcom/sendbird/android/shadow/okio/BufferedSource;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;
    .param p1, "x1"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .param p2, "x2"    # Lcom/sendbird/android/shadow/okhttp3/Response;

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/shadow/okhttp3/Cache;->update(Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/Response;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sendbird/android/shadow/okhttp3/Cache;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/Cache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$400(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;
    .param p1, "x1"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->trackResponse(Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sendbird/android/shadow/okhttp3/Cache;)Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    return-object v0
.end method

.method static synthetic access$808(Lcom/sendbird/android/shadow/okhttp3/Cache;)I
    .locals 2
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;

    .prologue
    .line 135
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/sendbird/android/shadow/okhttp3/Cache;)I
    .locals 2
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache;

    .prologue
    .line 135
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->writeAbortCount:I

    return v0
.end method

.method private put(Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheRequest;
    .locals 7
    .param p1, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Response;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Response;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/Request;->method()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    :try_start_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Response;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sendbird/android/shadow/okhttp3/Cache;->remove(Lcom/sendbird/android/shadow/okhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    :cond_0
    :goto_0
    return-object v4

    .line 230
    :cond_1
    const-string v5, "GET"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/OkHeaders;->hasVaryAll(Lcom/sendbird/android/shadow/okhttp3/Response;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 241
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;

    invoke-direct {v2, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;-><init>(Lcom/sendbird/android/shadow/okhttp3/Response;)V

    .line 242
    .local v2, "entry":Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;
    const/4 v1, 0x0

    .line 244
    .local v1, "editor":Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;
    :try_start_1
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Response;->request()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v6

    invoke-static {v6}, Lcom/sendbird/android/shadow/okhttp3/Cache;->urlToKey(Lcom/sendbird/android/shadow/okhttp3/Request;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v2, v1}, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;->writeTo(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V

    .line 249
    new-instance v5, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;

    invoke-direct {v5, p0, v1}, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;-><init>(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->abortQuietly(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V

    goto :goto_0

    .line 225
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "editor":Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;
    .end local v2    # "entry":Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private static readInt(Lcom/sendbird/android/shadow/okio/BufferedSource;)I
    .locals 7
    .param p0, "source"    # Lcom/sendbird/android/shadow/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    :try_start_0
    invoke-interface {p0}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v2

    .line 719
    .local v2, "result":J
    invoke-interface {p0}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "line":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 721
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected an int but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "result":J
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 723
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "result":J
    :cond_1
    long-to-int v4, v2

    return v4
.end method

.method private remove(Lcom/sendbird/android/shadow/okhttp3/Request;)V
    .locals 2
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->urlToKey(Lcom/sendbird/android/shadow/okhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 258
    return-void
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->requestCount:I

    .line 403
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;->networkRequest:Lcom/sendbird/android/shadow/okhttp3/Request;

    if-eqz v0, :cond_1

    .line 405
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 406
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/internal/http/CacheStrategy;->cacheResponse:Lcom/sendbird/android/shadow/okhttp3/Response;

    if-eqz v0, :cond_0

    .line 408
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private update(Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 5
    .param p1, "cached"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .param p2, "network"    # Lcom/sendbird/android/shadow/okhttp3/Response;

    .prologue
    .line 261
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;

    invoke-direct {v2, p2}, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;-><init>(Lcom/sendbird/android/shadow/okhttp3/Response;)V

    .line 262
    .local v2, "entry":Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Response;->body()Lcom/sendbird/android/shadow/okhttp3/ResponseBody;

    move-result-object v4

    check-cast v4, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;

    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->access$500(Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;)Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;

    move-result-object v3

    .line 263
    .local v3, "snapshot":Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;
    const/4 v1, 0x0

    .line 265
    .local v1, "editor":Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;->edit()Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_0

    .line 267
    invoke-virtual {v2, v1}, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;->writeTo(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V

    .line 268
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->abortQuietly(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V

    goto :goto_0
.end method

.method private static urlToKey(Lcom/sendbird/android/shadow/okhttp3/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/Request;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 389
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->close()V

    .line 390
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->delete()V

    .line 306
    return-void
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->evictAll()V

    .line 314
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->flush()V

    .line 386
    return-void
.end method

.method get(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Response;
    .locals 7
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Cache;->urlToKey(Lcom/sendbird/android/shadow/okhttp3/Request;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v6, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 194
    .local v4, "snapshot":Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;
    if-nez v4, :cond_1

    move-object v3, v5

    .line 216
    .end local v4    # "snapshot":Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;
    :cond_0
    :goto_0
    return-object v3

    .line 197
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v5

    .line 199
    goto :goto_0

    .line 203
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snapshot":Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;-><init>(Lcom/sendbird/android/shadow/okio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    .local v1, "entry":Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;
    invoke-virtual {v1, v4}, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;->response(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;)Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v3

    .line 211
    .local v3, "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    invoke-virtual {v1, p1, v3}, Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;->matches(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Response;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 212
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Response;->body()Lcom/sendbird/android/shadow/okhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 213
    goto :goto_0

    .line 204
    .end local v1    # "entry":Lcom/sendbird/android/shadow/okhttp3/Cache$Entry;
    .end local v3    # "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    :catch_1
    move-exception v0

    .line 205
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v5

    .line 206
    goto :goto_0
.end method

.method public declared-synchronized hitCount()I
    .locals 1

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->initialize()V

    .line 298
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCount()I
    .locals 1

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->cache:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/Cache$2;

    invoke-direct {v0, p0}, Lcom/sendbird/android/shadow/okhttp3/Cache$2;-><init>(Lcom/sendbird/android/shadow/okhttp3/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .locals 1

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .locals 1

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
