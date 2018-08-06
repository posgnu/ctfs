.class public abstract Lcom/sendbird/android/shadow/okhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lcom/sendbird/android/shadow/okhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract addLenient(Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lcom/sendbird/android/shadow/okhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract callEngineGetStreamAllocation(Lcom/sendbird/android/shadow/okhttp3/Call;)Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;
.end method

.method public abstract callEnqueue(Lcom/sendbird/android/shadow/okhttp3/Call;Lcom/sendbird/android/shadow/okhttp3/Callback;Z)V
.end method

.method public abstract connectionBecameIdle(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)Z
.end method

.method public abstract get(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/Address;Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;)Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
.end method

.method public abstract getHttpUrlChecked(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract internalCache(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;)Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;
.end method

.method public abstract put(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;)V
.end method

.method public abstract routeDatabase(Lcom/sendbird/android/shadow/okhttp3/ConnectionPool;)Lcom/sendbird/android/shadow/okhttp3/internal/RouteDatabase;
.end method

.method public abstract setCache(Lcom/sendbird/android/shadow/okhttp3/OkHttpClient$Builder;Lcom/sendbird/android/shadow/okhttp3/internal/InternalCache;)V
.end method
