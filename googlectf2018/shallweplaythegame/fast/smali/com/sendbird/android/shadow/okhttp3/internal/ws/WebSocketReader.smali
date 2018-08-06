.class public final Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FramedMessageSource;,
        Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;
    }
.end annotation


# instance fields
.field private closed:Z

.field private frameBytesRead:J

.field private final frameCallback:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;

.field private frameLength:J

.field private final framedMessageSource:Lcom/sendbird/android/shadow/okio/Source;

.field private final isClient:Z

.field private isControlFrame:Z

.field private isFinalFrame:Z

.field private isMasked:Z

.field private final maskBuffer:[B

.field private final maskKey:[B

.field private messageClosed:Z

.field private opcode:I

.field private final source:Lcom/sendbird/android/shadow/okio/BufferedSource;


# direct methods
.method public constructor <init>(ZLcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;)V
    .locals 2
    .param p1, "isClient"    # Z
    .param p2, "source"    # Lcom/sendbird/android/shadow/okio/BufferedSource;
    .param p3, "frameCallback"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FramedMessageSource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FramedMessageSource;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->framedMessageSource:Lcom/sendbird/android/shadow/okio/Source;

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    .line 83
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    .line 86
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "frameCallback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    .line 89
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 90
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->closed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)Lcom/sendbird/android/shadow/okio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)[B
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->messageClosed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->messageClosed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)J
    .locals 2
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;J)J
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)J
    .locals 2
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)V
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->readUntilNonControlFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->opcode:I

    return v0
.end method

.method static synthetic access$800(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;)[B
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    return-object v0
.end method

.method private readControlFrame()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 166
    const/4 v6, 0x0

    .line 167
    .local v6, "buffer":Lcom/sendbird/android/shadow/okio/Buffer;
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 168
    new-instance v6, Lcom/sendbird/android/shadow/okio/Buffer;

    .end local v6    # "buffer":Lcom/sendbird/android/shadow/okio/Buffer;
    invoke-direct {v6}, Lcom/sendbird/android/shadow/okio/Buffer;-><init>()V

    .line 170
    .restart local v6    # "buffer":Lcom/sendbird/android/shadow/okio/Buffer;
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    iget-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    invoke-interface {v0, v6, v2, v3}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readFully(Lcom/sendbird/android/shadow/okio/Buffer;J)V

    .line 184
    :cond_0
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v0, :pswitch_data_0

    .line 209
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown control opcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    .local v10, "read":I
    .local v12, "toRead":I
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    int-to-long v1, v10

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    iget-wide v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    invoke-static/range {v0 .. v5}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketProtocol;->toggleMask([BJ[BJ)V

    .line 178
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-virtual {v6, v0, v13, v10}, Lcom/sendbird/android/shadow/okio/Buffer;->write([BII)Lcom/sendbird/android/shadow/okio/Buffer;

    .line 179
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    int-to-long v2, v10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 173
    .end local v10    # "read":I
    .end local v12    # "toRead":I
    :cond_2
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    iget-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 174
    iget-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    iget-wide v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v12, v0

    .line 175
    .restart local v12    # "toRead":I
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskBuffer:[B

    invoke-interface {v0, v1, v13, v12}, Lcom/sendbird/android/shadow/okio/BufferedSource;->read([BII)I

    move-result v10

    .line 176
    .restart local v10    # "read":I
    const/4 v0, -0x1

    if-ne v10, v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 186
    .end local v10    # "read":I
    .end local v12    # "toRead":I
    :pswitch_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onPing(Lcom/sendbird/android/shadow/okio/Buffer;)V

    .line 211
    :goto_0
    return-void

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onPong(Lcom/sendbird/android/shadow/okio/Buffer;)V

    goto :goto_0

    .line 192
    :pswitch_2
    const/16 v7, 0x3e8

    .line 193
    .local v7, "code":I
    const-string v11, ""

    .line 194
    .local v11, "reason":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 195
    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okio/Buffer;->size()J

    move-result-wide v8

    .line 196
    .local v8, "bufferSize":J
    const-wide/16 v0, 0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_3

    .line 197
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Malformed close payload length of 1."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okio/Buffer;->readShort()S

    move-result v7

    .line 200
    invoke-static {v7, v13}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(IZ)V

    .line 202
    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v11

    .line 205
    .end local v8    # "bufferSize":J
    :cond_4
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v0, v7, v11}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onClose(ILjava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->closed:Z

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readHeader()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 113
    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/IOException;

    const-string v6, "closed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 115
    :cond_0
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v5}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    .line 117
    .local v0, "b0":I
    and-int/lit8 v5, v0, 0xf

    iput v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->opcode:I

    .line 118
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    .line 119
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    .line 122
    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isFinalFrame:Z

    if-nez v5, :cond_3

    .line 123
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Control frames must be final."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move v5, v7

    .line 118
    goto :goto_0

    :cond_2
    move v5, v7

    .line 119
    goto :goto_1

    .line 126
    :cond_3
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_5

    move v2, v6

    .line 127
    .local v2, "reservedFlag1":Z
    :goto_2
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_6

    move v3, v6

    .line 128
    .local v3, "reservedFlag2":Z
    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_7

    move v4, v6

    .line 129
    .local v4, "reservedFlag3":Z
    :goto_4
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-eqz v4, :cond_8

    .line 131
    :cond_4
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Reserved flags are unsupported."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2    # "reservedFlag1":Z
    .end local v3    # "reservedFlag2":Z
    .end local v4    # "reservedFlag3":Z
    :cond_5
    move v2, v7

    .line 126
    goto :goto_2

    .restart local v2    # "reservedFlag1":Z
    :cond_6
    move v3, v7

    .line 127
    goto :goto_3

    .restart local v3    # "reservedFlag2":Z
    :cond_7
    move v4, v7

    .line 128
    goto :goto_4

    .line 134
    .restart local v4    # "reservedFlag3":Z
    :cond_8
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v5}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readByte()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    .line 136
    .local v1, "b1":I
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_9

    :goto_5
    iput-boolean v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    .line 137
    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    iget-boolean v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isClient:Z

    if-ne v5, v6, :cond_a

    .line 139
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Client-sent frames must be masked. Server sent must not."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_9
    move v6, v7

    .line 136
    goto :goto_5

    .line 143
    :cond_a
    and-int/lit8 v5, v1, 0x7f

    int-to-long v6, v5

    iput-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 144
    iget-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7e

    cmp-long v5, v6, v8

    if-nez v5, :cond_c

    .line 145
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v5}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readShort()S

    move-result v5

    int-to-long v6, v5

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 153
    :cond_b
    iput-wide v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameBytesRead:J

    .line 155
    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v5, :cond_d

    iget-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7d

    cmp-long v5, v6, v8

    if-lez v5, :cond_d

    .line 156
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Control frame must be less than 125B."

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_c
    iget-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    const-wide/16 v8, 0x7f

    cmp-long v5, v6, v8

    if-nez v5, :cond_b

    .line 147
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v5}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 148
    iget-wide v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    cmp-long v5, v6, v10

    if-gez v5, :cond_b

    .line 149
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Frame length 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameLength:J

    .line 150
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > 0x7FFFFFFFFFFFFFFF"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_d
    iget-boolean v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isMasked:Z

    if-eqz v5, :cond_e

    .line 161
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    iget-object v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->maskKey:[B

    invoke-interface {v5, v6}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readFully([B)V

    .line 163
    :cond_e
    return-void
.end method

.method private readMessageFrame()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->opcode:I

    packed-switch v3, :pswitch_data_0

    .line 223
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown opcode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->opcode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :pswitch_0
    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;->TEXT:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    .line 226
    .local v2, "type":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    :goto_0
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->framedMessageSource:Lcom/sendbird/android/shadow/okio/Source;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v1

    .line 227
    .local v1, "source":Lcom/sendbird/android/shadow/okio/BufferedSource;
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;

    invoke-direct {v0, p0, v2, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$1;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;Lcom/sendbird/android/shadow/okhttp3/MediaType;Lcom/sendbird/android/shadow/okio/BufferedSource;)V

    .line 241
    .local v0, "body":Lcom/sendbird/android/shadow/okhttp3/ResponseBody;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->messageClosed:Z

    .line 242
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->frameCallback:Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;

    invoke-interface {v3, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;->onMessage(Lcom/sendbird/android/shadow/okhttp3/ResponseBody;)V

    .line 243
    iget-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->messageClosed:Z

    if-nez v3, :cond_0

    .line 244
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Listener failed to call close on message payload."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 220
    .end local v0    # "body":Lcom/sendbird/android/shadow/okhttp3/ResponseBody;
    .end local v1    # "source":Lcom/sendbird/android/shadow/okio/BufferedSource;
    .end local v2    # "type":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    :pswitch_1
    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;->BINARY:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    .line 221
    .restart local v2    # "type":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    goto :goto_0

    .line 246
    .restart local v0    # "body":Lcom/sendbird/android/shadow/okhttp3/ResponseBody;
    .restart local v1    # "source":Lcom/sendbird/android/shadow/okio/BufferedSource;
    :cond_0
    return-void

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readUntilNonControlFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    :goto_0
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->closed:Z

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 252
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-nez v0, :cond_1

    .line 257
    :cond_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    goto :goto_0
.end method


# virtual methods
.method public processNextFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->readHeader()V

    .line 105
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->isControlFrame:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->readControlFrame()V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;->readMessageFrame()V

    goto :goto_0
.end method
