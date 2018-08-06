.class public Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/sendbird/android/shadow/okhttp3/Call$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

.field final cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

.field final certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

.field final dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

.field final dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

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

.field final internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

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

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sendbird/android/shadow/okhttp3/Protocol;

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_2:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/Protocol;->SPDY_3:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_1_1:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->MODERN_TLS:Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    .local v0, "connSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;>;"
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->isCleartextTrafficPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->CLEARTEXT:Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 78
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$1;

    invoke-direct {v1}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$1;-><init>()V

    sput-object v1, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;->instance:Lcom/sendbird/android/shadow/okhttp3/internal/Internal;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;-><init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;)V

    .line 162
    return-void
.end method

.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    .line 166
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 167
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 168
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 169
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 170
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 171
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 172
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    .line 173
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    .line 174
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    .line 175
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "isTLS":Z
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;

    .line 179
    .local v1, "spec":Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;
    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->isTls()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 180
    :goto_1
    goto :goto_0

    .line 179
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 182
    .end local v1    # "spec":Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;
    :cond_2
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_3

    if-nez v0, :cond_4

    .line 183
    :cond_3
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 184
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    .line 191
    :goto_2
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 192
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v3, v4}, Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;->withCertificateChainCleaner(Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;)Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    move-result-object v3

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    .line 194
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 195
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    .line 196
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    .line 197
    iget-object v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

    .line 198
    iget-boolean v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->followSslRedirects:Z

    .line 199
    iget-boolean v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->followRedirects:Z

    .line 200
    iget-boolean v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 201
    iget v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectTimeout:I

    .line 202
    iget v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->readTimeout:I

    .line 203
    iget v3, p1, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->writeTimeout:I

    .line 204
    return-void

    .line 186
    :cond_4
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 187
    .local v2, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-direct {p0, v2}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 188
    invoke-static {v2}, Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v3

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->certificateChainCleaner:Lcom/sendbird/android/shadow/okhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .param p2, "x1"    # Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;-><init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    return-object v0
.end method

.method private systemDefaultSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 224
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 225
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 226
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 227
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private systemDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 6

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 210
    .local v1, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 211
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 212
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-nez v3, :cond_1

    .line 213
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected default trust managers:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 216
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v1    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v2    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v2, v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3
.end method


# virtual methods
.method public authenticator()Lcom/sendbird/android/shadow/okhttp3/Authenticator;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->authenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lcom/sendbird/android/shadow/okhttp3/Cache;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    return-object v0
.end method

.method public certificatePinner()Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->certificatePinner:Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectionPool:Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lcom/sendbird/android/shadow/okhttp3/CookieJar;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cookieJar:Lcom/sendbird/android/shadow/okhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lcom/sendbird/android/shadow/okhttp3/Dispatcher;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dispatcher:Lcom/sendbird/android/shadow/okhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lcom/sendbird/android/shadow/okhttp3/Dns;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->dns:Lcom/sendbird/android/shadow/okhttp3/Dns;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
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
    .line 329
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->cache:Lcom/sendbird/android/shadow/okhttp3/Cache;

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/Cache;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->internalCache:Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    goto :goto_0
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
    .line 338
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .locals 1

    .prologue
    .line 349
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;-><init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Call;
    .locals 1
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;

    .prologue
    .line 345
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/RealCall;

    invoke-direct {v0, p0, p1}, Lcom/sendbird/android/shadow/okhttp3/RealCall;-><init>(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;Lcom/sendbird/android/shadow/okhttp3/Request;)V

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lcom/sendbird/android/shadow/okhttp3/Authenticator;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxyAuthenticator:Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
