.class public final Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# instance fields
.field public final address:Lcom/sendbird/android/shadow/okhttp3/Address;

.field private canceled:Z

.field private connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

.field private final connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

.field private refusedStreamCount:I

.field private released:Z

.field private route:Lcom/sendbird/android/shadow/okhttp3/Route;

.field private final routeSelector:Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;

.field private stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/Address;)V
    .locals 2
    .param p1, "connectionPool"    # Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;
    .param p2, "address"    # Lcom/sendbird/android/shadow/okhttp3/Address;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    .line 85
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->address:Lcom/sendbird/android/shadow/okhttp3/Address;

    .line 86
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;

    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->routeDatabase()Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;-><init>(Lcom/sendbird/android/shadow/okhttp3/Address;Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->routeSelector:Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;

    .line 87
    return-void
.end method

.method private deallocate(ZZZ)V
    .locals 6
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "connectionToClose":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 236
    if-eqz p3, :cond_0

    .line 237
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    .line 239
    :cond_0
    if-eqz p2, :cond_1

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->released:Z

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    if-eqz v1, :cond_5

    .line 243
    if-eqz p1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->noNewStreams:Z

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->released:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    iget-boolean v1, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_5

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    invoke-direct {p0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->release(Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V

    .line 248
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    iget-object v1, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->idleAtNanos:J

    .line 250
    sget-object v1, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->instance:Lcom/sendbird/android/shadow/okhttp3/internal/Internal;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    invoke-virtual {v1, v3, v4}, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->connectionBecameIdle(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .line 254
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .line 257
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    if-eqz v0, :cond_6

    .line 259
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 261
    :cond_6
    return-void

    .line 257
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private findConnection(IIIZ)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    .locals 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->released:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 153
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "stream != null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->canceled:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_2
    iget-object v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .line 157
    .local v6, "allocatedConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    if-eqz v6, :cond_3

    iget-boolean v1, v6, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->noNewStreams:Z

    if-nez v1, :cond_3

    .line 158
    monitor-exit v2

    .line 191
    .end local v6    # "allocatedConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    :goto_0
    return-object v6

    .line 162
    .restart local v6    # "allocatedConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    :cond_3
    sget-object v1, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->instance:Lcom/sendbird/android/shadow/okhttp3/internal/Internal;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->address:Lcom/sendbird/android/shadow/okhttp3/Address;

    invoke-virtual {v1, v3, v4, p0}, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->get(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/Address;Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    move-result-object v7

    .line 163
    .local v7, "pooledConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    if-eqz v7, :cond_4

    .line 164
    iput-object v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .line 165
    monitor-exit v2

    move-object v6, v7

    goto :goto_0

    .line 168
    :cond_4
    iget-object v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 169
    .local v8, "selectedRoute":Lcom/sendbird/android/shadow/okhttp3/Route;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    if-nez v8, :cond_5

    .line 172
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->routeSelector:Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;->next()Lcom/sendbird/android/shadow/okhttp3/Route;

    move-result-object v8

    .line 173
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 174
    :try_start_2
    iput-object v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 175
    const/4 v1, 0x0

    iput v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->refusedStreamCount:I

    .line 176
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 178
    :cond_5
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    invoke-direct {v0, v8}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;-><init>(Lcom/sendbird/android/shadow/okhttp3/Route;)V

    .line 179
    .local v0, "newConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    invoke-virtual {p0, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->acquire(Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V

    .line 181
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 182
    :try_start_3
    sget-object v1, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->instance:Lcom/sendbird/android/shadow/okhttp3/internal/Internal;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    invoke-virtual {v1, v3, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->put(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V

    .line 183
    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .line 184
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->canceled:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 176
    .end local v0    # "newConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 185
    .restart local v0    # "newConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    :cond_6
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 187
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->address:Lcom/sendbird/android/shadow/okhttp3/Address;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->connect(IIILjava/util/List;Z)V

    .line 189
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->routeDatabase()Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route()Lcom/sendbird/android/shadow/okhttp3/Route;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;->connected(Lcom/sendbird/android/shadow/okhttp3/Route;)V

    move-object v6, v0

    .line 191
    goto :goto_0
.end method

.method private findHealthyConnection(IIIZZ)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .line 123
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->findConnection(IIIZ)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    move-result-object v0

    .line 127
    .local v0, "candidate":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v2

    .line 128
    :try_start_0
    iget v1, v0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->successCount:I

    if-nez v1, :cond_1

    .line 129
    monitor-exit v2

    .line 140
    :cond_0
    return-object v0

    .line 131
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v0, p5}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->noNewStreams()V

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private release(Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 320
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    .line 321
    .local v1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;>;"
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 322
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 323
    return-void

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private routeDatabase()Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->instance:Lcom/sendbird/android/shadow/okhttp3/internal/Internal;

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->routeDatabase(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;)Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .prologue
    .line 314
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 266
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v3

    .line 267
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->canceled:Z

    .line 268
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    .line 269
    .local v1, "streamToCancel":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .line 270
    .local v0, "connectionToCancel":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;->cancel()V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 270
    .end local v0    # "connectionToCancel":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    .end local v1    # "streamToCancel":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 273
    .restart local v0    # "connectionToCancel":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    .restart local v1    # "streamToCancel":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    :cond_1
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->cancel()V

    goto :goto_0
.end method

.method public declared-synchronized connection()Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->routeSelector:Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newStream(IIIZZ)Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->findHealthyConnection(IIIZZ)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    move-result-object v1

    .line 97
    .local v1, "resultConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    iget-object v3, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    if-eqz v3, :cond_0

    .line 98
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;

    iget-object v3, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    invoke-direct {v2, p0, v3}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;)V

    .line 106
    .local v2, "resultStream":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    :goto_0
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iput-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    .line 108
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 100
    .end local v2    # "resultStream":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 101
    iget-object v3, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v3}, Lcom/sendbird/android/shadow/okio/BufferedSource;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v3

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sendbird/android/shadow/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okio/Timeout;

    .line 102
    iget-object v3, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v3}, Lcom/sendbird/android/shadow/okio/BufferedSink;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v3

    int-to-long v4, p3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/sendbird/android/shadow/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okio/Timeout;

    .line 103
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    iget-object v3, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    iget-object v4, v1, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-direct {v2, p0, v3, v4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;Lcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okio/BufferedSink;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v2    # "resultStream":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 110
    .end local v1    # "resultConnection":Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    .end local v2    # "resultStream":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;

    invoke-direct {v3, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3
.end method

.method public noNewStreams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 227
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 222
    return-void
.end method

.method public stream()Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    monitor-exit v1

    return-object v0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v6, 0x1

    .line 279
    const/4 v1, 0x0

    .line 281
    .local v1, "noNewStreams":Z
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v4

    .line 282
    :try_start_0
    instance-of v3, p1, Lcom/sendbird/android/shadow/okhttp3/internal/framed/StreamResetException;

    if-eqz v3, :cond_3

    .line 283
    move-object v0, p1

    check-cast v0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/StreamResetException;

    move-object v2, v0

    .line 284
    .local v2, "streamResetException":Lcom/sendbird/android/shadow/okhttp3/internal/framed/StreamResetException;
    iget-object v3, v2, Lcom/sendbird/android/shadow/okhttp3/internal/framed/StreamResetException;->errorCode:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    sget-object v5, Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    if-ne v3, v5, :cond_0

    .line 285
    iget v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->refusedStreamCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->refusedStreamCount:I

    .line 289
    :cond_0
    iget-object v3, v2, Lcom/sendbird/android/shadow/okhttp3/internal/framed/StreamResetException;->errorCode:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    sget-object v5, Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    if-ne v3, v5, :cond_1

    iget v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->refusedStreamCount:I

    if-le v3, v6, :cond_2

    .line 290
    :cond_1
    const/4 v1, 0x1

    .line 291
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 304
    .end local v2    # "streamResetException":Lcom/sendbird/android/shadow/okhttp3/internal/framed/StreamResetException;
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 307
    return-void

    .line 293
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->isMultiplexed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 294
    const/4 v1, 0x1

    .line 297
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    iget v3, v3, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->successCount:I

    if-nez v3, :cond_2

    .line 298
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 299
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->routeSelector:Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;

    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v3, v5, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteSelector;->connectFailed(Lcom/sendbird/android/shadow/okhttp3/Route;Ljava/io/IOException;)V

    .line 301
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public streamFinished(ZLcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;)V
    .locals 4
    .param p1, "noNewStreams"    # Z
    .param p2, "stream"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    monitor-enter v1

    .line 196
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    if-eq p2, v0, :cond_1

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->stream:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 199
    :cond_1
    if-nez p1, :cond_2

    .line 200
    :try_start_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->connection:Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    iget v2, v0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->successCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->successCount:I

    .line 202
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->deallocate(ZZZ)V

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->address:Lcom/sendbird/android/shadow/okhttp3/Address;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
