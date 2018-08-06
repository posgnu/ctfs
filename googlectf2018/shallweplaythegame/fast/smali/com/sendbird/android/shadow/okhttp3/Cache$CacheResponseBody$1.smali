.class Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody$1;
.super Lcom/sendbird/android/shadow/okio/ForwardingSource;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;

.field final synthetic val$snapshot:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;Lcom/sendbird/android/shadow/okio/Source;Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;
    .param p2, "x0"    # Lcom/sendbird/android/shadow/okio/Source;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;

    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p2}, Lcom/sendbird/android/shadow/okio/ForwardingSource;-><init>(Lcom/sendbird/android/shadow/okio/Source;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody$1;->val$snapshot:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;->close()V

    .line 745
    invoke-super {p0}, Lcom/sendbird/android/shadow/okio/ForwardingSource;->close()V

    .line 746
    return-void
.end method
