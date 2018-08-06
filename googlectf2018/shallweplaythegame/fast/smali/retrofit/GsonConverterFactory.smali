.class public final Lretrofit/GsonConverterFactory;
.super Lretrofit/Converter$Factory;
.source "GsonConverterFactory.java"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 2
    .param p1, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 51
    invoke-direct {p0}, Lretrofit/Converter$Factory;-><init>()V

    .line 52
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lretrofit/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    .line 54
    return-void
.end method

.method public static create()Lretrofit/GsonConverterFactory;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lretrofit/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/gson/Gson;)Lretrofit/GsonConverterFactory;
    .locals 1
    .param p0, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 46
    new-instance v0, Lretrofit/GsonConverterFactory;

    invoke-direct {v0, p0}, Lretrofit/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
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
    .line 58
    new-instance v0, Lretrofit/GsonResponseBodyConverter;

    iget-object v1, p0, Lretrofit/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, p1}, Lretrofit/GsonResponseBodyConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
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
            "<*",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lretrofit/GsonRequestBodyConverter;

    iget-object v1, p0, Lretrofit/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, p1}, Lretrofit/GsonRequestBodyConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;)V

    return-object v0
.end method
