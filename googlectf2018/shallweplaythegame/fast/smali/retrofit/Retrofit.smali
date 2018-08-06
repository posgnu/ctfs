.class public final Lretrofit/Retrofit;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/Retrofit$Builder;
    }
.end annotation


# instance fields
.field private final adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final baseUrl:Lretrofit/BaseUrl;

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field private final converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final methodHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lretrofit/MethodHandler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final validateEagerly:Z


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lretrofit/BaseUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "baseUrl"    # Lretrofit/BaseUrl;
    .param p5, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .param p6, "validateEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/OkHttpClient;",
            "Lretrofit/BaseUrl;",
            "Ljava/util/List",
            "<",
            "Lretrofit/Converter$Factory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lretrofit/CallAdapter$Factory;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p3, "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit/Converter$Factory;>;"
    .local p4, "adapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit/CallAdapter$Factory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lretrofit/Retrofit;->methodHandlerCache:Ljava/util/Map;

    .line 104
    iput-object p1, p0, Lretrofit/Retrofit;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 105
    iput-object p2, p0, Lretrofit/Retrofit;->baseUrl:Lretrofit/BaseUrl;

    .line 106
    iput-object p3, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    .line 107
    iput-object p4, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    .line 108
    iput-object p5, p0, Lretrofit/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 109
    iput-boolean p6, p0, Lretrofit/Retrofit;->validateEagerly:Z

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lretrofit/BaseUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;ZLretrofit/Retrofit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "x1"    # Lretrofit/BaseUrl;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Ljava/util/List;
    .param p5, "x4"    # Ljava/util/concurrent/Executor;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lretrofit/Retrofit$1;

    .prologue
    .line 91
    invoke-direct/range {p0 .. p6}, Lretrofit/Retrofit;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lretrofit/BaseUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method private eagerlyValidateMethods(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v1

    .line 139
    .local v1, "platform":Lretrofit/Platform;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 140
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v0}, Lretrofit/Platform;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    invoke-virtual {p0, v0}, Lretrofit/Retrofit;->loadMethodHandler(Ljava/lang/reflect/Method;)Lretrofit/MethodHandler;

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    return-void
.end method


# virtual methods
.method public baseUrl()Lretrofit/BaseUrl;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lretrofit/Retrofit;->baseUrl:Lretrofit/BaseUrl;

    return-object v0
.end method

.method public callAdapter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/CallAdapter;
    .locals 1
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/CallAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lretrofit/Retrofit;->nextCallAdapter(Lretrofit/CallAdapter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/CallAdapter;

    move-result-object v0

    return-object v0
.end method

.method public callAdapterFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit/CallAdapter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public callbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lretrofit/Retrofit;->callbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public client()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lretrofit/Retrofit;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-object v0
.end method

.method public converterFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lretrofit/Converter$Factory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lretrofit/Utils;->validateServiceInterface(Ljava/lang/Class;)V

    .line 116
    iget-boolean v0, p0, Lretrofit/Retrofit;->validateEagerly:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lretrofit/Retrofit;->eagerlyValidateMethods(Ljava/lang/Class;)V

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lretrofit/Retrofit$1;

    invoke-direct {v2, p0, p1}, Lretrofit/Retrofit$1;-><init>(Lretrofit/Retrofit;Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method loadMethodHandler(Ljava/lang/reflect/Method;)Lretrofit/MethodHandler;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lretrofit/MethodHandler",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v2, p0, Lretrofit/Retrofit;->methodHandlerCache:Ljava/util/Map;

    monitor-enter v2

    .line 149
    :try_start_0
    iget-object v1, p0, Lretrofit/Retrofit;->methodHandlerCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/MethodHandler;

    .line 150
    .local v0, "handler":Lretrofit/MethodHandler;, "Lretrofit/MethodHandler<*>;"
    if-nez v0, :cond_0

    .line 151
    invoke-static {p0, p1}, Lretrofit/MethodHandler;->create(Lretrofit/Retrofit;Ljava/lang/reflect/Method;)Lretrofit/MethodHandler;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lretrofit/Retrofit;->methodHandlerCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    monitor-exit v2

    .line 155
    return-object v0

    .line 154
    .end local v0    # "handler":Lretrofit/MethodHandler;, "Lretrofit/MethodHandler<*>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public nextCallAdapter(Lretrofit/CallAdapter$Factory;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/CallAdapter;
    .locals 7
    .param p1, "skipPast"    # Lretrofit/CallAdapter$Factory;
    .param p2, "returnType"    # Ljava/lang/reflect/Type;
    .param p3, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/CallAdapter$Factory;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/CallAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 184
    const-string v5, "returnType == null"

    invoke-static {p2, v5}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    const-string v5, "annotations == null"

    invoke-static {p3, v5}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    iget-object v5, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 188
    .local v4, "start":I
    move v3, v4

    .local v3, "i":I
    iget-object v5, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 189
    iget-object v5, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit/CallAdapter$Factory;

    invoke-interface {v5, p2, p3, p0}, Lretrofit/CallAdapter$Factory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit/Retrofit;)Lretrofit/CallAdapter;

    move-result-object v0

    .line 190
    .local v0, "adapter":Lretrofit/CallAdapter;, "Lretrofit/CallAdapter<*>;"
    if-eqz v0, :cond_0

    .line 191
    return-object v0

    .line 188
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "adapter":Lretrofit/CallAdapter;, "Lretrofit/CallAdapter<*>;"
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not locate call adapter for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Tried:"

    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    .local v1, "builder":Ljava/lang/StringBuilder;
    move v3, v4

    iget-object v5, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v3, v2, :cond_2

    .line 199
    const-string v5, "\n * "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit/CallAdapter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    :cond_2
    if-eqz p1, :cond_3

    .line 202
    const-string v5, "\nSkipped:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    .line 204
    const-string v5, "\n * "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lretrofit/Retrofit;->adapterFactories:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit/CallAdapter$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 207
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public requestConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter",
            "<TT;",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const-string v5, "type == null"

    invoke-static {p1, v5}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    const-string v5, "annotations == null"

    invoke-static {p2, v5}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 226
    iget-object v5, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    .line 227
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit/Converter$Factory;

    invoke-virtual {v5, p1, p2}, Lretrofit/Converter$Factory;->toRequestBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v1

    .line 228
    .local v1, "converter":Lretrofit/Converter;, "Lretrofit/Converter<*Lcom/squareup/okhttp/RequestBody;>;"
    if-eqz v1, :cond_0

    .line 230
    return-object v1

    .line 225
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "converter":Lretrofit/Converter;, "Lretrofit/Converter<*Lcom/squareup/okhttp/RequestBody;>;"
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not locate RequestBody converter for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Tried:"

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit/Converter$Factory;

    .line 238
    .local v2, "converterFactory":Lretrofit/Converter$Factory;
    const-string v6, "\n * "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    .end local v2    # "converterFactory":Lretrofit/Converter$Factory;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public responseConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lretrofit/Converter",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 248
    const-string v5, "type == null"

    invoke-static {p1, v5}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    const-string v5, "annotations == null"

    invoke-static {p2, v5}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 252
    iget-object v5, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    .line 253
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lretrofit/Converter$Factory;

    invoke-virtual {v5, p1, p2}, Lretrofit/Converter$Factory;->fromResponseBody(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit/Converter;

    move-result-object v1

    .line 254
    .local v1, "converter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;*>;"
    if-eqz v1, :cond_0

    .line 256
    return-object v1

    .line 251
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "converter":Lretrofit/Converter;, "Lretrofit/Converter<Lcom/squareup/okhttp/ResponseBody;*>;"
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not locate ResponseBody converter for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Tried:"

    .line 262
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 263
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lretrofit/Retrofit;->converterFactories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit/Converter$Factory;

    .line 264
    .local v2, "converterFactory":Lretrofit/Converter$Factory;
    const-string v6, "\n * "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    .end local v2    # "converterFactory":Lretrofit/Converter$Factory;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
