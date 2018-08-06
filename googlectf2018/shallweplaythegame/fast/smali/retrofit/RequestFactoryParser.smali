.class final Lretrofit/RequestFactoryParser;
.super Ljava/lang/Object;
.source "RequestFactoryParser.java"


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private contentType:Lcom/squareup/okhttp/MediaType;

.field private hasBody:Z

.field private headers:Lcom/squareup/okhttp/Headers;

.field private httpMethod:Ljava/lang/String;

.field private isFormEncoded:Z

.field private isMultipart:Z

.field private final method:Ljava/lang/reflect/Method;

.field private relativeUrl:Ljava/lang/String;

.field private relativeUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestBuilderActions:[Lretrofit/RequestBuilderAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RequestFactoryParser;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    .line 79
    return-void
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (parameter #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private varargs parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "index"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (parameter #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p4}, Lretrofit/Utils;->methodError(Ljava/lang/Throwable;Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static parse(Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Lretrofit/Retrofit;)Lretrofit/RequestFactory;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "responseType"    # Ljava/lang/reflect/Type;
    .param p2, "retrofit"    # Lretrofit/Retrofit;

    .prologue
    .line 58
    new-instance v0, Lretrofit/RequestFactoryParser;

    invoke-direct {v0, p0}, Lretrofit/RequestFactoryParser;-><init>(Ljava/lang/reflect/Method;)V

    .line 59
    .local v0, "parser":Lretrofit/RequestFactoryParser;
    invoke-direct {v0, p1}, Lretrofit/RequestFactoryParser;->parseMethodAnnotations(Ljava/lang/reflect/Type;)V

    .line 60
    invoke-direct {v0, p2}, Lretrofit/RequestFactoryParser;->parseParameters(Lretrofit/Retrofit;)V

    .line 61
    invoke-virtual {p2}, Lretrofit/Retrofit;->baseUrl()Lretrofit/BaseUrl;

    move-result-object v1

    invoke-direct {v0, v1}, Lretrofit/RequestFactoryParser;->toRequestFactory(Lretrofit/BaseUrl;)Lretrofit/RequestFactory;

    move-result-object v1

    return-object v1
.end method

.method private parseHeaders([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;
    .locals 9
    .param p1, "headers"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 179
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 180
    .local v0, "builder":Lcom/squareup/okhttp/Headers$Builder;
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, p1, v5

    .line 181
    .local v2, "header":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 182
    .local v1, "colon":I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v1, v8, :cond_1

    .line 183
    :cond_0
    iget-object v5, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v7, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-static {v5, v7, v8}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 186
    :cond_1
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "headerName":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "headerValue":Ljava/lang/String;
    const-string v8, "Content-Type"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 189
    invoke-static {v4}, Lcom/squareup/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/MediaType;

    move-result-object v8

    iput-object v8, p0, Lretrofit/RequestFactoryParser;->contentType:Lcom/squareup/okhttp/MediaType;

    .line 180
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {v0, v3, v4}, Lcom/squareup/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Headers$Builder;

    goto :goto_1

    .line 194
    .end local v1    # "colon":I
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "headerName":Ljava/lang/String;
    .end local v4    # "headerValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    move-result-object v5

    return-object v5
.end method

.method private parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "hasBody"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 151
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v4, "Only one HTTP method is allowed. Found: %s and %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    aput-object v6, v5, v7

    aput-object p1, v5, v8

    invoke-static {v3, v4, v5}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 155
    :cond_0
    iput-object p1, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    .line 156
    iput-boolean p3, p0, Lretrofit/RequestFactoryParser;->hasBody:Z

    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_1
    const/16 v3, 0x3f

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 164
    .local v2, "question":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 166
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "queryParams":Ljava/lang/String;
    sget-object v3, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 168
    .local v0, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v4, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v3, v4, v5}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 174
    .end local v0    # "queryParamMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "queryParams":Ljava/lang/String;
    :cond_2
    iput-object p2, p0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    .line 175
    invoke-static {p2}, Lretrofit/RequestFactoryParser;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lretrofit/RequestFactoryParser;->relativeUrlParamNames:Ljava/util/Set;

    goto :goto_0
.end method

.method private parseMethodAnnotations(Ljava/lang/reflect/Type;)V
    .locals 11
    .param p1, "responseType"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 96
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_d

    aget-object v0, v5, v3

    .line 97
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v7, v0, Lretrofit/http/DELETE;

    if-eqz v7, :cond_1

    .line 98
    const-string v7, "DELETE"

    check-cast v0, Lretrofit/http/DELETE;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lretrofit/http/DELETE;->value()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v4}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    instance-of v7, v0, Lretrofit/http/GET;

    if-eqz v7, :cond_2

    .line 100
    const-string v7, "GET"

    check-cast v0, Lretrofit/http/GET;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lretrofit/http/GET;->value()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v4}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 101
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_2
    instance-of v7, v0, Lretrofit/http/HEAD;

    if-eqz v7, :cond_3

    .line 102
    const-string v7, "HEAD"

    check-cast v0, Lretrofit/http/HEAD;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lretrofit/http/HEAD;->value()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v4}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 103
    const-class v7, Ljava/lang/Void;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v5, "HEAD method must use Void as response type."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 106
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_3
    instance-of v7, v0, Lretrofit/http/PATCH;

    if-eqz v7, :cond_4

    .line 107
    const-string v7, "PATCH"

    check-cast v0, Lretrofit/http/PATCH;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lretrofit/http/PATCH;->value()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 108
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_4
    instance-of v7, v0, Lretrofit/http/POST;

    if-eqz v7, :cond_5

    .line 109
    const-string v7, "POST"

    check-cast v0, Lretrofit/http/POST;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lretrofit/http/POST;->value()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 110
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_5
    instance-of v7, v0, Lretrofit/http/PUT;

    if-eqz v7, :cond_6

    .line 111
    const-string v7, "PUT"

    check-cast v0, Lretrofit/http/PUT;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lretrofit/http/PUT;->value()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, v10}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 112
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_6
    instance-of v7, v0, Lretrofit/http/HTTP;

    if-eqz v7, :cond_7

    move-object v2, v0

    .line 113
    check-cast v2, Lretrofit/http/HTTP;

    .line 114
    .local v2, "http":Lretrofit/http/HTTP;
    invoke-interface {v2}, Lretrofit/http/HTTP;->method()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lretrofit/http/HTTP;->path()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lretrofit/http/HTTP;->hasBody()Z

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lretrofit/RequestFactoryParser;->parseHttpMethodAndPath(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 115
    .end local v2    # "http":Lretrofit/http/HTTP;
    :cond_7
    instance-of v7, v0, Lretrofit/http/Headers;

    if-eqz v7, :cond_9

    .line 116
    check-cast v0, Lretrofit/http/Headers;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lretrofit/http/Headers;->value()[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "headersToParse":[Ljava/lang/String;
    array-length v7, v1

    if-nez v7, :cond_8

    .line 118
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v5, "@Headers annotation is empty."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 120
    :cond_8
    invoke-direct {p0, v1}, Lretrofit/RequestFactoryParser;->parseHeaders([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v7

    iput-object v7, p0, Lretrofit/RequestFactoryParser;->headers:Lcom/squareup/okhttp/Headers;

    goto/16 :goto_1

    .line 121
    .end local v1    # "headersToParse":[Ljava/lang/String;
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_9
    instance-of v7, v0, Lretrofit/http/Multipart;

    if-eqz v7, :cond_b

    .line 122
    iget-boolean v7, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-eqz v7, :cond_a

    .line 123
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v5, "Only one encoding annotation is allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 125
    :cond_a
    iput-boolean v10, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    goto/16 :goto_1

    .line 126
    :cond_b
    instance-of v7, v0, Lretrofit/http/FormUrlEncoded;

    if-eqz v7, :cond_0

    .line 127
    iget-boolean v7, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-eqz v7, :cond_c

    .line 128
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v5, "Only one encoding annotation is allowed."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 130
    :cond_c
    iput-boolean v10, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    goto/16 :goto_1

    .line 134
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_d
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 135
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v5, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 137
    :cond_e
    iget-boolean v3, p0, Lretrofit/RequestFactoryParser;->hasBody:Z

    if-nez v3, :cond_10

    .line 138
    iget-boolean v3, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    if-eqz v3, :cond_f

    .line 139
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v5, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 142
    :cond_f
    iget-boolean v3, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    if-eqz v3, :cond_10

    .line 143
    iget-object v3, p0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    const-string v5, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 148
    :cond_10
    return-void
.end method

.method private parseParameters(Lretrofit/Retrofit;)V
    .locals 37
    .param p1, "retrofit"    # Lretrofit/Retrofit;

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v23

    .line 199
    .local v23, "methodParameterTypes":[Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v20

    .line 201
    .local v20, "methodParameterAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/4 v11, 0x0

    .line 202
    .local v11, "gotField":Z
    const/4 v12, 0x0

    .line 203
    .local v12, "gotPart":Z
    const/4 v10, 0x0

    .line 204
    .local v10, "gotBody":Z
    const/4 v13, 0x0

    .line 205
    .local v13, "gotPath":Z
    const/4 v14, 0x0

    .line 206
    .local v14, "gotQuery":Z
    const/4 v15, 0x0

    .line 208
    .local v15, "gotUrl":Z
    move-object/from16 v0, v20

    array-length v6, v0

    .line 209
    .local v6, "count":I
    new-array v0, v6, [Lretrofit/RequestBuilderAction;

    move-object/from16 v30, v0

    .line 210
    .local v30, "requestBuilderActions":[Lretrofit/RequestBuilderAction;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v6, :cond_20

    .line 211
    aget-object v22, v23, v18

    .line 212
    .local v22, "methodParameterType":Ljava/lang/reflect/Type;
    aget-object v21, v20, v18

    .line 213
    .local v21, "methodParameterAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v21, :cond_1e

    .line 214
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    const/16 v31, 0x0

    :goto_1
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    aget-object v19, v21, v31

    .line 215
    .local v19, "methodParameterAnnotation":Ljava/lang/annotation/Annotation;
    const/4 v4, 0x0

    .line 216
    .local v4, "action":Lretrofit/RequestBuilderAction;
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/Url;

    move/from16 v33, v0

    if-eqz v33, :cond_6

    .line 217
    if-eqz v15, :cond_0

    .line 218
    const-string v31, "Multiple @Url method annotations found."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 220
    :cond_0
    if-eqz v13, :cond_1

    .line 221
    const-string v31, "@Path parameters may not be used with @Url."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 223
    :cond_1
    if-eqz v14, :cond_2

    .line 224
    const-string v31, "A @Url parameter must not come after a @Query"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 226
    :cond_2
    const-class v33, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3

    .line 227
    const-string v31, "@Url must be String type."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 229
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_4

    .line 230
    const-string v31, "@Url cannot be used with @%s URL"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 232
    :cond_4
    const/4 v15, 0x1

    .line 233
    new-instance v4, Lretrofit/RequestBuilderAction$Url;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-direct {v4}, Lretrofit/RequestBuilderAction$Url;-><init>()V

    .line 341
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    :cond_5
    :goto_2
    if-eqz v4, :cond_1d

    .line 342
    aget-object v33, v30, v18

    if-eqz v33, :cond_1c

    .line 343
    const-string v31, "Multiple Retrofit annotations found, only one allowed."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 235
    :cond_6
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/Path;

    move/from16 v33, v0

    if-eqz v33, :cond_a

    .line 236
    if-eqz v14, :cond_7

    .line 237
    const-string v31, "A @Path parameter must not come after a @Query."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 239
    :cond_7
    if-eqz v15, :cond_8

    .line 240
    const-string v31, "@Path parameters may not be used with @Url."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 242
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    if-nez v33, :cond_9

    .line 243
    const-string v31, "@Path can only be used with relative url on @%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 246
    :cond_9
    const/4 v13, 0x1

    move-object/from16 v27, v19

    .line 248
    check-cast v27, Lretrofit/http/Path;

    .line 249
    .local v27, "path":Lretrofit/http/Path;
    invoke-interface/range {v27 .. v27}, Lretrofit/http/Path;->value()Ljava/lang/String;

    move-result-object v24

    .line 250
    .local v24, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lretrofit/RequestFactoryParser;->validatePathName(ILjava/lang/String;)V

    .line 251
    new-instance v4, Lretrofit/RequestBuilderAction$Path;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-interface/range {v27 .. v27}, Lretrofit/http/Path;->encoded()Z

    move-result v33

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-direct {v4, v0, v1}, Lretrofit/RequestBuilderAction$Path;-><init>(Ljava/lang/String;Z)V

    .line 253
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    goto/16 :goto_2

    .end local v24    # "name":Ljava/lang/String;
    .end local v27    # "path":Lretrofit/http/Path;
    :cond_a
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/Query;

    move/from16 v33, v0

    if-eqz v33, :cond_b

    move-object/from16 v28, v19

    .line 254
    check-cast v28, Lretrofit/http/Query;

    .line 255
    .local v28, "query":Lretrofit/http/Query;
    new-instance v4, Lretrofit/RequestBuilderAction$Query;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-interface/range {v28 .. v28}, Lretrofit/http/Query;->value()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v28 .. v28}, Lretrofit/http/Query;->encoded()Z

    move-result v34

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v4, v0, v1}, Lretrofit/RequestBuilderAction$Query;-><init>(Ljava/lang/String;Z)V

    .line 256
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    const/4 v14, 0x1

    .line 258
    goto/16 :goto_2

    .end local v28    # "query":Lretrofit/http/Query;
    :cond_b
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/QueryMap;

    move/from16 v33, v0

    if-eqz v33, :cond_d

    .line 259
    const-class v33, Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v33

    if-nez v33, :cond_c

    .line 260
    const-string v31, "@QueryMap parameter type must be Map."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    :cond_c
    move-object/from16 v29, v19

    .line 262
    check-cast v29, Lretrofit/http/QueryMap;

    .line 263
    .local v29, "queryMap":Lretrofit/http/QueryMap;
    new-instance v4, Lretrofit/RequestBuilderAction$QueryMap;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-interface/range {v29 .. v29}, Lretrofit/http/QueryMap;->encoded()Z

    move-result v33

    move/from16 v0, v33

    invoke-direct {v4, v0}, Lretrofit/RequestBuilderAction$QueryMap;-><init>(Z)V

    .line 265
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    goto/16 :goto_2

    .end local v29    # "queryMap":Lretrofit/http/QueryMap;
    :cond_d
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/Header;

    move/from16 v33, v0

    if-eqz v33, :cond_e

    move-object/from16 v16, v19

    .line 266
    check-cast v16, Lretrofit/http/Header;

    .line 267
    .local v16, "header":Lretrofit/http/Header;
    new-instance v4, Lretrofit/RequestBuilderAction$Header;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-interface/range {v16 .. v16}, Lretrofit/http/Header;->value()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Lretrofit/RequestBuilderAction$Header;-><init>(Ljava/lang/String;)V

    .line 269
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    goto/16 :goto_2

    .end local v16    # "header":Lretrofit/http/Header;
    :cond_e
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/Field;

    move/from16 v33, v0

    if-eqz v33, :cond_10

    .line 270
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    move/from16 v33, v0

    if-nez v33, :cond_f

    .line 271
    const-string v31, "@Field parameters can only be used with form encoding."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    :cond_f
    move-object/from16 v8, v19

    .line 273
    check-cast v8, Lretrofit/http/Field;

    .line 274
    .local v8, "field":Lretrofit/http/Field;
    new-instance v4, Lretrofit/RequestBuilderAction$Field;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-interface {v8}, Lretrofit/http/Field;->value()Ljava/lang/String;

    move-result-object v33

    invoke-interface {v8}, Lretrofit/http/Field;->encoded()Z

    move-result v34

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-direct {v4, v0, v1}, Lretrofit/RequestBuilderAction$Field;-><init>(Ljava/lang/String;Z)V

    .line 275
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    const/4 v11, 0x1

    .line 277
    goto/16 :goto_2

    .end local v8    # "field":Lretrofit/http/Field;
    :cond_10
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/FieldMap;

    move/from16 v33, v0

    if-eqz v33, :cond_13

    .line 278
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    move/from16 v33, v0

    if-nez v33, :cond_11

    .line 279
    const-string v31, "@FieldMap parameters can only be used with form encoding."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 281
    :cond_11
    const-class v33, Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v33

    if-nez v33, :cond_12

    .line 282
    const-string v31, "@FieldMap parameter type must be Map."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    :cond_12
    move-object/from16 v9, v19

    .line 284
    check-cast v9, Lretrofit/http/FieldMap;

    .line 285
    .local v9, "fieldMap":Lretrofit/http/FieldMap;
    new-instance v4, Lretrofit/RequestBuilderAction$FieldMap;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-interface {v9}, Lretrofit/http/FieldMap;->encoded()Z

    move-result v33

    move/from16 v0, v33

    invoke-direct {v4, v0}, Lretrofit/RequestBuilderAction$FieldMap;-><init>(Z)V

    .line 286
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    const/4 v11, 0x1

    .line 288
    goto/16 :goto_2

    .end local v9    # "fieldMap":Lretrofit/http/FieldMap;
    :cond_13
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/Part;

    move/from16 v33, v0

    if-eqz v33, :cond_15

    .line 289
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    move/from16 v33, v0

    if-nez v33, :cond_14

    .line 290
    const-string v31, "@Part parameters can only be used with multipart encoding."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    :cond_14
    move-object/from16 v25, v19

    .line 292
    check-cast v25, Lretrofit/http/Part;

    .line 293
    .local v25, "part":Lretrofit/http/Part;
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "Content-Disposition"

    aput-object v35, v33, v34

    const/16 v34, 0x1

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "form-data; name=\""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 294
    invoke-interface/range {v25 .. v25}, Lretrofit/http/Part;->value()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "\""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    const-string v35, "Content-Transfer-Encoding"

    aput-object v35, v33, v34

    const/16 v34, 0x3

    .line 295
    invoke-interface/range {v25 .. v25}, Lretrofit/http/Part;->encoding()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    .line 293
    invoke-static/range {v33 .. v33}, Lcom/squareup/okhttp/Headers;->of([Ljava/lang/String;)Lcom/squareup/okhttp/Headers;

    move-result-object v17

    .line 299
    .local v17, "headers":Lcom/squareup/okhttp/Headers;
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lretrofit/Retrofit;->requestConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 304
    .local v5, "converter":Lretrofit/Converter;, "Lretrofit/Converter<*Lcom/squareup/okhttp/RequestBody;>;"
    new-instance v4, Lretrofit/RequestBuilderAction$Part;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    move-object/from16 v0, v17

    invoke-direct {v4, v0, v5}, Lretrofit/RequestBuilderAction$Part;-><init>(Lcom/squareup/okhttp/Headers;Lretrofit/Converter;)V

    .line 305
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    const/4 v12, 0x1

    .line 307
    goto/16 :goto_2

    .line 300
    .end local v5    # "converter":Lretrofit/Converter;, "Lretrofit/Converter<*Lcom/squareup/okhttp/RequestBody;>;"
    :catch_0
    move-exception v7

    .line 301
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v31, "Unable to create @Part converter for %s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v22, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v7, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 307
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "headers":Lcom/squareup/okhttp/Headers;
    .end local v25    # "part":Lretrofit/http/Part;
    :cond_15
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/PartMap;

    move/from16 v33, v0

    if-eqz v33, :cond_18

    .line 308
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    move/from16 v33, v0

    if-nez v33, :cond_16

    .line 309
    const-string v31, "@PartMap parameters can only be used with multipart encoding."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 312
    :cond_16
    const-class v33, Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v33

    if-nez v33, :cond_17

    .line 313
    const-string v31, "@PartMap parameter type must be Map."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    :cond_17
    move-object/from16 v26, v19

    .line 315
    check-cast v26, Lretrofit/http/PartMap;

    .line 316
    .local v26, "partMap":Lretrofit/http/PartMap;
    new-instance v4, Lretrofit/RequestBuilderAction$PartMap;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-interface/range {v26 .. v26}, Lretrofit/http/PartMap;->encoding()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    invoke-direct {v4, v0, v1, v2}, Lretrofit/RequestBuilderAction$PartMap;-><init>(Lretrofit/Retrofit;Ljava/lang/String;[Ljava/lang/annotation/Annotation;)V

    .line 318
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    const/4 v12, 0x1

    .line 320
    goto/16 :goto_2

    .end local v26    # "partMap":Lretrofit/http/PartMap;
    :cond_18
    move-object/from16 v0, v19

    instance-of v0, v0, Lretrofit/http/Body;

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    move/from16 v33, v0

    if-nez v33, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 322
    :cond_19
    const-string v31, "@Body parameters cannot be used with form or multi-part encoding."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 325
    :cond_1a
    if-eqz v10, :cond_1b

    .line 326
    const-string v31, "Multiple @Body method annotations found."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 332
    :cond_1b
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lretrofit/Retrofit;->requestConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 337
    .restart local v5    # "converter":Lretrofit/Converter;, "Lretrofit/Converter<*Lcom/squareup/okhttp/RequestBody;>;"
    new-instance v4, Lretrofit/RequestBuilderAction$Body;

    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    invoke-direct {v4, v5}, Lretrofit/RequestBuilderAction$Body;-><init>(Lretrofit/Converter;)V

    .line 338
    .restart local v4    # "action":Lretrofit/RequestBuilderAction;
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 333
    .end local v5    # "converter":Lretrofit/Converter;, "Lretrofit/Converter<*Lcom/squareup/okhttp/RequestBody;>;"
    :catch_1
    move-exception v7

    .line 334
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    const-string v31, "Unable to create @Body converter for %s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v22, v32, v33

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v7, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 345
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_1c
    aput-object v4, v30, v18

    .line 214
    :cond_1d
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_1

    .line 350
    .end local v4    # "action":Lretrofit/RequestBuilderAction;
    .end local v19    # "methodParameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1e
    aget-object v31, v30, v18

    if-nez v31, :cond_1f

    .line 351
    const-string v31, "No Retrofit annotation found."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 210
    :cond_1f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 355
    .end local v21    # "methodParameterAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v22    # "methodParameterType":Ljava/lang/reflect/Type;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    move-object/from16 v31, v0

    if-nez v31, :cond_21

    if-nez v15, :cond_21

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    const-string v32, "Missing either @%s URL or @Url parameter."

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    move-object/from16 v35, v0

    aput-object v35, v33, v34

    invoke-static/range {v31 .. v33}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 358
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    move/from16 v31, v0

    if-nez v31, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    move/from16 v31, v0

    if-nez v31, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->hasBody:Z

    move/from16 v31, v0

    if-nez v31, :cond_22

    if-eqz v10, :cond_22

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    const-string v32, "Non-body HTTP method cannot contain @Body."

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-static/range {v31 .. v33}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 361
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    move/from16 v31, v0

    if-eqz v31, :cond_23

    if-nez v11, :cond_23

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    const-string v32, "Form-encoded method must contain at least one @Field."

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-static/range {v31 .. v33}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 364
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    move/from16 v31, v0

    if-eqz v31, :cond_24

    if-nez v12, :cond_24

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lretrofit/RequestFactoryParser;->method:Ljava/lang/reflect/Method;

    move-object/from16 v31, v0

    const-string v32, "Multipart method must contain at least one @Part."

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    invoke-static/range {v31 .. v33}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v31

    throw v31

    .line 368
    :cond_24
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lretrofit/RequestFactoryParser;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    .line 369
    return-void
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    sget-object v2, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 388
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 389
    .local v1, "patterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    :cond_0
    return-object v1
.end method

.method private toRequestFactory(Lretrofit/BaseUrl;)Lretrofit/RequestFactory;
    .locals 10
    .param p1, "baseUrl"    # Lretrofit/BaseUrl;

    .prologue
    .line 82
    new-instance v0, Lretrofit/RequestFactory;

    iget-object v1, p0, Lretrofit/RequestFactoryParser;->httpMethod:Ljava/lang/String;

    iget-object v3, p0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    iget-object v4, p0, Lretrofit/RequestFactoryParser;->headers:Lcom/squareup/okhttp/Headers;

    iget-object v5, p0, Lretrofit/RequestFactoryParser;->contentType:Lcom/squareup/okhttp/MediaType;

    iget-boolean v6, p0, Lretrofit/RequestFactoryParser;->hasBody:Z

    iget-boolean v7, p0, Lretrofit/RequestFactoryParser;->isFormEncoded:Z

    iget-boolean v8, p0, Lretrofit/RequestFactoryParser;->isMultipart:Z

    iget-object v9, p0, Lretrofit/RequestFactoryParser;->requestBuilderActions:[Lretrofit/RequestBuilderAction;

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lretrofit/RequestFactory;-><init>(Ljava/lang/String;Lretrofit/BaseUrl;Ljava/lang/String;Lcom/squareup/okhttp/Headers;Lcom/squareup/okhttp/MediaType;ZZZ[Lretrofit/RequestBuilderAction;)V

    return-object v0
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 372
    sget-object v0, Lretrofit/RequestFactoryParser;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "@Path parameter name must match %s. Found: %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lretrofit/RequestFactoryParser;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 374
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 373
    invoke-direct {p0, p1, v0, v1}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 377
    :cond_0
    iget-object v0, p0, Lretrofit/RequestFactoryParser;->relativeUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit/RequestFactoryParser;->relativeUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lretrofit/RequestFactoryParser;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 380
    :cond_1
    return-void
.end method
