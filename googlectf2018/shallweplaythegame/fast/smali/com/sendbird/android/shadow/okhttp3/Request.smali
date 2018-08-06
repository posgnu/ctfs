.class public final Lcom/sendbird/android/shadow/okhttp3/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/okhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field private final body:Lcom/sendbird/android/shadow/okhttp3/RequestBody;

.field private volatile cacheControl:Lcom/sendbird/android/shadow/okhttp3/CacheControl;

.field private final headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Lcom/sendbird/android/shadow/okhttp3/HttpUrl;


# direct methods
.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->access$000(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->url:Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    .line 37
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->access$100(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->method:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->access$200(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    .line 39
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->access$300(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->body:Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    .line 40
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->access$400(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->access$400(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->tag:Ljava/lang/Object;

    .line 41
    return-void

    :cond_0
    move-object v0, p0

    .line 40
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;Lcom/sendbird/android/shadow/okhttp3/Request$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Request$Builder;
    .param p2, "x1"    # Lcom/sendbird/android/shadow/okhttp3/Request$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/sendbird/android/shadow/okhttp3/Request;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Headers;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/HttpUrl;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->url:Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sendbird/android/shadow/okhttp3/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->body:Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sendbird/android/shadow/okhttp3/Request;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->body:Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->cacheControl:Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    .line 81
    .local v0, "result":Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    :cond_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    invoke-static {v1}, Lcom/sendbird/android/shadow/okhttp3/CacheControl;->parse(Lcom/sendbird/android/shadow/okhttp3/Headers;)Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    move-result-object v0

    .end local v0    # "result":Lcom/sendbird/android/shadow/okhttp3/CacheControl;
    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->cacheControl:Lcom/sendbird/android/shadow/okhttp3/CacheControl;

    goto :goto_0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lcom/sendbird/android/shadow/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lcom/sendbird/android/shadow/okhttp3/Headers;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->headers:Lcom/sendbird/android/shadow/okhttp3/Headers;

    invoke-virtual {v0, p1}, Lcom/sendbird/android/shadow/okhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->url:Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lcom/sendbird/android/shadow/okhttp3/Request$Builder;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>(Lcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Request$1;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->url:Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->tag:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->tag:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/Request;->url:Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    return-object v0
.end method
