.class public final Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

.field cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

.field certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

.field certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

.field dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

.field dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;

.field proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 380
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    .line 381
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->access$000()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 382
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->access$100()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 383
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 384
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/CookieJar;->NO_COOKIES:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    .line 385
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 386
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/sendbird/android/shadow/okhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 387
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;->DEFAULT:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    .line 388
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/Authenticator;->NONE:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 389
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/Authenticator;->NONE:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 390
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    .line 391
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/Dns;->SYSTEM:Lcom/sendbird/android/shadow/okhttp3/Dns;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

    .line 392
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 393
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 394
    iput-boolean v1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 395
    iput v2, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 396
    iput v2, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 397
    iput v2, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 398
    return-void
.end method

.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;)V
    .locals 2
    .param p1, "okHttpClient"    # Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 401
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    .line 402
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 403
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 404
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 405
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 407
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 408
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    .line 409
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    .line 410
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    .line 411
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 412
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 413
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 414
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 415
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    .line 416
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 417
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 418
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    .line 419
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

    .line 420
    iget-boolean v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 421
    iget-boolean v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 422
    iget-boolean v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 423
    iget v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 424
    iget v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 425
    iget v0, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 426
    return-void
.end method


# virtual methods
.method public addInterceptor(Lcom/sendbird/android/shadow/okhttp3/Interceptor;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interceptor"    # Lcom/sendbird/android/shadow/okhttp3/Interceptor;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    return-object p0
.end method

.method public addNetworkInterceptor(Lcom/sendbird/android/shadow/okhttp3/Interceptor;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interceptor"    # Lcom/sendbird/android/shadow/okhttp3/Interceptor;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    return-object p0
.end method

.method public authenticator(Lcom/sendbird/android/shadow/okhttp3/Authenticator;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .prologue
    .line 633
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 635
    return-object p0
.end method

.method public build()Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
    .locals 2

    .prologue
    .line 788
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;-><init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$1;)V

    return-object v0
.end method

.method public cache(Lcom/sendbird/android/shadow/okhttp3/Cache;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "cache"    # Lcom/sendbird/android/shadow/okhttp3/Cache;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    .line 515
    return-object p0
.end method

.method public certificatePinner(Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "certificatePinner"    # Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    .prologue
    .line 621
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    .line 623
    return-object p0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 434
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 436
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 437
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 438
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 440
    return-object p0
.end method

.method public connectionPool(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    .prologue
    .line 656
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 657
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    .line 658
    return-object p0
.end method

.method public connectionSpecs(Ljava/util/List;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;",
            ">;)",
            "Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 755
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;>;"
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 756
    return-object p0
.end method

.method public cookieJar(Lcom/sendbird/android/shadow/okhttp3/CookieJar;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    .prologue
    .line 501
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    .line 503
    return-object p0
.end method

.method public dispatcher(Lcom/sendbird/android/shadow/okhttp3/Dispatcher;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    .prologue
    .line 705
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    .line 707
    return-object p0
.end method

.method public dns(Lcom/sendbird/android/shadow/okhttp3/Dns;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dns"    # Lcom/sendbird/android/shadow/okhttp3/Dns;

    .prologue
    .line 524
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

    .line 526
    return-object p0
.end method

.method public followRedirects(Z)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 674
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 675
    return-object p0
.end method

.method public followSslRedirects(Z)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 668
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 669
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 610
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 612
    return-object p0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public protocols(Ljava/util/List;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Protocol;",
            ">;)",
            "Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .prologue
    .line 740
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/Protocol;>;"
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 741
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_1_1:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_0
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_1_0:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_2
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 751
    return-object p0
.end method

.method public proxy(Ljava/net/Proxy;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 478
    return-object p0
.end method

.method public proxyAuthenticator(Lcom/sendbird/android/shadow/okhttp3/Authenticator;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .prologue
    .line 645
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 647
    return-object p0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 491
    return-object p0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 448
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 449
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 451
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 452
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 453
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 454
    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 698
    return-object p0
.end method

.method setInternalCache(Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    .line 510
    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 538
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_0
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 540
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 553
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "sslSocketFactory == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_0
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 555
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_1

    .line 556
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to extract the trust manager on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sslSocketFactory is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 559
    :cond_1
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 560
    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v1

    iput-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 561
    return-object p0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 596
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 599
    invoke-static {p2}, Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 600
    return-object p0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 462
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 465
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 466
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 467
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 468
    return-object p0
.end method
