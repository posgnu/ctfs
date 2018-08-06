.class public final Lretrofit/Retrofit$Builder;
.super Ljava/lang/Object;
.source "Retrofit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/Retrofit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adapterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/CallAdapter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private baseUrl:Lretrofit/BaseUrl;

.field private callbackExecutor:Ljava/util/concurrent/Executor;

.field private client:Lcom/squareup/okhttp/OkHttpClient;

.field private converterFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/Converter$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private validateEagerly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lretrofit/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    .line 290
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    new-instance v1, Lretrofit/BuiltInConverters;

    invoke-direct {v1}, Lretrofit/BuiltInConverters;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-void
.end method


# virtual methods
.method public addCallAdapterFactory(Lretrofit/CallAdapter$Factory;)Lretrofit/Retrofit$Builder;
    .locals 2
    .param p1, "factory"    # Lretrofit/CallAdapter$Factory;

    .prologue
    .line 335
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    const-string v1, "factory == null"

    invoke-static {p1, v1}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-object p0
.end method

.method public addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;
    .locals 2
    .param p1, "converterFactory"    # Lretrofit/Converter$Factory;

    .prologue
    .line 327
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    const-string v1, "converterFactory == null"

    invoke-static {p1, v1}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    return-object p0
.end method

.method public baseUrl(Lcom/squareup/okhttp/HttpUrl;)Lretrofit/Retrofit$Builder;
    .locals 1
    .param p1, "baseUrl"    # Lcom/squareup/okhttp/HttpUrl;

    .prologue
    .line 311
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    new-instance v0, Lretrofit/Retrofit$Builder$1;

    invoke-direct {v0, p0, p1}, Lretrofit/Retrofit$Builder$1;-><init>(Lretrofit/Retrofit$Builder;Lcom/squareup/okhttp/HttpUrl;)V

    invoke-virtual {p0, v0}, Lretrofit/Retrofit$Builder;->baseUrl(Lretrofit/BaseUrl;)Lretrofit/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;
    .locals 4
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v1, "baseUrl == null"

    invoke-static {p1, v1}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    invoke-static {p1}, Lcom/squareup/okhttp/HttpUrl;->parse(Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object v0

    .line 303
    .local v0, "httpUrl":Lcom/squareup/okhttp/HttpUrl;
    if-nez v0, :cond_0

    .line 304
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_0
    invoke-virtual {p0, v0}, Lretrofit/Retrofit$Builder;->baseUrl(Lcom/squareup/okhttp/HttpUrl;)Lretrofit/Retrofit$Builder;

    move-result-object v1

    return-object v1
.end method

.method public baseUrl(Lretrofit/BaseUrl;)Lretrofit/Retrofit$Builder;
    .locals 1
    .param p1, "baseUrl"    # Lretrofit/BaseUrl;

    .prologue
    .line 321
    const-string v0, "baseUrl == null"

    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/BaseUrl;

    iput-object v0, p0, Lretrofit/Retrofit$Builder;->baseUrl:Lretrofit/BaseUrl;

    .line 322
    return-object p0
.end method

.method public build()Lretrofit/Retrofit;
    .locals 8

    .prologue
    .line 359
    iget-object v0, p0, Lretrofit/Retrofit$Builder;->baseUrl:Lretrofit/BaseUrl;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Base URL required."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_0
    iget-object v1, p0, Lretrofit/Retrofit$Builder;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 364
    .local v1, "client":Lcom/squareup/okhttp/OkHttpClient;
    if-nez v1, :cond_1

    .line 365
    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    .end local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 369
    .restart local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit/Retrofit$Builder;->adapterFactories:Ljava/util/List;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    .local v4, "adapterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit/CallAdapter$Factory;>;"
    invoke-static {}, Lretrofit/Platform;->get()Lretrofit/Platform;

    move-result-object v0

    iget-object v2, p0, Lretrofit/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2}, Lretrofit/Platform;->defaultCallAdapterFactory(Ljava/util/concurrent/Executor;)Lretrofit/CallAdapter$Factory;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lretrofit/Retrofit$Builder;->converterFactories:Ljava/util/List;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 375
    .local v3, "converterFactories":Ljava/util/List;, "Ljava/util/List<Lretrofit/Converter$Factory;>;"
    new-instance v0, Lretrofit/Retrofit;

    iget-object v2, p0, Lretrofit/Retrofit$Builder;->baseUrl:Lretrofit/BaseUrl;

    iget-object v5, p0, Lretrofit/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v6, p0, Lretrofit/Retrofit$Builder;->validateEagerly:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lretrofit/Retrofit;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lretrofit/BaseUrl;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;ZLretrofit/Retrofit$1;)V

    return-object v0
.end method

.method public callbackExecutor(Ljava/util/concurrent/Executor;)Lretrofit/Retrofit$Builder;
    .locals 1
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 344
    const-string v0, "callbackExecutor == null"

    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lretrofit/Retrofit$Builder;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 345
    return-object p0
.end method

.method public client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;
    .locals 1
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 295
    const-string v0, "client == null"

    invoke-static {p1, v0}, Lretrofit/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/OkHttpClient;

    iput-object v0, p0, Lretrofit/Retrofit$Builder;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 296
    return-object p0
.end method

.method public validateEagerly()Lretrofit/Retrofit$Builder;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit/Retrofit$Builder;->validateEagerly:Z

    .line 354
    return-object p0
.end method
