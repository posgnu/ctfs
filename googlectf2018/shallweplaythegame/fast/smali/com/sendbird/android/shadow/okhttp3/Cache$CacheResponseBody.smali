.class Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;
.super Lcom/sendbird/android/shadow/okhttp3/ResponseBody;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheResponseBody"
.end annotation


# instance fields
.field private final bodySource:Lcom/sendbird/android/shadow/okio/BufferedSource;

.field private final contentLength:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final snapshot:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentLength"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;-><init>()V

    .line 737
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->snapshot:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;

    .line 738
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    .line 739
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    .line 741
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;->getSource(I)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v0

    .line 742
    .local v0, "source":Lcom/sendbird/android/shadow/okio/Source;
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody$1;-><init>(Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;Lcom/sendbird/android/shadow/okio/Source;Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;)V

    invoke-static {v1}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v1

    iput-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->bodySource:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 748
    return-void
.end method

.method static synthetic access$500(Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;)Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->snapshot:Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 756
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->contentLength:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 758
    :cond_0
    :goto_0
    return-wide v2

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lcom/sendbird/android/shadow/okio/BufferedSource;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Cache$CacheResponseBody;->bodySource:Lcom/sendbird/android/shadow/okio/BufferedSource;

    return-object v0
.end method
