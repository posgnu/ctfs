.class public Lcom/sendbird/android/MessagingUnreadCountQuery;
.super Ljava/lang/Object;
.source "MessagingUnreadCountQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;
    }
.end annotation


# instance fields
.field private final client:Lcom/sendbird/android/SendBird$SendBirdClient;

.field private loading:Z


# direct methods
.method public constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 1
    .param p1, "client"    # Lcom/sendbird/android/SendBird$SendBirdClient;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sendbird/android/MessagingUnreadCountQuery;->loading:Z

    .line 14
    iput-object p1, p0, Lcom/sendbird/android/MessagingUnreadCountQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/MessagingUnreadCountQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/MessagingUnreadCountQuery;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/sendbird/android/MessagingUnreadCountQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;)V
    .locals 2
    .param p1, "handler"    # Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;

    .prologue
    .line 34
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/MessagingUnreadCountQuery;->setLoading(Z)V

    .line 35
    iget-object v0, p0, Lcom/sendbird/android/MessagingUnreadCountQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    new-instance v1, Lcom/sendbird/android/MessagingUnreadCountQuery$1;

    invoke-direct {v1, p0, p1}, Lcom/sendbird/android/MessagingUnreadCountQuery$1;-><init>(Lcom/sendbird/android/MessagingUnreadCountQuery;Lcom/sendbird/android/MessagingUnreadCountQuery$MessagingUnreadCountQueryResult;)V

    invoke-virtual {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->messagingUnreadCount(Lcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sendbird/android/MessagingUnreadCountQuery;->loading:Z
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
    .line 26
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/MessagingUnreadCountQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
