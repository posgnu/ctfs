.class Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;
.super Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FixedLengthSource"
.end annotation


# instance fields
.field private bytesRemaining:J

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;J)V
    .locals 4
    .param p2, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$1;)V

    .line 370
    iput-wide p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 371
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    .line 374
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->discard(Lcom/sendbird/android/shadow/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    .line 401
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    goto :goto_0
.end method

.method public read(Lcom/sendbird/android/shadow/okio/Buffer;J)J
    .locals 10
    .param p1, "sink"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v8, 0x0

    .line 377
    cmp-long v4, p2, v8

    if-gez v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount < 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 378
    :cond_0
    iget-boolean v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->closed:Z

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_1
    iget-wide v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    move-wide v0, v2

    .line 391
    :cond_2
    :goto_0
    return-wide v0

    .line 381
    :cond_3
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$600(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v4

    iget-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    invoke-static {v6, v7, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-interface {v4, p1, v6, v7}, Lcom/sendbird/android/shadow/okio/BufferedSource;->read(Lcom/sendbird/android/shadow/okio/Buffer;J)J

    move-result-wide v0

    .line 382
    .local v0, "read":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 383
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    .line 384
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "unexpected end of stream"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_4
    iget-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    .line 388
    iget-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->bytesRemaining:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_2

    .line 389
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSource;->endOfInput(Z)V

    goto :goto_0
.end method