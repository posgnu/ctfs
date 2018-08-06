.class final Lretrofit/MethodHandler;
.super Ljava/lang/Object;
.source "MethodHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callAdapter:Lretrofit/CallAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/CallAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final requestFactory:Lretrofit/RequestFactory;

.field private final responseConverter:Lretrofit/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Converter",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final retrofit:Lretrofit/Retrofit;


# direct methods
.method private constructor <init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/CallAdapter;Lretrofit/Converter;)V
    .locals 0
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .param p2, "requestFactory"    # Lretrofit/RequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Retrofit;",
            "Lretrofit/RequestFactory;",
            "Lretrofit/CallAdapter",
            "<TT;>;",
            "Lretrofit/Converter",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lretrofit/MethodHandler;, "Lretrofit/MethodHandler<TT;>;"
    .local p3, "callAdapter":Lretrofit/CallAdapter;, "Lretrofit/CallAdapter<TT;>;"
    .local p4, "responseConverter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lretrofit/MethodHandler;->retrofit:Lretrofit/Retrofit;

    .line 69
    iput-object p2, p0, Lretrofit/MethodHandler;->requestFactory:Lretrofit/RequestFactory;

    .line 70
    iput-object p3, p0, Lretrofit/MethodHandler;->callAdapter:Lretrofit/CallAdapter;

    .line 71
    iput-object p4, p0, Lretrofit/MethodHandler;->responseConverter:Lretrofit/Converter;

    .line 72
    return-void
.end method

.method static create(Lretrofit/Retrofit;Ljava/lang/reflect/Method;)Lretrofit/MethodHandler;
    .locals 5
    .param p0, "retrofit"    # Lretrofit/Retrofit;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Retrofit;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit/MethodHandler",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p1, p0}, Lretrofit/MethodHandler;->createCallAdapter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;)Lretrofit/CallAdapter;

    move-result-object v0

    .line 27
    .local v0, "callAdapter":Lretrofit/CallAdapter;, "Lretrofit/CallAdapter<Ljava/lang/Object;>;"
    invoke-interface {v0}, Lretrofit/CallAdapter;->responseType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 29
    .local v3, "responseType":Ljava/lang/reflect/Type;
    invoke-static {p1, p0, v3}, Lretrofit/MethodHandler;->createResponseConverter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;Ljava/lang/reflect/Type;)Lretrofit/Converter;

    move-result-object v2

    .line 30
    .local v2, "responseConverter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;Ljava/lang/Object;>;"
    invoke-static {p1, v3, p0}, Lretrofit/RequestFactoryParser;->parse(Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Lretrofit/Retrofit;)Lretrofit/RequestFactory;

    move-result-object v1

    .line 31
    .local v1, "requestFactory":Lretrofit/RequestFactory;
    new-instance v4, Lretrofit/MethodHandler;

    invoke-direct {v4, p0, v1, v0, v2}, Lretrofit/MethodHandler;-><init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/CallAdapter;Lretrofit/Converter;)V

    return-object v4
.end method

.method private static createCallAdapter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;)Lretrofit/CallAdapter;
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/Retrofit;",
            ")",
            "Lretrofit/CallAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 36
    .local v2, "returnType":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lretrofit/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    const-string v3, "Method return type must not include a type variable or wildcard: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {p0, v3, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 40
    :cond_0
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 41
    const-string v3, "Service methods cannot return void."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lretrofit/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 43
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 45
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_0
    invoke-virtual {p1, v2, v0}, Lretrofit/Retrofit;->callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/CallAdapter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v3, "Unable to create call adapter for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v1, p0, v3, v4}, Lretrofit/Utils;->methodError(Ljava/lang/Throwable;Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private static createResponseConverter(Ljava/lang/reflect/Method;Lretrofit/Retrofit;Ljava/lang/reflect/Type;)Lretrofit/Converter;
    .locals 5
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "retrofit"    # Lretrofit/Retrofit;
    .param p2, "responseType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/Retrofit;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit/Converter",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 55
    .local v0, "annotations":[Ljava/lang/annotation/Annotation;
    :try_start_0
    invoke-virtual {p1, p2, v0}, Lretrofit/Retrofit;->responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "Unable to create converter for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, p0, v2, v3}, Lretrofit/Utils;->methodError(Ljava/lang/Throwable;Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 75
    .local p0, "this":Lretrofit/MethodHandler;, "Lretrofit/MethodHandler<TT;>;"
    iget-object v0, p0, Lretrofit/MethodHandler;->callAdapter:Lretrofit/CallAdapter;

    new-instance v1, Lretrofit/OkHttpCall;

    iget-object v2, p0, Lretrofit/MethodHandler;->retrofit:Lretrofit/Retrofit;

    iget-object v3, p0, Lretrofit/MethodHandler;->requestFactory:Lretrofit/RequestFactory;

    iget-object v4, p0, Lretrofit/MethodHandler;->responseConverter:Lretrofit/Converter;

    invoke-direct {v1, v2, v3, v4, p1}, Lretrofit/OkHttpCall;-><init>(Lretrofit/Retrofit;Lretrofit/RequestFactory;Lretrofit/Converter;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lretrofit/CallAdapter;->adapt(Lretrofit/Call;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
