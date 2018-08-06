.class final Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

.field private final timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;J)V
    .locals 2
    .param p2, "bytesRemaining"    # J

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$300(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lcom/sendbird/android/shadow/okio/BufferedSink;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sendbird/android/shadow/okio/ForwardingTimeout;-><init>(Lcom/sendbird/android/shadow/okio/Timeout;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    .line 272
    iput-wide p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;JLcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$1;

    .prologue
    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;J)V

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
    .line 296
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    .line 298
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$400(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;Lcom/sendbird/android/shadow/okio/ForwardingTimeout;)V

    .line 300
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$502(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;I)I

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$300(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/BufferedSink;->flush()V

    goto :goto_0
.end method

.method public timeout()Lcom/sendbird/android/shadow/okio/Timeout;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    return-object v0
.end method

.method public write(Lcom/sendbird/android/shadow/okio/Buffer;J)V
    .locals 6
    .param p1, "source"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 282
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 283
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$300(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write(Lcom/sendbird/android/shadow/okio/Buffer;J)V

    .line 287
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$FixedLengthSink;->bytesRemaining:J

    .line 288
    return-void
.end method
