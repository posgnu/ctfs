.class final Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameSink"
.end annotation


# instance fields
.field private closed:Z

.field private contentLength:J

.field private formatOpcode:I

.field private isFirstFrame:Z

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;


# direct methods
.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;
    .param p2, "x1"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    .param p1, "x1"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    return p1
.end method

.method static synthetic access$202(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    .param p1, "x1"    # J

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    .param p1, "x1"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    .param p1, "x1"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    return p1
.end method


# virtual methods
.method public close()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 268
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget-object v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    monitor-enter v6

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okio/Buffer;->size()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$600(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;IJZZ)V

    .line 272
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iput-boolean v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    .line 274
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$802(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;Z)Z

    .line 275
    return-void

    .line 272
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 254
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    iget-object v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    monitor-enter v6

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-static {v2}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okio/Buffer;->size()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$600(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;IJZZ)V

    .line 258
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iput-boolean v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 260
    return-void

    .line 258
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public timeout()Lcom/sendbird/android/shadow/okio/Timeout;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$700(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/BufferedSink;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/sendbird/android/shadow/okio/Buffer;J)V
    .locals 10
    .param p1, "source"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 235
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sendbird/android/shadow/okio/Buffer;->write(Lcom/sendbird/android/shadow/okio/Buffer;J)V

    .line 240
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    .line 242
    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okio/Buffer;->size()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    const-wide/16 v8, 0x2000

    sub-long/2addr v4, v8

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const/4 v6, 0x1

    .line 244
    .local v6, "deferWrite":Z
    :goto_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okio/Buffer;->completeSegmentByteCount()J

    move-result-wide v2

    .line 245
    .local v2, "emitCount":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    if-nez v6, :cond_1

    .line 246
    iget-object v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    monitor-enter v8

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    iget v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    iget-boolean v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->access$600(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;IJZZ)V

    .line 248
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    iput-boolean v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    .line 251
    :cond_1
    return-void

    .end local v2    # "emitCount":J
    .end local v6    # "deferWrite":Z
    :cond_2
    move v6, v7

    .line 242
    goto :goto_0

    .line 248
    .restart local v2    # "emitCount":J
    .restart local v6    # "deferWrite":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
