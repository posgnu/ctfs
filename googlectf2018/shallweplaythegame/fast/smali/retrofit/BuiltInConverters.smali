.class final Lretrofit/BuiltInConverters;
.super Lretrofit/Converter$Factory;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;,
        Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;,
        Lretrofit/BuiltInConverters$VoidConverter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lretrofit/Converter$Factory;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public fromResponseBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 30
    const-class v1, Lcom/squareup/okhttp/ResponseBody;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-class v1, Lretrofit/http/Streaming;

    invoke-static {p2, v1}, Lretrofit/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v0

    .line 32
    .local v0, "isStreaming":Z
    new-instance v1, Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;

    invoke-direct {v1, v0}, Lretrofit/BuiltInConverters$OkHttpResponseBodyConverter;-><init>(Z)V

    .line 37
    .end local v0    # "isStreaming":Z
    :goto_0
    return-object v1

    .line 34
    :cond_0
    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    new-instance v1, Lretrofit/BuiltInConverters$VoidConverter;

    invoke-direct {v1}, Lretrofit/BuiltInConverters$VoidConverter;-><init>()V

    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter",
            "<*",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v0, Lcom/squareup/okhttp/RequestBody;

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;

    invoke-direct {v0}, Lretrofit/BuiltInConverters$OkHttpRequestBodyConverter;-><init>()V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
