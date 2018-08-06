.class final Lretrofit/OkHttpCall$NoContentResponseBody;
.super Lcom/squareup/okhttp/ResponseBody;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/OkHttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoContentResponseBody"
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentType:Lcom/squareup/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/MediaType;J)V
    .locals 0
    .param p1, "contentType"    # Lcom/squareup/okhttp/MediaType;
    .param p2, "contentLength"    # J

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/squareup/okhttp/ResponseBody;-><init>()V

    .line 171
    iput-object p1, p0, Lretrofit/OkHttpCall$NoContentResponseBody;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 172
    iput-wide p2, p0, Lretrofit/OkHttpCall$NoContentResponseBody;->contentLength:J

    .line 173
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
    .line 180
    iget-wide v0, p0, Lretrofit/OkHttpCall$NoContentResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lcom/squareup/okhttp/MediaType;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lretrofit/OkHttpCall$NoContentResponseBody;->contentType:Lcom/squareup/okhttp/MediaType;

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
