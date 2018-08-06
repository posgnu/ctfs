.class public Lcom/sendbird/android/ChannelMetaDataQuery;
.super Ljava/lang/Object;
.source "ChannelMetaDataQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;
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

    iput-object v0, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->channelUrl:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 18
    iput-object p2, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->channelUrl:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/ChannelMetaDataQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/ChannelMetaDataQuery;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized delete(Ljava/util/Collection;Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaDataQuery;->setLoading(Z)V

    .line 119
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaDataQuery$3;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaDataQuery$3;-><init>(Lcom/sendbird/android/ChannelMetaDataQuery;Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaDataDelete(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/util/Collection;Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaDataQuery;->setLoading(Z)V

    .line 79
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaDataQuery$2;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaDataQuery$2;-><init>(Lcom/sendbird/android/ChannelMetaDataQuery;Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaDataGet(Ljava/lang/String;Ljava/util/Collection;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 78
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
    iget-boolean v0, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/util/Map;Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;)V
    .locals 3
    .param p2, "handler"    # Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelMetaDataQuery;->setLoading(Z)V

    .line 36
    iget-object v0, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/ChannelMetaDataQuery$1;

    invoke-direct {v2, p0, p2}, Lcom/sendbird/android/ChannelMetaDataQuery$1;-><init>(Lcom/sendbird/android/ChannelMetaDataQuery;Lcom/sendbird/android/ChannelMetaDataQuery$ChannelMetaDataQueryResult;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelMetaDataSet(Ljava/lang/String;Ljava/util/Map;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 35
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
    iput-boolean p1, p0, Lcom/sendbird/android/ChannelMetaDataQuery;->loading:Z
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
