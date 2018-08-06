.class public Lcom/sendbird/android/OnlineMemberCountQuery;
.super Ljava/lang/Object;
.source "OnlineMemberCountQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/OnlineMemberCountQuery$OnlineMemberCountQueryResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->loading:Z

    .line 17
    iput-object p1, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 18
    iput-object p2, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->channelUrl:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/OnlineMemberCountQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/OnlineMemberCountQuery;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(Lcom/sendbird/android/OnlineMemberCountQuery$OnlineMemberCountQueryResult;)V
    .locals 3
    .param p1, "handler"    # Lcom/sendbird/android/OnlineMemberCountQuery$OnlineMemberCountQueryResult;

    .prologue
    .line 38
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/OnlineMemberCountQuery;->setLoading(Z)V

    .line 39
    iget-object v0, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->channelUrl:Ljava/lang/String;

    new-instance v2, Lcom/sendbird/android/OnlineMemberCountQuery$1;

    invoke-direct {v2, p0, p1}, Lcom/sendbird/android/OnlineMemberCountQuery$1;-><init>(Lcom/sendbird/android/OnlineMemberCountQuery;Lcom/sendbird/android/OnlineMemberCountQuery$OnlineMemberCountQueryResult;)V

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/SendBird$SendBirdClient;->onlineMemberCount(Ljava/lang/String;Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 38
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
    iget-boolean v0, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

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
    iput-boolean p1, p0, Lcom/sendbird/android/OnlineMemberCountQuery;->loading:Z
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
