.class public Lco/kr/festfive/service/MapClient;
.super Ljava/lang/Object;
.source "MapClient.java"


# static fields
.field private static PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

.field public static client:Lretrofit/Retrofit;

.field public static okClient:Lcom/squareup/okhttp/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lco/kr/festfive/service/MapClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Lco/kr/festfive/service/MapClient;->getRestClient()Lretrofit/Retrofit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/service/FestInterface;

    sput-object v0, Lco/kr/festfive/service/MapClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

    .line 89
    return-void
.end method

.method public static getRestClient()Lretrofit/Retrofit;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lco/kr/festfive/service/MapClient;->client:Lretrofit/Retrofit;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lco/kr/festfive/service/MapClient;->initRestClient()V

    .line 84
    :cond_0
    sget-object v0, Lco/kr/festfive/service/MapClient;->client:Lretrofit/Retrofit;

    return-object v0
.end method

.method public static getService()Lco/kr/festfive/service/FestInterface;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lco/kr/festfive/service/MapClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

    if-nez v0, :cond_0

    .line 93
    const-class v0, Lco/kr/festfive/service/FestInterface;

    invoke-static {v0}, Lco/kr/festfive/service/MapClient;->createService(Ljava/lang/Class;)V

    .line 94
    :cond_0
    sget-object v0, Lco/kr/festfive/service/MapClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

    return-object v0
.end method

.method public static initRestClient()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1e

    .line 40
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 41
    .local v2, "okClient":Lcom/squareup/okhttp/OkHttpClient;
    const-string v5, ""

    .line 42
    .local v5, "userId":Ljava/lang/String;
    const-string v3, ""

    .line 44
    .local v3, "password":Ljava/lang/String;
    const/4 v4, 0x0

    .line 45
    .local v4, "psaPreferenceManager":Lco/kr/festfive/manager/FestPreferenceManager;
    if-eqz v4, :cond_0

    .line 46
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    .line 51
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "credentials":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Basic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "basic":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lco/kr/festfive/service/MapClient$1;

    invoke-direct {v7, v0}, Lco/kr/festfive/service/MapClient$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 69
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 70
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 75
    new-instance v6, Lretrofit/Retrofit$Builder;

    invoke-direct {v6}, Lretrofit/Retrofit$Builder;-><init>()V

    const-string v7, "http://maps.googleapis.com"

    .line 76
    invoke-virtual {v6, v7}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v6

    .line 77
    invoke-virtual {v6, v2}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v6

    .line 78
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v6

    sput-object v6, Lco/kr/festfive/service/MapClient;->client:Lretrofit/Retrofit;

    .line 80
    return-void
.end method
