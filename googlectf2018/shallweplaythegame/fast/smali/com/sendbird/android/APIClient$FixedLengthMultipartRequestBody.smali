.class final Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;
.super Lcom/sendbird/android/shadow/okhttp3/RequestBody;
.source "APIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/APIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedLengthMultipartRequestBody"
.end annotation


# static fields
.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final FORM:Lcom/sendbird/android/shadow/okhttp3/MediaType;


# instance fields
.field private final boundary:Lcom/sendbird/android/shadow/okio/ByteString;

.field private final contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

.field private final partBodies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/RequestBody;",
            ">;"
        }
    .end annotation
.end field

.field private final partHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 861
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->FORM:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    .line 862
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->COLONSPACE:[B

    .line 863
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    .line 864
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->DASHDASH:[B

    return-void

    .line 862
    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 863
    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 864
    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Headers;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/RequestBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, "partHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/Headers;>;"
    .local p2, "partBodies":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/RequestBody;>;"
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;-><init>()V

    .line 872
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/shadow/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->boundary:Lcom/sendbird/android/shadow/okio/ByteString;

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->FORM:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->boundary:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    .line 874
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partHeaders:Ljava/util/List;

    .line 875
    invoke-static {p2}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partBodies:Ljava/util/List;

    .line 876
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    const/4 v9, 0x0

    .line 884
    .local v9, "length":I
    const/4 v10, 0x0

    .local v10, "p":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "partCount":I
    :goto_0
    if-ge v10, v11, :cond_3

    .line 885
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sendbird/android/shadow/okhttp3/Headers;

    .line 886
    .local v8, "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    .line 888
    .local v2, "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    .line 889
    .local v4, "contentLength":J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_0

    .line 890
    const-wide/16 v12, -0x1

    .line 927
    .end local v2    # "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .end local v4    # "contentLength":J
    .end local v8    # "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    :goto_1
    return-wide v12

    .line 893
    .restart local v2    # "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .restart local v4    # "contentLength":J
    .restart local v8    # "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    :cond_0
    sget-object v12, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->DASHDASH:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->boundary:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-virtual {v13}, Lcom/sendbird/android/shadow/okio/ByteString;->size()I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    array-length v13, v13

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 897
    if-eqz v8, :cond_1

    .line 898
    const/4 v6, 0x0

    .local v6, "h":I
    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Headers;->size()I

    move-result v7

    .local v7, "headerCount":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 899
    invoke-virtual {v8, v6}, Lcom/sendbird/android/shadow/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v12, v12

    sget-object v13, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->COLONSPACE:[B

    array-length v13, v13

    add-int/2addr v12, v13

    invoke-virtual {v8, v6}, Lcom/sendbird/android/shadow/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v13, v13

    add-int/2addr v12, v13

    sget-object v13, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    array-length v13, v13

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 898
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 906
    .end local v6    # "h":I
    .end local v7    # "headerCount":I
    :cond_1
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v3

    .line 907
    .local v3, "contentType":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    if-eqz v3, :cond_2

    .line 908
    const-string v12, "Content-Type: "

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v12, v12

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v13, v13

    add-int/2addr v12, v13

    sget-object v13, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    array-length v13, v13

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 913
    :cond_2
    const-string v12, "Content-Length: "

    const-string v13, "UTF-8"

    invoke-virtual {v12, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    array-length v12, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v13, v13

    add-int/2addr v12, v13

    sget-object v13, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    array-length v13, v13

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 917
    int-to-long v12, v9

    sget-object v14, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    array-length v14, v14

    int-to-long v14, v14

    add-long/2addr v14, v4

    sget-object v16, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v12, v14

    long-to-int v9, v12

    .line 884
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 922
    .end local v2    # "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .end local v3    # "contentType":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .end local v4    # "contentLength":J
    .end local v8    # "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    :cond_3
    sget-object v12, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->DASHDASH:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->boundary:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-virtual {v13}, Lcom/sendbird/android/shadow/okio/ByteString;->size()I

    move-result v13

    add-int/2addr v12, v13

    sget-object v13, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->DASHDASH:[B

    array-length v13, v13

    add-int/2addr v12, v13

    sget-object v13, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    array-length v13, v13

    add-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 927
    int-to-long v12, v9

    goto/16 :goto_1
.end method

.method public contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/sendbird/android/shadow/okio/BufferedSink;)V
    .locals 12
    .param p1, "sink"    # Lcom/sendbird/android/shadow/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    const/4 v7, 0x0

    .local v7, "p":I
    iget-object v9, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "partCount":I
    :goto_0
    if-ge v7, v8, :cond_3

    .line 932
    iget-object v9, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partHeaders:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sendbird/android/shadow/okhttp3/Headers;

    .line 933
    .local v6, "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    iget-object v9, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    .line 935
    .local v0, "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    sget-object v9, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->DASHDASH:[B

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 936
    iget-object v9, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->boundary:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write(Lcom/sendbird/android/shadow/okio/ByteString;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 937
    sget-object v9, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 939
    if-eqz v6, :cond_0

    .line 940
    const/4 v4, 0x0

    .local v4, "h":I
    invoke-virtual {v6}, Lcom/sendbird/android/shadow/okhttp3/Headers;->size()I

    move-result v5

    .local v5, "headerCount":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 941
    invoke-virtual {v6, v4}, Lcom/sendbird/android/shadow/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->COLONSPACE:[B

    invoke-interface {v9, v10}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v9

    invoke-virtual {v6, v4}, Lcom/sendbird/android/shadow/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    invoke-interface {v9, v10}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 940
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 948
    .end local v4    # "h":I
    .end local v5    # "headerCount":I
    :cond_0
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v1

    .line 949
    .local v1, "contentType":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    if-eqz v1, :cond_1

    .line 950
    const-string v9, "Content-Type: "

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v9

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    invoke-interface {v9, v10}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 955
    :cond_1
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    .line 956
    .local v2, "contentLength":J
    const-wide/16 v10, -0x1

    cmp-long v9, v2, v10

    if-eqz v9, :cond_2

    .line 957
    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/sendbird/android/shadow/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    invoke-interface {v9, v10}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 962
    :cond_2
    sget-object v9, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 963
    iget-object v9, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->partBodies:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    invoke-virtual {v9, p1}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->writeTo(Lcom/sendbird/android/shadow/okio/BufferedSink;)V

    .line 964
    sget-object v9, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 931
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 967
    .end local v0    # "body":Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .end local v1    # "contentType":Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .end local v2    # "contentLength":J
    .end local v6    # "headers":Lcom/sendbird/android/shadow/okhttp3/Headers;
    :cond_3
    sget-object v9, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->DASHDASH:[B

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 968
    iget-object v9, p0, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->boundary:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write(Lcom/sendbird/android/shadow/okio/ByteString;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 969
    sget-object v9, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->DASHDASH:[B

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 970
    sget-object v9, Lcom/sendbird/android/APIClient$FixedLengthMultipartRequestBody;->CRLF:[B

    invoke-interface {p1, v9}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([B)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 971
    return-void
.end method
