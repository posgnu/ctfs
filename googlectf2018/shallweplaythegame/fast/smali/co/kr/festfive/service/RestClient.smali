.class public Lco/kr/festfive/service/RestClient;
.super Ljava/lang/Object;
.source "RestClient.java"


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

    sput-object v0, Lco/kr/festfive/service/RestClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

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
    .line 74
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    invoke-static {}, Lco/kr/festfive/service/RestClient;->getRestClient()Lretrofit/Retrofit;

    move-result-object v0

    invoke-virtual {v0, p0}, Lretrofit/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/kr/festfive/service/FestInterface;

    sput-object v0, Lco/kr/festfive/service/RestClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

    .line 75
    return-void
.end method

.method public static getRestClient()Lretrofit/Retrofit;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lco/kr/festfive/service/RestClient;->client:Lretrofit/Retrofit;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lco/kr/festfive/service/RestClient;->initRestClient()V

    .line 70
    :cond_0
    sget-object v0, Lco/kr/festfive/service/RestClient;->client:Lretrofit/Retrofit;

    return-object v0
.end method

.method public static getService()Lco/kr/festfive/service/FestInterface;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lco/kr/festfive/service/RestClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

    if-nez v0, :cond_0

    .line 79
    const-class v0, Lco/kr/festfive/service/FestInterface;

    invoke-static {v0}, Lco/kr/festfive/service/RestClient;->createService(Ljava/lang/Class;)V

    .line 80
    :cond_0
    sget-object v0, Lco/kr/festfive/service/RestClient;->PSA_INTERFACE:Lco/kr/festfive/service/FestInterface;

    return-object v0
.end method

.method public static initRestClient()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1e

    .line 28
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 29
    .local v2, "okClient":Lcom/squareup/okhttp/OkHttpClient;
    const-string v5, ""

    .line 30
    .local v5, "userId":Ljava/lang/String;
    const-string v3, ""

    .line 32
    .local v3, "password":Ljava/lang/String;
    invoke-static {}, Lco/kr/festfive/FestManager;->getInstance()Lco/kr/festfive/FestManager;

    move-result-object v6

    invoke-virtual {v6}, Lco/kr/festfive/FestManager;->getFestPreferenceManager()Lco/kr/festfive/manager/FestPreferenceManager;

    move-result-object v4

    .line 33
    .local v4, "psaPreferenceManager":Lco/kr/festfive/manager/FestPreferenceManager;
    if-eqz v4, :cond_0

    .line 34
    const-string v6, "user_id"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    const-string v6, "user_pw"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Lco/kr/festfive/manager/FestPreferenceManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    :cond_0
    move-object v1, v5

    .line 39
    .local v1, "credentials":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Basic "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "basic":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lco/kr/festfive/service/RestClient$1;

    invoke-direct {v7, v0}, Lco/kr/festfive/service/RestClient$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 58
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 59
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10, v11, v6}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 61
    new-instance v6, Lretrofit/Retrofit$Builder;

    invoke-direct {v6}, Lretrofit/Retrofit$Builder;-><init>()V

    const-string v7, "http://api.fivehouse.co.kr"

    .line 62
    invoke-virtual {v6, v7}, Lretrofit/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit/Retrofit$Builder;

    move-result-object v6

    .line 63
    invoke-virtual {v6, v2}, Lretrofit/Retrofit$Builder;->client(Lcom/squareup/okhttp/OkHttpClient;)Lretrofit/Retrofit$Builder;

    move-result-object v6

    .line 64
    invoke-static {}, Lretrofit/GsonConverterFactory;->create()Lretrofit/GsonConverterFactory;

    move-result-object v7

    invoke-virtual {v6, v7}, Lretrofit/Retrofit$Builder;->addConverterFactory(Lretrofit/Converter$Factory;)Lretrofit/Retrofit$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lretrofit/Retrofit$Builder;->build()Lretrofit/Retrofit;

    move-result-object v6

    sput-object v6, Lco/kr/festfive/service/RestClient;->client:Lretrofit/Retrofit;

    .line 66
    return-void
.end method
