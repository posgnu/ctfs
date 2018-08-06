.class public final Lcom/sendbird/android/shadow/okhttp3/internal/http/RealResponseBody;
.super Lcom/sendbird/android/shadow/okhttp3/ResponseBody;
.source "RealResponseBody.java"


# instance fields
.field private final headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

.field private final source:Lcom/sendbird/android/shadow/okio/BufferedSource;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Headers;Lcom/sendbird/android/shadow/okio/BufferedSource;)V
    .locals 0
    .param p1, "headers"    # Lcom/sendbird/android/shadow/okhttp3/Headers;
    .param p2, "source"    # Lcom/sendbird/android/shadow/okio/BufferedSource;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/RealResponseBody;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    .line 29
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/RealResponseBody;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 30
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/RealResponseBody;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/OkHeaders;->contentLength(Lcom/sendbird/android/shadow/okhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lcom/sendbird/android/shadow/okhttp3/MediaType;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/RealResponseBody;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/MediaType;->parse(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/MediaType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public source()Lcom/sendbird/android/shadow/okio/BufferedSource;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/RealResponseBody;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    return-object v0
.end method
