.class final Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache$4;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    return-void
.end method

.method public timeout()Lcom/sendbird/android/shadow/okio/Timeout;
    .locals 1

    .prologue
    .line 832
    sget-object v0, Lcom/sendbird/android/shadow/okio/Timeout;->NONE:Lcom/sendbird/android/shadow/okio/Timeout;

    return-object v0
.end method

.method public write(Lcom/sendbird/android/shadow/okio/Buffer;J)V
    .locals 0
    .param p1, "source"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-virtual {p1, p2, p3}, Lcom/sendbird/android/shadow/okio/Buffer;->skip(J)V

    .line 826
    return-void
.end method
