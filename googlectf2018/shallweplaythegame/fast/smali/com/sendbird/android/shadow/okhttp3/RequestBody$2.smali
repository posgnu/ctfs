.class final Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;
.super Lcom/sendbird/android/shadow/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/RequestBody;->create(Lcom/sendbird/android/shadow/okhttp3/MediaType;[BII)Lcom/sendbird/android/shadow/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/MediaType;I[BI)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    iput p2, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$content:[B

    iput p4, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/sendbird/android/shadow/okio/BufferedSink;)V
    .locals 3
    .param p1, "sink"    # Lcom/sendbird/android/shadow/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$content:[B

    iget v1, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$offset:I

    iget v2, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write([BII)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 97
    return-void
.end method
