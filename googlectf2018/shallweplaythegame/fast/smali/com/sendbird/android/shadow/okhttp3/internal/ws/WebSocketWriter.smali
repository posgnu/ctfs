.class public final Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private activeWriter:Z

.field private final buffer:Lcom/sendbird/android/shadow/okio/Buffer;

.field private final frameSink:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

.field private final isClient:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private final random:Ljava/util/Random;

.field private final sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

.field private writerClosed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ZLcom/sendbird/android/shadow/okio/BufferedSink;Ljava/util/Random;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "sink"    # Lcom/sendbird/android/shadow/okio/BufferedSink;
    .param p3, "random"    # Ljava/util/Random;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/sendbird/android/shadow/okio/Buffer;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/sendbird/android/shadow/okio/Buffer;

    .line 57
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$1;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    .line 65
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 68
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 69
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    .line 72
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    .line 73
    if-eqz p1, :cond_2

    const/16 v0, 0x2000

    new-array v1, v0, [B

    :cond_2
    iput-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    .line 74
    return-void

    :cond_3
    move-object v0, v1

    .line 72
    goto :goto_0
.end method

.method static synthetic access$500(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/Buffer;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/sendbird/android/shadow/okio/Buffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;IJZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeMessageFrameSynchronized(IJZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;)Lcom/sendbird/android/shadow/okio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    return p1
.end method

.method private writeControlFrameSynchronized(ILcom/sendbird/android/shadow/okio/Buffer;)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "payload"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    sget-boolean v3, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 119
    :cond_0
    iget-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string v4, "closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_1
    const/4 v2, 0x0

    .line 122
    .local v2, "length":I
    if-eqz p2, :cond_2

    .line 123
    invoke-virtual {p2}, Lcom/sendbird/android/shadow/okio/Buffer;->size()J

    move-result-wide v4

    long-to-int v2, v4

    .line 124
    int-to-long v4, v2

    const-wide/16 v6, 0x7d

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Payload size must be less than or equal to 125"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :cond_2
    or-int/lit16 v0, p1, 0x80

    .line 131
    .local v0, "b0":I
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v3, v0}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeByte(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 133
    move v1, v2

    .line 134
    .local v1, "b1":I
    iget-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v3, :cond_4

    .line 135
    or-int/lit16 v1, v1, 0x80

    .line 136
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v3, v1}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeByte(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 138
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextBytes([B)V

    .line 139
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v3, v4}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 141
    if-eqz p2, :cond_3

    .line 142
    int-to-long v4, v2

    invoke-direct {p0, p2, v4, v5}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeMaskedSynchronized(Lcom/sendbird/android/shadow/okio/BufferedSource;J)V

    .line 152
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v3}, Lcom/sendbird/android/shadow/okio/BufferedSink;->emit()Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 153
    return-void

    .line 145
    :cond_4
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v3, v1}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeByte(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 147
    if-eqz p2, :cond_3

    .line 148
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v3, p2}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeAll(Lcom/sendbird/android/shadow/okio/Source;)J

    goto :goto_0
.end method

.method private writeMaskedSynchronized(Lcom/sendbird/android/shadow/okio/BufferedSource;J)V
    .locals 10
    .param p1, "source"    # Lcom/sendbird/android/shadow/okio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 215
    sget-boolean v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 217
    :cond_0
    const-wide/16 v4, 0x0

    .line 218
    .local v4, "written":J
    :goto_0
    cmp-long v0, v4, p2

    if-gez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 220
    .local v7, "toRead":I
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {p1, v0, v8, v7}, Lcom/sendbird/android/shadow/okio/BufferedSource;->read([BII)I

    move-result v6

    .line 221
    .local v6, "read":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    int-to-long v1, v6

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 223
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskBuffer:[B

    invoke-interface {v0, v1, v8, v6}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([BII)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 224
    int-to-long v0, v6

    add-long/2addr v4, v0

    .line 225
    goto :goto_0

    .line 226
    .end local v6    # "read":I
    .end local v7    # "toRead":I
    :cond_2
    return-void
.end method

.method private writeMessageFrameSynchronized(IJZZ)V
    .locals 4
    .param p1, "formatOpcode"    # I
    .param p2, "byteCount"    # J
    .param p4, "isFirstFrame"    # Z
    .param p5, "isFinal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    sget-boolean v2, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 178
    :cond_0
    iget-boolean v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_1
    if-eqz p4, :cond_4

    move v0, p1

    .line 181
    .local v0, "b0":I
    :goto_0
    if-eqz p5, :cond_2

    .line 182
    or-int/lit16 v0, v0, 0x80

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v2, v0}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeByte(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, "b1":I
    iget-boolean v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v2, :cond_3

    .line 188
    or-int/lit16 v1, v1, 0x80

    .line 189
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 191
    :cond_3
    const-wide/16 v2, 0x7d

    cmp-long v2, p2, v2

    if-gtz v2, :cond_5

    .line 192
    long-to-int v2, p2

    or-int/2addr v1, v2

    .line 193
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v2, v1}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeByte(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 204
    :goto_1
    iget-boolean v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v2, :cond_7

    .line 205
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-interface {v2, v3}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 206
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/sendbird/android/shadow/okio/Buffer;

    invoke-direct {p0, v2, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeMaskedSynchronized(Lcom/sendbird/android/shadow/okio/BufferedSource;J)V

    .line 211
    :goto_2
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v2}, Lcom/sendbird/android/shadow/okio/BufferedSink;->emit()Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 212
    return-void

    .line 180
    .end local v0    # "b0":I
    .end local v1    # "b1":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    .restart local v0    # "b0":I
    .restart local v1    # "b1":I
    :cond_5
    const-wide/32 v2, 0xffff

    cmp-long v2, p2, v2

    if-gtz v2, :cond_6

    .line 195
    or-int/lit8 v1, v1, 0x7e

    .line 196
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v2, v1}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeByte(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 197
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    long-to-int v3, p2

    invoke-interface {v2, v3}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeShort(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    goto :goto_1

    .line 199
    :cond_6
    or-int/lit8 v1, v1, 0x7f

    .line 200
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v2, v1}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeByte(I)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 201
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v2, p2, p3}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeLong(J)Lcom/sendbird/android/shadow/okio/BufferedSink;

    goto :goto_1

    .line 208
    :cond_7
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->buffer:Lcom/sendbird/android/shadow/okio/Buffer;

    invoke-interface {v2, v3, p2, p3}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write(Lcom/sendbird/android/shadow/okio/Buffer;J)V

    goto :goto_2
.end method


# virtual methods
.method public newMessageSink(IJ)Lcom/sendbird/android/shadow/okio/Sink;
    .locals 2
    .param p1, "formatOpcode"    # I
    .param p2, "contentLength"    # J

    .prologue
    const/4 v1, 0x1

    .line 160
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another message writer is active. Did you call close()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 166
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-static {v0, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->access$102(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;I)I

    .line 167
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-static {v0, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->access$202(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;J)J

    .line 168
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-static {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->access$302(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;Z)Z

    .line 169
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;->access$402(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;Z)Z

    .line 171
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->frameSink:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter$FrameSink;

    return-object v0
.end method

.method public writeClose(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "payload":Lcom/sendbird/android/shadow/okio/Buffer;
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 100
    :cond_0
    if-eqz p1, :cond_1

    .line 101
    invoke-static {p1, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(IZ)V

    .line 103
    :cond_1
    new-instance v0, Lcom/sendbird/android/shadow/okio/Buffer;

    .end local v0    # "payload":Lcom/sendbird/android/shadow/okio/Buffer;
    invoke-direct {v0}, Lcom/sendbird/android/shadow/okio/Buffer;-><init>()V

    .line 104
    .restart local v0    # "payload":Lcom/sendbird/android/shadow/okio/Buffer;
    invoke-virtual {v0, p1}, Lcom/sendbird/android/shadow/okio/Buffer;->writeShort(I)Lcom/sendbird/android/shadow/okio/Buffer;

    .line 105
    if-eqz p2, :cond_2

    .line 106
    invoke-virtual {v0, p2}, Lcom/sendbird/android/shadow/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/Buffer;

    .line 110
    :cond_2
    monitor-enter p0

    .line 111
    const/16 v1, 0x8

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILcom/sendbird/android/shadow/okio/Buffer;)V

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public writePing(Lcom/sendbird/android/shadow/okio/Buffer;)V
    .locals 1
    .param p1, "payload"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    const/16 v0, 0x9

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILcom/sendbird/android/shadow/okio/Buffer;)V

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writePong(Lcom/sendbird/android/shadow/okio/Buffer;)V
    .locals 1
    .param p1, "payload"    # Lcom/sendbird/android/shadow/okio/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    const/16 v0, 0xa

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writeControlFrameSynchronized(ILcom/sendbird/android/shadow/okio/Buffer;)V

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
