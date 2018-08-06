.class Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;
.super Lcom/sendbird/android/shadow/okio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;-><init>(Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;Lcom/sendbird/android/shadow/okio/Sink;Lcom/sendbird/android/shadow/okhttp3/Cache;Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;
    .param p2, "x0"    # Lcom/sendbird/android/shadow/okio/Sink;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    iput-object p4, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/sendbird/android/shadow/okio/ForwardingSink;-><init>(Lcom/sendbird/android/shadow/okio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;

    iget-object v1, v0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    monitor-enter v1

    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;->access$700(Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    monitor-exit v1

    .line 448
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;->access$702(Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;Z)Z

    .line 444
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/Cache;->access$808(Lcom/sendbird/android/shadow/okhttp3/Cache;)I

    .line 445
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-super {p0}, Lcom/sendbird/android/shadow/okio/ForwardingSink;->close()V

    .line 447
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheRequestImpl$1;->val$editor:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
