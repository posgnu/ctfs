.class public abstract Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;


# static fields
.field private static final CLOSE_PROTOCOL_EXCEPTION:I = 0x3ea


# instance fields
.field private final connectionClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

.field private final reader:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

.field private readerSentClose:Z

.field private final writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

.field private volatile writerSentClose:Z

.field private writerWantsClose:Z


# direct methods
.method public constructor <init>(ZLcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okio/BufferedSink;Ljava/util/Random;Ljava/util/concurrent/Executor;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;Ljava/lang/String;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lcom/sendbird/android/shadow/okio/BufferedSource;
    .param p3, "sink"    # Lcom/sendbird/android/shadow/okio/BufferedSink;
    .param p4, "random"    # Ljava/util/Random;
    .param p5, "replyExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "listener"    # Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;
    .param p7, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->connectionClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput-object p6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    .line 59
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-direct {v0, p1, p3, p4}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;-><init>(ZLcom/sendbird/android/shadow/okio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    .line 60
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;

    invoke-direct {v1, p0, p6, p5, p7}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;-><init>(ZLcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->reader:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;)Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->readerSentClose:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->peerClose(ILjava/lang/String;)V

    return-void
.end method

.method private peerClose(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerSentClose:Z

    if-nez v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->connectionClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :try_start_1
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    invoke-interface {v0, p1, p2}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;->onClose(ILjava/lang/String;)V

    .line 198
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_1

    .line 186
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private readerErrorClose(Ljava/io/IOException;)V
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerSentClose:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/net/ProtocolException;

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->connectionClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :try_start_1
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 217
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    invoke-interface {v0, p1, v3}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;->onFailure(Ljava/io/IOException;Lcom/sendbird/android/shadow/okhttp3/Response;)V

    .line 218
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_1

    .line 206
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public close(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 164
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_0
    iput-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerSentClose:Z

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v1, p1, p2}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeClose(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->connectionClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :try_start_1
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    :cond_1
    :goto_0
    throw v0

    .line 174
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public readMessage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->reader:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 98
    iget-boolean v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->readerSentClose:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->readerErrorClose(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/sendbird/android/shadow/okhttp3/RequestBody;)V
    .locals 8
    .param p1, "message"    # Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "message == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_0
    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_1
    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerWantsClose:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "must call close()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v1

    .line 111
    .local v1, "contentType":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    if-nez v1, :cond_3

    .line 112
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Message content type was null. Must use WebSocket.TEXT or WebSocket.BINARY."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_3
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "contentSubtype":Ljava/lang/String;
    sget-object v5, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;->TEXT:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 119
    const/4 v3, 0x1

    .line 128
    .local v3, "formatOpcode":I
    :goto_0
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->contentLength()J

    move-result-wide v6

    invoke-virtual {v5, v3, v6, v7}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v5

    invoke-static {v5}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Sink;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v4

    .line 130
    .local v4, "sink":Lcom/sendbird/android/shadow/okio/BufferedSink;
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->writeTo(Lcom/sendbird/android/shadow/okio/BufferedSink;)V

    .line 131
    invoke-interface {v4}, Lcom/sendbird/android/shadow/okio/BufferedSink;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 120
    .end local v3    # "formatOpcode":I
    .end local v4    # "sink":Lcom/sendbird/android/shadow/okio/BufferedSink;
    :cond_4
    sget-object v5, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;->BINARY:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 121
    const/4 v3, 0x2

    .restart local v3    # "formatOpcode":I
    goto :goto_0

    .line 123
    .end local v3    # "formatOpcode":I
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown message content type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 124
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Must use WebSocket.TEXT or WebSocket.BINARY."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 132
    .restart local v3    # "formatOpcode":I
    .restart local v4    # "sink":Lcom/sendbird/android/shadow/okio/BufferedSink;
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/IOException;
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerWantsClose:Z

    .line 134
    throw v2
.end method

.method public sendPing(Lcom/sendbird/android/shadow/okio/Buffer;)V
    .locals 3
    .param p1, "payload"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerWantsClose:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "must call close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v1, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writePing(Lcom/sendbird/android/shadow/okio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerWantsClose:Z

    .line 146
    throw v0
.end method

.method public sendPong(Lcom/sendbird/android/shadow/okio/Buffer;)V
    .locals 3
    .param p1, "payload"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerSentClose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerWantsClose:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "must call close()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writer:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v1, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writePong(Lcom/sendbird/android/shadow/okio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->writerWantsClose:Z

    .line 159
    throw v0
.end method
