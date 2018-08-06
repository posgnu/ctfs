.class final Lcom/sendbird/android/shadow/okhttp3/RequestBody$1;
.super Lcom/sendbird/android/shadow/okhttp3/RequestBody;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/RequestBody;->create(Lcom/sendbird/android/shadow/okhttp3/MediaType;Lcom/sendbird/android/shadow/okio/ByteString;)Lcom/sendbird/android/shadow/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/sendbird/android/shadow/okio/ByteString;

.field final synthetic val$contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/MediaType;Lcom/sendbird/android/shadow/okio/ByteString;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$1;->val$contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$1;->val$content:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$1;->val$content:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$1;->val$contentType:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lcom/sendbird/android/shadow/okio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lcom/sendbird/android/shadow/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/RequestBody$1;->val$content:Lcom/sendbird/android/shadow/okio/ByteString;

    invoke-interface {p1, v0}, Lcom/sendbird/android/shadow/okio/BufferedSink;->write(Lcom/sendbird/android/shadow/okio/ByteString;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 72
    return-void
.end method
