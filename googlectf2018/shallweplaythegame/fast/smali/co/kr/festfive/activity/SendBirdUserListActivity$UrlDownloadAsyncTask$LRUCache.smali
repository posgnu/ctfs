.class Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;
.super Ljava/lang/Object;
.source "SendBirdUserListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LRUCache"
.end annotation


# instance fields
.field private map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput p1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->maxSize:I

    .line 601
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 602
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 603
    return-void
.end method

.method private getSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 606
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_0
    iget-object v0, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 615
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 616
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 619
    :cond_1
    :try_start_1
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 623
    :cond_2
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 624
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->totalSize:I

    invoke-direct {p0, p2}, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->getSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->totalSize:I

    .line 627
    :cond_3
    :goto_0
    iget v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->totalSize:I

    iget v2, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->maxSize:I

    if-lt v1, v2, :cond_4

    .line 628
    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 629
    .local v0, "expiredKey":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 630
    iget v2, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->totalSize:I

    iget-object v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->getSize(Ljava/lang/String;)I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Lco/kr/festfive/activity/SendBirdUserListActivity$UrlDownloadAsyncTask$LRUCache;->totalSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 633
    .end local v0    # "expiredKey":Ljava/lang/String;
    :cond_4
    monitor-exit p0

    return-void
.end method
