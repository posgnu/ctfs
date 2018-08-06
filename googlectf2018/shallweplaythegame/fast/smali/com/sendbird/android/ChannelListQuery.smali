.class public Lcom/sendbird/android/ChannelListQuery;
.super Ljava/lang/Object;
.source "ChannelListQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;
    }
.end annotation


# instance fields
.field private final client:Lcom/sendbird/android/SendBird$SendBirdClient;

.field private limit:I

.field private loading:Z

.field private nextPage:I

.field private page:I

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 2
    .param p1, "client"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/ChannelListQuery;->query:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/sendbird/android/ChannelListQuery;->loading:Z

    .line 23
    iput v1, p0, Lcom/sendbird/android/ChannelListQuery;->page:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/sendbird/android/ChannelListQuery;->nextPage:I

    .line 25
    iput-object p1, p0, Lcom/sendbird/android/ChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/ChannelListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/ChannelListQuery;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sendbird/android/ChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sendbird/android/ChannelListQuery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/ChannelListQuery;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/sendbird/android/ChannelListQuery;->page:I

    return p1
.end method

.method static synthetic access$202(Lcom/sendbird/android/ChannelListQuery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/ChannelListQuery;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/sendbird/android/ChannelListQuery;->nextPage:I

    return p1
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/sendbird/android/ChannelListQuery;->page:I

    return v0
.end method

.method public getNextPage()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/sendbird/android/ChannelListQuery;->nextPage:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sendbird/android/ChannelListQuery;->query:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sendbird/android/ChannelListQuery;->nextPage:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sendbird/android/ChannelListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next(Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V
    .locals 5
    .param p1, "handler"    # Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/ChannelListQuery;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;->onResult(Ljava/util/Collection;)V

    .line 100
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sendbird/android/ChannelListQuery;->setLoading(Z)V

    .line 101
    iget-object v0, p0, Lcom/sendbird/android/ChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget v1, p0, Lcom/sendbird/android/ChannelListQuery;->nextPage:I

    iget-object v2, p0, Lcom/sendbird/android/ChannelListQuery;->query:Ljava/lang/String;

    iget v3, p0, Lcom/sendbird/android/ChannelListQuery;->limit:I

    new-instance v4, Lcom/sendbird/android/ChannelListQuery$1;

    invoke-direct {v4, p0, p1}, Lcom/sendbird/android/ChannelListQuery$1;-><init>(Lcom/sendbird/android/ChannelListQuery;Lcom/sendbird/android/ChannelListQuery$ChannelListQueryResult;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sendbird/android/SendBird$SendBirdClient;->channelList(ILjava/lang/String;ILcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/sendbird/android/ChannelListQuery;->limit:I

    .line 45
    return-void
.end method

.method protected declared-synchronized setLoading(Z)V
    .locals 1
    .param p1, "tf"    # Z

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/ChannelListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/sendbird/android/ChannelListQuery;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sendbird/android/ChannelListQuery;->query:Ljava/lang/String;

    .line 36
    return-object p0
.end method
