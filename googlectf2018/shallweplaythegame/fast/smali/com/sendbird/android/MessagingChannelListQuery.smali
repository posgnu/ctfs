.class public Lcom/sendbird/android/MessagingChannelListQuery;
.super Ljava/lang/Object;
.source "MessagingChannelListQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;
    }
.end annotation


# instance fields
.field private cancel:Z

.field private final client:Lcom/sendbird/android/SendBird$SendBirdClient;

.field private isNewMessageSinceJoinedOnly:Z

.field private limit:I

.field private loading:Z

.field private nextPage:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 2
    .param p1, "client"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->loading:Z

    .line 19
    iput-boolean v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->cancel:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->token:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->nextPage:I

    .line 22
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->limit:I

    .line 23
    iput-boolean v1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->isNewMessageSinceJoinedOnly:Z

    .line 26
    iput-object p1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/MessagingChannelListQuery;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/MessagingChannelListQuery;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->cancel:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sendbird/android/MessagingChannelListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/MessagingChannelListQuery;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sendbird/android/MessagingChannelListQuery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/MessagingChannelListQuery;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sendbird/android/MessagingChannelListQuery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/MessagingChannelListQuery;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->nextPage:I

    return p1
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/MessagingChannelListQuery;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessagingChannelListQuery;->setLoading(Z)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessagingChannelListQuery;->setCancel(Z)V

    .line 68
    iget-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-virtual {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->messagingListCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->nextPage:I

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
    .line 34
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNewMessageSinceJoinedOnly()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->isNewMessageSinceJoinedOnly:Z

    return v0
.end method

.method public declared-synchronized next(Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V
    .locals 7
    .param p1, "handler"    # Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/MessagingChannelListQuery;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/MessagingChannelListQuery$1;

    invoke-direct {v1, p0, p1}, Lcom/sendbird/android/MessagingChannelListQuery$1;-><init>(Lcom/sendbird/android/MessagingChannelListQuery;Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessagingChannelListQuery;->setCancel(Z)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessagingChannelListQuery;->setLoading(Z)V

    .line 100
    iget-object v0, p0, Lcom/sendbird/android/MessagingChannelListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->token:Ljava/lang/String;

    iget v2, p0, Lcom/sendbird/android/MessagingChannelListQuery;->nextPage:I

    iget v3, p0, Lcom/sendbird/android/MessagingChannelListQuery;->limit:I

    iget-boolean v6, p0, Lcom/sendbird/android/MessagingChannelListQuery;->isNewMessageSinceJoinedOnly:Z

    if-nez v6, :cond_1

    :goto_1
    new-instance v5, Lcom/sendbird/android/MessagingChannelListQuery$2;

    invoke-direct {v5, p0, p1}, Lcom/sendbird/android/MessagingChannelListQuery$2;-><init>(Lcom/sendbird/android/MessagingChannelListQuery;Lcom/sendbird/android/MessagingChannelListQuery$MessagingChannelListQueryResult;)V

    invoke-virtual/range {v0 .. v5}, Lcom/sendbird/android/SendBird$SendBirdClient;->messagingList_v3(Ljava/lang/String;IIZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v4, v5

    .line 100
    goto :goto_1
.end method

.method protected declared-synchronized setCancel(Z)V
    .locals 1
    .param p1, "tf"    # Z

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->cancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->limit:I

    .line 51
    return-void
.end method

.method protected declared-synchronized setLoading(Z)V
    .locals 1
    .param p1, "tf"    # Z

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNewMessageSinceJoinedOnly(Z)V
    .locals 0
    .param p1, "nmsj"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/sendbird/android/MessagingChannelListQuery;->isNewMessageSinceJoinedOnly:Z

    .line 55
    return-void
.end method
