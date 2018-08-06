.class public Lcom/sendbird/android/ChannelMetaCounterQuery;
.super Ljava/lang/Object;
.source "ChannelMetaCounterQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;
    }
.end annotation


# instance fields
.field private channelUrl:Ljava/lang/String;

.field private final client:Lcom/sendbird/android/SendBird$SendBirdClient;

.field private loading:Z


# direct methods
.method public constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p2, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->channelUrl:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 18
    iput-object p2, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->channelUrl:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/ChannelMetaCounterQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/ChannelMetaCounterQuery;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized decrease(Ljava/lang/String;ILcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # I
    .param p3, "handler"    # Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0, v0, p3}, Lcom/sendbird/android/ChannelMetaCounterQuery;->decrease(Ljava/util/Map;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 99
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized decrease(Ljava/util/Map;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaCounterQuery;->setLoading(Z)V

    .line 111
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaCounterQuery$2;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaCounterQuery$2;-><init>(Lcom/sendbird/android/ChannelMetaCounterQuery;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaCounterDecrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/util/Collection;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaCounterQuery;->setLoading(Z)V

    .line 246
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaCounterQuery$5;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaCounterQuery$5;-><init>(Lcom/sendbird/android/ChannelMetaCounterQuery;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaCounterDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/util/Collection;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaCounterQuery;->setLoading(Z)V

    .line 201
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaCounterQuery$4;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaCounterQuery$4;-><init>(Lcom/sendbird/android/ChannelMetaCounterQuery;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaCounterGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increase(Ljava/lang/String;ILcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # I
    .param p3, "handler"    # Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0, v0, p3}, Lcom/sendbird/android/ChannelMetaCounterQuery;->increase(Ljava/util/Map;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized increase(Ljava/util/Map;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaCounterQuery;->setLoading(Z)V

    .line 54
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaCounterQuery$1;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaCounterQuery$1;-><init>(Lcom/sendbird/android/ChannelMetaCounterQuery;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaCounterIncrease(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/util/Map;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaCounterQuery;->setLoading(Z)V

    .line 156
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaCounterQuery$3;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaCounterQuery$3;-><init>(Lcom/sendbird/android/ChannelMetaCounterQuery;Lcom/sendbird/android/ChannelMetaCounterQuery$ChannelMetaCounterQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaCounterSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLoading(Z)V
    .locals 1
    .param p1, "tf"    # Z

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/ChannelMetaCounterQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
