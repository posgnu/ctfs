.class Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;
.super Lcom/squareup/okhttp/RequestBody;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentTypeOverridingRequestBody"
.end annotation


# instance fields
.field private final contentType:Lcom/squareup/okhttp/MediaType;

.field private final delegate:Lcom/squareup/okhttp/RequestBody;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/RequestBody;Lcom/squareup/okhttp/MediaType;)V
    .locals 0
    .param p1, "delegate"    # Lcom/squareup/okhttp/RequestBody;
    .param p2, "contentType"    # Lcom/squareup/okhttp/MediaType;

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/squareup/okhttp/RequestBody;-><init>()V

    .line 213
    iput-object p1, p0, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lcom/squareup/okhttp/RequestBody;

    .line 214
    iput-object p2, p0, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 215
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
    .line 222
    iget-object v0, p0, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0}, Lcom/squareup/okhttp/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;->contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;->delegate:Lcom/squareup/okhttp/RequestBody;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 227
    return-void
.end method
