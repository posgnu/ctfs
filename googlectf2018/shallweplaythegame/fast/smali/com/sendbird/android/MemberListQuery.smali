.class public Lcom/sendbird/android/MemberListQuery;
.super Ljava/lang/Object;
.source "MemberListQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;
    }
.end annotation


# instance fields
.field private channelUrl:Ljava/lang/String;

.field private final client:Lcom/sendbird/android/SendBird$SendBirdClient;

.field private loading:Z

.field private onlineOnly:Z


# direct methods
.method public constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;)V
    .locals 1
    .param p1, "client"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p2, "channelUrl"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sendbird/android/MemberListQuery;-><init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "client"    # Lcom/sendbird/android/SendBird$SendBirdClient;
    .param p2, "channelUrl"    # Ljava/lang/String;
    .param p3, "onlineOnly"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sendbird/android/MemberListQuery;->loading:Z

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/sendbird/android/MemberListQuery;->channelUrl:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/sendbird/android/MemberListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    .line 26
    iput-object p2, p0, Lcom/sendbird/android/MemberListQuery;->channelUrl:Ljava/lang/String;

    .line 27
    iput-boolean p3, p0, Lcom/sendbird/android/MemberListQuery;->onlineOnly:Z

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/MemberListQuery;)Lcom/sendbird/android/SendBird$SendBirdClient;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/MemberListQuery;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sendbird/android/MemberListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized get(Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;)V
    .locals 4
    .param p1, "handler"    # Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;

    .prologue
    .line 47
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sendbird/android/MemberListQuery;->setLoading(Z)V

    .line 48
    iget-object v0, p0, Lcom/sendbird/android/MemberListQuery;->client:Lcom/sendbird/android/SendBird$SendBirdClient;

    iget-object v1, p0, Lcom/sendbird/android/MemberListQuery;->channelUrl:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sendbird/android/MemberListQuery;->onlineOnly:Z

    new-instance v3, Lcom/sendbird/android/MemberListQuery$1;

    invoke-direct {v3, p0, p1}, Lcom/sendbird/android/MemberListQuery$1;-><init>(Lcom/sendbird/android/MemberListQuery;Lcom/sendbird/android/MemberListQuery$MemberListQueryResult;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sendbird/android/SendBird$SendBirdClient;->memberList(Ljava/lang/String;ZLcom/sendbird/android/APIClient$APIClientEventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sendbird/android/MemberListQuery;->loading:Z
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
    .line 39
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sendbird/android/MemberListQuery;->loading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
