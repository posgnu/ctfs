.class public Lcom/sendbird/android/UserListQuery;
.super Ljava/lang/Object;
.source "UserListQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/UserListQuery$UserListQueryResult;
    }
.end annotation


# instance fields
.field private cancel:Z

.field private final client:Lcom/sendbird/android/SendBird$SendBirdClient;

.field private limit:I

.field private loading:Z

.field private nextPage:I

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 1
    .param p1, "client"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/sendbird/android/UserListQuery;->loading:Z

    .line 20
    iput-boolean v0, p0, Lcom/sendbird/android/UserListQuery;->cancel:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/UserListQuery;->token:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/sendbird/android/UserListQuery;->nextPage:I

    .line 23
    const/16 v0, 0x1e

    iput v0, p0, Lcom/sendbird/android/UserListQuery;->limit:I

    .line 26
    iput-object p1, p0, Lcom/sendbird/android/UserListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/UserListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/UserListQuery;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sendbird/android/UserListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sendbird/android/UserListQuery;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/UserListQuery;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/sendbird/android/UserListQuery;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sendbird/android/UserListQuery;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/UserListQuery;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/sendbird/android/UserListQuery;->nextPage:I

    return p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/sendbird/android/UserListQuery;->nextPage:I

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
    iget-boolean v0, p0, Lcom/sendbird/android/UserListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized next(Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V
    .locals 5
    .param p1, "handler"    # Lcom/sendbird/android/UserListQuery$UserListQueryResult;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sendbird/android/UserListQuery;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sendbird/android/UserListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/UserListQuery$1;

    invoke-direct {v1, p0, p1}, Lcom/sendbird/android/UserListQuery$1;-><init>(Lcom/sendbird/android/UserListQuery;Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sendbird/android/UserListQuery;->setLoading(Z)V

    .line 76
    iget-object v0, p0, Lcom/sendbird/android/UserListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/UserListQuery;->token:Ljava/lang/String;

    iget v2, p0, Lcom/sendbird/android/UserListQuery;->nextPage:I

    iget v3, p0, Lcom/sendbird/android/UserListQuery;->limit:I

    new-instance v4, Lcom/sendbird/android/UserListQuery$2;

    invoke-direct {v4, p0, p1}, Lcom/sendbird/android/UserListQuery$2;-><init>(Lcom/sendbird/android/UserListQuery;Lcom/sendbird/android/UserListQuery$UserListQueryResult;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sendbird/android/SendBird$SendBirdClient;->userList(Ljava/lang/String;IILcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/sendbird/android/UserListQuery;->limit:I

    .line 47
    return-void
.end method

.method protected declared-synchronized setLoading(Z)V
    .locals 1
    .param p1, "tf"    # Z

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/UserListQuery;->loading:Z
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
