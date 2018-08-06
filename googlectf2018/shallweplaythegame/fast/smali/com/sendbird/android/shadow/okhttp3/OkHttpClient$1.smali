.class final Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$1;
.super Lcom/sendbird/android/shadow/okhttp3/internal/Internal;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/Internal;-><init>()V

    return-void
.end method


# virtual methods
.method public addLenient(Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p1, p2}, Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;

    .line 81
    return-void
.end method

.method public addLenient(Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "builder"    # Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p1, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;->addLenient(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;

    .line 85
    return-void
.end method

.method public apply(Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0
    .param p1, "tlsConfiguration"    # Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;
    .param p2, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p3, "isFallback"    # Z

    .prologue
    .line 124
    invoke-virtual {p1, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->apply(Ljavax/net/ssl/SSLSocket;Z)V

    .line 125
    return-void
.end method

.method public callEngineGetStreamAllocation(Lcom/sendbird/android/shadow/okhttp3/Call;)Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;
    .locals 1
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;

    .prologue
    .line 119
    check-cast p1, Lcom/sendbird/android/shadow/okhttp3/RealCall;

    .end local p1    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/RealCall;->engine:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->streamAllocation:Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    return-object v0
.end method

.method public callEnqueue(Lcom/sendbird/android/shadow/okhttp3/Call;Lcom/sendbird/android/shadow/okhttp3/Callback;Z)V
    .locals 0
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "responseCallback"    # Lcom/sendbird/android/shadow/okhttp3/Callback;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 115
    check-cast p1, Lcom/sendbird/android/shadow/okhttp3/RealCall;

    .end local p1    # "call":Lcom/sendbird/android/shadow/okhttp3/Call;
    invoke-virtual {p1, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/RealCall;->enqueue(Lcom/sendbird/android/shadow/okhttp3/Callback;Z)V

    .line 116
    return-void
.end method

.method public connectionBecameIdle(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)Z
    .locals 1
    .param p1, "pool"    # Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;
    .param p2, "connection"    # Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .prologue
    .line 97
    invoke-virtual {p1, p2}, Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;->connectionBecameIdle(Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)Z

    move-result v0

    return v0
.end method

.method public get(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/Address;Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
    .locals 1
    .param p1, "pool"    # Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;
    .param p2, "address"    # Lcom/sendbird/android/shadow/okhttp3/Address;
    .param p3, "streamAllocation"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    .prologue
    .line 102
    invoke-virtual {p1, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;->get(Lcom/sendbird/android/shadow/okhttp3/Address;Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public getHttpUrlChecked(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/HttpUrl;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p1}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->getChecked(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public internalCache(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;)Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;
    .locals 1
    .param p1, "client"    # Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->internalCache()Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V
    .locals 0
    .param p1, "pool"    # Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;
    .param p2, "connection"    # Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;

    .prologue
    .line 106
    invoke-virtual {p1, p2}, Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;->put(Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V

    .line 107
    return-void
.end method

.method public routeDatabase(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;)Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;
    .locals 1
    .param p1, "connectionPool"    # Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;

    .prologue
    .line 110
    iget-object v0, p1, Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;->routeDatabase:Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;

    return-object v0
.end method

.method public setCache(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;)V
    .locals 0
    .param p1, "builder"    # Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;
    .param p2, "internalCache"    # Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;

    .prologue
    .line 88
    invoke-virtual {p1, p2}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;->setInternalCache(Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;)V

    .line 89
    return-void
.end method
