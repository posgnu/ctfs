.class final Lretrofit/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# instance fields
.field private final baseUrl:Lretrofit/BaseUrl;

.field private final contentType:Lcom/squareup/okhttp/MediaType;

.field private final hasBody:Z

.field private final headers:Lcom/squareup/okhttp/Headers;

.field private final isFormEncoded:Z

.field private final isMultipart:Z

.field private final method:Ljava/lang/String;

.field private final relativeUrl:Ljava/lang/String;

.field private final requestBuilderActions:[Lretrofit/RequestBuilderAction;


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit/BaseUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ[Lretrofit/RequestBuilderAction;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Lretrofit/BaseUrl;
    .param p3, "relativeUrl"    # Ljava/lang/String;
    .param p4, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p5, "contentType"    # Lcom/squareup/okhttp/MediaType;
    .param p6, "hasBody"    # Z
    .param p7, "isFormEncoded"    # Z
    .param p8, "isMultipart"    # Z
    .param p9, "requestBuilderActions"    # [Lretrofit/RequestBuilderAction;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lretrofit/RequestFactory;->method:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lretrofit/RequestFactory;->baseUrl:Lretrofit/BaseUrl;

    .line 38
    iput-object p3, p0, Lretrofit/RequestFactory;->relativeUrl:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lretrofit/RequestFactory;->headers:Lcom/squareup/okhttp/Headers;

    .line 40
    iput-object p5, p0, Lretrofit/RequestFactory;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 41
    iput-boolean p6, p0, Lretrofit/RequestFactory;->hasBody:Z

    .line 42
    iput-boolean p7, p0, Lretrofit/RequestFactory;->isFormEncoded:Z

    .line 43
    iput-boolean p8, p0, Lretrofit/RequestFactory;->isMultipart:Z

    .line 44
    iput-object p9, p0, Lretrofit/RequestFactory;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    .line 45
    return-void
.end method


# virtual methods
.method varargs create([Ljava/lang/Object;)Lcom/squareup/okhttp/Request;
    .locals 12
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Lretrofit/RequestBuilder;

    iget-object v1, p0, Lretrofit/RequestFactory;->method:Ljava/lang/String;

    iget-object v2, p0, Lretrofit/RequestFactory;->baseUrl:Lretrofit/BaseUrl;

    .line 49
    invoke-interface {v2}, Lretrofit/BaseUrl;->url()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v2

    iget-object v3, p0, Lretrofit/RequestFactory;->relativeUrl:Ljava/lang/String;

    iget-object v4, p0, Lretrofit/RequestFactory;->headers:Lcom/squareup/okhttp/Headers;

    iget-object v5, p0, Lretrofit/RequestFactory;->contentType:Lcom/squareup/okhttp/MediaType;

    iget-boolean v6, p0, Lretrofit/RequestFactory;->hasBody:Z

    iget-boolean v7, p0, Lretrofit/RequestFactory;->isFormEncoded:Z

    iget-boolean v8, p0, Lretrofit/RequestFactory;->isMultipart:Z

    invoke-direct/range {v0 .. v8}, Lretrofit/RequestBuilder;-><init>(Ljava/lang/String;Lcom/squareup/okhttp/HttpUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ)V

    .line 52
    .local v0, "requestBuilder":Lretrofit/RequestBuilder;
    if-eqz p1, :cond_1

    .line 53
    iget-object v9, p0, Lretrofit/RequestFactory;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    .line 54
    .local v9, "actions":[Lretrofit/RequestBuilderAction;
    array-length v1, v9

    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") doesn\'t match action count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v10, p1

    .local v10, "count":I
    :goto_0
    if-ge v11, v10, :cond_1

    .line 62
    aget-object v1, v9, v11

    aget-object v2, p1, v11

    invoke-virtual {v1, v0, v2}, Lretrofit/RequestBuilderAction;->perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V

    .line 61
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 66
    .end local v9    # "actions":[Lretrofit/RequestBuilderAction;
    .end local v10    # "count":I
    .end local v11    # "i":I
    :cond_1
    invoke-virtual {v0}, Lretrofit/RequestBuilder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    return-object v1
.end method
