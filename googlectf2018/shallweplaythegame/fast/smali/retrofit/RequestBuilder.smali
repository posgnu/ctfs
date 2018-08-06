.class final Lretrofit/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|/\\?#"


# instance fields
.field private final baseUrl:Lcom/squareup/okhttp/HttpUrl;

.field private body:Lcom/squareup/okhttp/RequestBody;

.field private contentType:Lcom/squareup/okhttp/MediaType;

.field private formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

.field private final hasBody:Z

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

.field private relativeUrl:Ljava/lang/String;

.field private final requestBuilder:Lcom/squareup/okhttp/Request$Builder;

.field private urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit/RequestBuilder;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/squareup/okhttp/HttpUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "baseUrl"    # Lcom/squareup/okhttp/HttpUrl;
    .param p3, "relativeUrl"    # Ljava/lang/String;
    .param p4, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p5, "contentType"    # Lcom/squareup/okhttp/MediaType;
    .param p6, "hasBody"    # Z
    .param p7, "isFormEncoded"    # Z
    .param p8, "isMultipart"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lretrofit/RequestBuilder;->method:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lretrofit/RequestBuilder;->baseUrl:Lcom/squareup/okhttp/HttpUrl;

    .line 52
    iput-object p3, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    iput-object v0, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    .line 54
    iput-object p5, p0, Lretrofit/RequestBuilder;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 55
    iput-boolean p6, p0, Lretrofit/RequestBuilder;->hasBody:Z

    .line 57
    if-eqz p4, :cond_0

    .line 58
    iget-object v0, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p4}, Lcom/squareup/okhttp/Request$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Request$Builder;

    .line 61
    :cond_0
    if-eqz p7, :cond_2

    .line 63
    new-instance v0, Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/FormEncodingBuilder;-><init>()V

    iput-object v0, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    if-eqz p8, :cond_1

    .line 66
    new-instance v0, Lcom/squareup/okhttp/MultipartBuilder;

    invoke-direct {v0}, Lcom/squareup/okhttp/MultipartBuilder;-><init>()V

    iput-object v0, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    .line 67
    iget-object v0, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    sget-object v1, Lcom/squareup/okhttp/MultipartBuilder;->FORM:Lcom/squareup/okhttp/MediaType;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/MultipartBuilder;->type(Lcom/squareup/okhttp/MediaType;)Lcom/squareup/okhttp/MultipartBuilder;

    goto :goto_0
.end method

.method static canonicalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "alreadyEncoded"    # Z

    .prologue
    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 95
    .local v0, "codePoint":I
    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_0

    const-string v4, " \"<>^`{}|/\\?#"

    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x25

    if-ne v0, v4, :cond_2

    if-nez p1, :cond_2

    .line 99
    :cond_0
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 100
    .local v3, "out":Lokio/Buffer;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    .line 101
    invoke-static {v3, p0, v1, v2, p1}, Lretrofit/RequestBuilder;->canonicalize(Lokio/Buffer;Ljava/lang/String;IIZ)V

    .line 102
    invoke-virtual {v3}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    .line 107
    .end local v0    # "codePoint":I
    .end local v3    # "out":Lokio/Buffer;
    .end local p0    # "input":Ljava/lang/String;
    :cond_1
    return-object p0

    .line 93
    .restart local v0    # "codePoint":I
    .restart local p0    # "input":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method static canonicalize(Lokio/Buffer;Ljava/lang/String;IIZ)V
    .locals 7
    .param p0, "out"    # Lokio/Buffer;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .param p4, "alreadyEncoded"    # Z

    .prologue
    const/16 v6, 0x25

    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, "utf8Buffer":Lokio/Buffer;
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_5

    .line 114
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 115
    .local v1, "codePoint":I
    if-eqz p4, :cond_1

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0xc

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-ne v1, v4, :cond_1

    .line 113
    :cond_0
    :goto_1
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 118
    :cond_1
    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v1, v4, :cond_2

    const-string v4, " \"<>^`{}|/\\?#"

    .line 120
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-ne v1, v6, :cond_4

    if-nez p4, :cond_4

    .line 123
    :cond_2
    if-nez v3, :cond_3

    .line 124
    new-instance v3, Lokio/Buffer;

    .end local v3    # "utf8Buffer":Lokio/Buffer;
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .line 126
    .restart local v3    # "utf8Buffer":Lokio/Buffer;
    :cond_3
    invoke-virtual {v3, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    .line 127
    :goto_2
    invoke-virtual {v3}, Lokio/Buffer;->exhausted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-virtual {v3}, Lokio/Buffer;->readByte()B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    .line 129
    .local v0, "b":I
    invoke-virtual {p0, v6}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 130
    sget-object v4, Lretrofit/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 131
    sget-object v4, Lretrofit/RequestBuilder;->HEX_DIGITS:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_2

    .line 135
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_1

    .line 138
    .end local v1    # "codePoint":I
    :cond_5
    return-void
.end method


# virtual methods
.method addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 155
    if-eqz p3, :cond_0

    .line 156
    iget-object v0, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/FormEncodingBuilder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/FormEncodingBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/FormEncodingBuilder;

    goto :goto_0
.end method

.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p2}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_0
.end method

.method addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)V
    .locals 1
    .param p1, "headers"    # Lcom/squareup/okhttp/Headers;
    .param p2, "body"    # Lcom/squareup/okhttp/RequestBody;

    .prologue
    .line 163
    iget-object v0, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/MultipartBuilder;->addPart(Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/MultipartBuilder;

    .line 164
    return-void
.end method

.method addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 84
    iget-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lretrofit/RequestBuilder;->canonicalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 89
    return-void
.end method

.method addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "encoded"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lretrofit/RequestBuilder;->baseUrl:Lcom/squareup/okhttp/HttpUrl;

    iget-object v1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/HttpUrl;->newBuilder()Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 147
    :cond_0
    if-eqz p3, :cond_1

    .line 148
    iget-object v0, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    goto :goto_0
.end method

.method build()Lcom/squareup/okhttp/Request;
    .locals 8

    .prologue
    .line 172
    iget-object v4, p0, Lretrofit/RequestBuilder;->urlBuilder:Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 173
    .local v4, "urlBuilder":Lcom/squareup/okhttp/HttpUrl$Builder;
    if-eqz v4, :cond_2

    .line 174
    invoke-virtual {v4}, Lcom/squareup/okhttp/HttpUrl$Builder;->build()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v3

    .line 180
    .local v3, "url":Lcom/squareup/okhttp/HttpUrl;
    :goto_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->body:Lcom/squareup/okhttp/RequestBody;

    .line 181
    .local v0, "body":Lcom/squareup/okhttp/RequestBody;
    if-nez v0, :cond_0

    .line 183
    iget-object v5, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    if-eqz v5, :cond_3

    .line 184
    iget-object v5, p0, Lretrofit/RequestBuilder;->formEncodingBuilder:Lcom/squareup/okhttp/FormEncodingBuilder;

    invoke-virtual {v5}, Lcom/squareup/okhttp/FormEncodingBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    .line 193
    :cond_0
    :goto_1
    iget-object v2, p0, Lretrofit/RequestBuilder;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 194
    .local v2, "contentType":Lcom/squareup/okhttp/MediaType;
    if-eqz v2, :cond_1

    .line 195
    if-eqz v0, :cond_5

    .line 196
    new-instance v1, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v1, v0, v2}, Lretrofit/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lcom/squareup/okhttp/RequestBody;Lcom/squareup/okhttp/MediaType;)V

    .end local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    .local v1, "body":Lcom/squareup/okhttp/RequestBody;
    move-object v0, v1

    .line 202
    .end local v1    # "body":Lcom/squareup/okhttp/RequestBody;
    .restart local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    :cond_1
    :goto_2
    iget-object v5, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    .line 203
    invoke-virtual {v5, v3}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    iget-object v6, p0, Lretrofit/RequestBuilder;->method:Ljava/lang/String;

    .line 204
    invoke-virtual {v5, v6, v0}, Lcom/squareup/okhttp/Request$Builder;->method(Ljava/lang/String;Lcom/squareup/okhttp/RequestBody;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v5

    .line 205
    invoke-virtual {v5}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v5

    return-object v5

    .line 177
    .end local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    .end local v2    # "contentType":Lcom/squareup/okhttp/MediaType;
    .end local v3    # "url":Lcom/squareup/okhttp/HttpUrl;
    :cond_2
    iget-object v5, p0, Lretrofit/RequestBuilder;->baseUrl:Lcom/squareup/okhttp/HttpUrl;

    iget-object v6, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/squareup/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v3

    .restart local v3    # "url":Lcom/squareup/okhttp/HttpUrl;
    goto :goto_0

    .line 185
    .restart local v0    # "body":Lcom/squareup/okhttp/RequestBody;
    :cond_3
    iget-object v5, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    if-eqz v5, :cond_4

    .line 186
    iget-object v5, p0, Lretrofit/RequestBuilder;->multipartBuilder:Lcom/squareup/okhttp/MultipartBuilder;

    invoke-virtual {v5}, Lcom/squareup/okhttp/MultipartBuilder;->build()Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_1

    .line 187
    :cond_4
    iget-boolean v5, p0, Lretrofit/RequestBuilder;->hasBody:Z

    if-eqz v5, :cond_0

    .line 189
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-static {v5, v6}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;[B)Lcom/squareup/okhttp/RequestBody;

    move-result-object v0

    goto :goto_1

    .line 198
    .restart local v2    # "contentType":Lcom/squareup/okhttp/MediaType;
    :cond_5
    iget-object v5, p0, Lretrofit/RequestBuilder;->requestBuilder:Lcom/squareup/okhttp/Request$Builder;

    const-string v6, "Content-Type"

    invoke-virtual {v2}, Lcom/squareup/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    goto :goto_2
.end method

.method setBody(Lcom/squareup/okhttp/RequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/squareup/okhttp/RequestBody;

    .prologue
    .line 167
    iput-object p1, p0, Lretrofit/RequestBuilder;->body:Lcom/squareup/okhttp/RequestBody;

    .line 168
    return-void
.end method

.method setRelativeUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "relativeUrl"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 73
    return-void
.end method
