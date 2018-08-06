.class Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor$1;
.super Lcom/sendbird/android/shadow/okhttp3/internal/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;->newSink(I)Lcom/sendbird/android/shadow/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;Lcom/sendbird/android/shadow/okio/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;
    .param p2, "delegate"    # Lcom/sendbird/android/shadow/okio/Sink;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lcom/sendbird/android/shadow/okhttp3/internal/FaultHidingSink;-><init>(Lcom/sendbird/android/shadow/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    iget-object v1, v0, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Editor;->detach()V

    .line 916
    monitor-exit v1

    .line 917
    return-void

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
