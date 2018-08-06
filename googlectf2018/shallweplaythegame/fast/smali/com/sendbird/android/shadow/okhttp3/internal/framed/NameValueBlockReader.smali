.class Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lcom/sendbird/android/shadow/okio/InflaterSource;

.field private final source:Lcom/sendbird/android/shadow/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/okio/BufferedSource;)V
    .locals 3
    .param p1, "source"    # Lcom/sendbird/android/shadow/okio/BufferedSource;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader$1;

    invoke-direct {v1, p0, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader$1;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;Lcom/sendbird/android/shadow/okio/Source;)V

    .line 64
    .local v1, "throttleSource":Lcom/sendbird/android/shadow/okio/Source;
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader$2;

    invoke-direct {v0, p0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader$2;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;)V

    .line 76
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lcom/sendbird/android/shadow/okio/InflaterSource;

    invoke-direct {v2, v1, v0}, Lcom/sendbird/android/shadow/okio/InflaterSource;-><init>(Lcom/sendbird/android/shadow/okio/Source;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/sendbird/android/shadow/okio/InflaterSource;

    .line 77
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/sendbird/android/shadow/okio/InflaterSource;

    invoke-static {v2}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;

    .prologue
    .line 36
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$002(Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->compressedLimit:I

    return p1
.end method

.method private doneReading()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-lez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->inflaterSource:Lcom/sendbird/android/shadow/okio/InflaterSource;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okio/InflaterSource;->refill()Z

    .line 110
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->compressedLimit:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    return-void
.end method

.method private readByteString()Lcom/sendbird/android/shadow/okio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v1}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readInt()I

    move-result v0

    .line 101
    .local v0, "length":I
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readByteString(J)Lcom/sendbird/android/shadow/okio/ByteString;

    move-result-object v1

    return-object v1
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
    .line 115
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/BufferedSource;->close()V

    .line 116
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/internal/framed/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->compressedLimit:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->compressedLimit:I

    .line 83
    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v5}, Lcom/sendbird/android/shadow/okio/BufferedSource;->readInt()I

    move-result v3

    .line 84
    .local v3, "numberOfPairs":I
    if-gez v3, :cond_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfPairs < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :cond_0
    const/16 v5, 0x400

    if-le v3, v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberOfPairs > 1024: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/internal/framed/Header;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->readByteString()Lcom/sendbird/android/shadow/okio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okio/ByteString;->toAsciiLowercase()Lcom/sendbird/android/shadow/okio/ByteString;

    move-result-object v2

    .line 90
    .local v2, "name":Lcom/sendbird/android/shadow/okio/ByteString;
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->readByteString()Lcom/sendbird/android/shadow/okio/ByteString;

    move-result-object v4

    .line 91
    .local v4, "values":Lcom/sendbird/android/shadow/okio/ByteString;
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okio/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string v6, "name.size == 0"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_2
    new-instance v5, Lcom/sendbird/android/shadow/okhttp3/internal/framed/Header;

    invoke-direct {v5, v2, v4}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/Header;-><init>(Lcom/sendbird/android/shadow/okio/ByteString;Lcom/sendbird/android/shadow/okio/ByteString;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "name":Lcom/sendbird/android/shadow/okio/ByteString;
    .end local v4    # "values":Lcom/sendbird/android/shadow/okio/ByteString;
    :cond_3
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/NameValueBlockReader;->doneReading()V

    .line 96
    return-object v0
.end method
