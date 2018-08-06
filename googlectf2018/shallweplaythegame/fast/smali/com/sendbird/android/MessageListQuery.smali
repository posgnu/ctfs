.class public Lcom/sendbird/android/MessageListQuery;
.super Ljava/lang/Object;
.source "MessageListQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;
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
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sendbird/android/MessageListQuery;->loading:Z

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/MessageListQuery;->channelUrl:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/sendbird/android/MessageListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 21
    iput-object p2, p0, Lcom/sendbird/android/MessageListQuery;->channelUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/MessageListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/MessageListQuery;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sendbird/android/MessageListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sendbird/android/MessageListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(JIILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V
    .locals 9
    .param p1, "messageTimestamp"    # J
    .param p3, "prevLimit"    # I
    .param p4, "nextLimit"    # I
    .param p5, "handler"    # Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessageListQuery;->setLoading(Z)V

    .line 130
    iget-object v0, p0, Lcom/sendbird/android/MessageListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/MessageListQuery;->channelUrl:Ljava/lang/String;

    const/4 v6, 0x1

    new-instance v7, Lcom/sendbird/android/MessageListQuery$3;

    invoke-direct {v7, p0, p5}, Lcom/sendbird/android/MessageListQuery$3;-><init>(Lcom/sendbird/android/MessageListQuery;Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/sendbird/android/SendBird$SendBirdClient;->messageList(Ljava/lang/String;JIIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(JJLcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V
    .locals 7
    .param p1, "messageTimestampStart"    # J
    .param p3, "messageTimestampEnd"    # J
    .param p5, "handler"    # Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;

    .prologue
    .line 174
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessageListQuery;->setLoading(Z)V

    .line 175
    iget-object v0, p0, Lcom/sendbird/android/MessageListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/MessageListQuery;->channelUrl:Ljava/lang/String;

    new-instance v6, Lcom/sendbird/android/MessageListQuery$4;

    invoke-direct {v6, p0, p5}, Lcom/sendbird/android/MessageListQuery$4;-><init>(Lcom/sendbird/android/MessageListQuery;Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sendbird/android/SendBird$SendBirdClient;->messageListByTimestamp(Ljava/lang/String;JJLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V
    .locals 9
    .param p1, "messageTimestamp"    # J
    .param p3, "limit"    # I
    .param p4, "handler"    # Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;

    .prologue
    .line 42
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessageListQuery;->setLoading(Z)V

    .line 43
    iget-object v0, p0, Lcom/sendbird/android/MessageListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/MessageListQuery;->channelUrl:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/sendbird/android/MessageListQuery$1;

    invoke-direct {v7, p0, p4}, Lcom/sendbird/android/MessageListQuery$1;-><init>(Lcom/sendbird/android/MessageListQuery;Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sendbird/android/SendBird$SendBirdClient;->messageList(Ljava/lang/String;JIIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prev(JILcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V
    .locals 9
    .param p1, "messageTimestamp"    # J
    .param p3, "limit"    # I
    .param p4, "handler"    # Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;

    .prologue
    .line 86
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessageListQuery;->setLoading(Z)V

    .line 87
    iget-object v0, p0, Lcom/sendbird/android/MessageListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/MessageListQuery;->channelUrl:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/sendbird/android/MessageListQuery$2;

    invoke-direct {v7, p0, p4}, Lcom/sendbird/android/MessageListQuery$2;-><init>(Lcom/sendbird/android/MessageListQuery;Lcom/sendbird/android/MessageListQuery$MessageListQueryResult;)V

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/sendbird/android/SendBird$SendBirdClient;->messageList(Ljava/lang/String;JIIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setLoading(Z)V
    .locals 1
    .param p1, "tf"    # Z

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/MessageListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
