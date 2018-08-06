.class public final Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;
.super Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Connection;


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

.field private handshake:Lcom/sendbird/android/shadow/okhttp3/Handshake;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lcom/sendbird/android/shadow/okhttp3/Route;

.field public sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

.field public socket:Ljava/net/Socket;

.field public source:Lcom/sendbird/android/shadow/okio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/okhttp3/Route;)V
    .locals 2
    .param p1, "route"    # Lcom/sendbird/android/shadow/okhttp3/Route;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocations:Ljava/util/List;

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->idleAtNanos:J

    .line 89
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 90
    return-void
.end method

.method private buildConnection(IIILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V
    .locals 0
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->connectSocket(IIILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V

    .line 171
    invoke-direct {p0, p2, p3, p4}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->establishProtocol(IILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V

    .line 172
    return-void
.end method

.method private buildTunneledConnection(IIILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 142
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->createTunnelRequest()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v2

    .line 143
    .local v2, "tunnelRequest":Lcom/sendbird/android/shadow/okhttp3/Request;
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/Request;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v3

    .line 144
    .local v3, "url":Lcom/sendbird/android/shadow/okhttp3/HttpUrl;
    const/4 v0, 0x0

    .line 145
    .local v0, "attemptedConnections":I
    const/16 v1, 0x15

    .line 147
    .local v1, "maxAttempts":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    .line 148
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many tunnel connections attempted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 151
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->connectSocket(IIILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V

    .line 152
    invoke-direct {p0, p2, p3, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->createTunnel(IILcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/HttpUrl;)Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v2

    .line 154
    if-nez v2, :cond_1

    .line 164
    invoke-direct {p0, p2, p3, p4}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->establishProtocol(IILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V

    .line 165
    return-void

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 159
    iput-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 160
    iput-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 161
    iput-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    goto :goto_0
.end method

.method private connectSocket(IIILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    .line 177
    .local v2, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v0

    .line 179
    .local v0, "address":Lcom/sendbird/android/shadow/okhttp3/Address;
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_1

    .line 180
    :cond_0
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 183
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 185
    :try_start_0
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v3

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okio/Okio;->source(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v3

    invoke-static {v3}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v3

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 190
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v3

    invoke-static {v3}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Sink;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v3

    iput-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 191
    return-void

    .line 180
    :cond_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/net/ConnectException;
    new-instance v3, Ljava/net/ConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private connectTls(IILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V
    .locals 14
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v1

    .line 223
    .local v1, "address":Lcom/sendbird/android/shadow/okhttp3/Address;
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    .line 224
    .local v7, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v8, 0x0

    .line 225
    .local v8, "success":Z
    const/4 v6, 0x0

    .line 228
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 229
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->port()I

    move-result v12

    const/4 v13, 0x1

    .line 228
    invoke-virtual {v7, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v6, v0

    .line 232
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;

    move-result-object v3

    .line 233
    .local v3, "connectionSpec":Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 234
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v10

    .line 235
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v12

    .line 234
    invoke-virtual {v10, v6, v11, v12}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 239
    :cond_0
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 240
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v10

    invoke-static {v10}, Lcom/sendbird/android/shadow/okhttp3/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lcom/sendbird/android/shadow/okhttp3/Handshake;

    move-result-object v9

    .line 243
    .local v9, "unverifiedHandshake":Lcom/sendbird/android/shadow/okhttp3/Handshake;
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 244
    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 245
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Hostname "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not verified:\n    certificate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 246
    invoke-static {v2}, Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n    DN: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 247
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v12}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n    subjectAltNames: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 248
    invoke-static {v2}, Lcom/sendbird/android/shadow/okhttp3/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "connectionSpec":Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;
    .end local v9    # "unverifiedHandshake":Lcom/sendbird/android/shadow/okhttp3/Handshake;
    :catch_0
    move-exception v4

    .line 268
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_1
    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v4    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v10

    if-eqz v6, :cond_1

    .line 272
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 274
    :cond_1
    if-nez v8, :cond_2

    .line 275
    invoke-static {v6}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    :cond_2
    throw v10

    .line 252
    .restart local v3    # "connectionSpec":Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;
    .restart local v9    # "unverifiedHandshake":Lcom/sendbird/android/shadow/okhttp3/Handshake;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->certificatePinner()Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;

    move-result-object v10

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v11

    .line 253
    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v12

    .line 252
    invoke-virtual {v10, v11, v12}, Lcom/sendbird/android/shadow/okhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 256
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 257
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    .line 259
    .local v5, "maybeProtocol":Ljava/lang/String;
    :goto_0
    iput-object v6, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 260
    iget-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v10}, Lcom/sendbird/android/shadow/okio/Okio;->source(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v10

    invoke-static {v10}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v10

    iput-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 261
    iget-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v10}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v10

    invoke-static {v10}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Sink;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v10

    iput-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 262
    iput-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->handshake:Lcom/sendbird/android/shadow/okhttp3/Handshake;

    .line 263
    if-eqz v5, :cond_7

    .line 264
    invoke-static {v5}, Lcom/sendbird/android/shadow/okhttp3/Protocol;->get(Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Protocol;

    move-result-object v10

    :goto_1
    iput-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    const/4 v8, 0x1

    .line 271
    if-eqz v6, :cond_4

    .line 272
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 274
    :cond_4
    if-nez v8, :cond_5

    .line 275
    invoke-static {v6}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 278
    :cond_5
    return-void

    .line 257
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 264
    .restart local v5    # "maybeProtocol":Ljava/lang/String;
    :cond_7
    :try_start_3
    sget-object v10, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_1_1:Lcom/sendbird/android/shadow/okhttp3/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 269
    .end local v3    # "connectionSpec":Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;
    .end local v5    # "maybeProtocol":Ljava/lang/String;
    .end local v9    # "unverifiedHandshake":Lcom/sendbird/android/shadow/okhttp3/Handshake;
    .restart local v4    # "e":Ljava/lang/AssertionError;
    :cond_8
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createTunnel(IILcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/HttpUrl;)Lcom/sendbird/android/shadow/okhttp3/Request;
    .locals 11
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p4, "url"    # Lcom/sendbird/android/shadow/okhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CONNECT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p4, v8}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->hostHeader(Lcom/sendbird/android/shadow/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " HTTP/1.1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "requestLine":Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    iget-object v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    iget-object v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-direct {v5, v6, v7, v8}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;Lcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okio/BufferedSink;)V

    .line 290
    .local v5, "tunnelConnection":Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;
    iget-object v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v7}, Lcom/sendbird/android/shadow/okio/BufferedSource;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v7

    int-to-long v8, p1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lcom/sendbird/android/shadow/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okio/Timeout;

    .line 291
    iget-object v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v7}, Lcom/sendbird/android/shadow/okio/BufferedSink;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v7

    int-to-long v8, p2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Lcom/sendbird/android/shadow/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/sendbird/android/shadow/okio/Timeout;

    .line 292
    invoke-virtual {p3}, Lcom/sendbird/android/shadow/okhttp3/Request;->headers()Lcom/sendbird/android/shadow/okhttp3/Headers;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->writeRequest(Lcom/sendbird/android/shadow/okhttp3/Headers;Ljava/lang/String;)V

    .line 293
    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->finishRequest()V

    .line 294
    invoke-virtual {v5}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->readResponse()Lcom/sendbird/android/shadow/okhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7, p3}, Lcom/sendbird/android/shadow/okhttp3/Response$Builder;->request(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Response$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/okhttp3/Response$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v4

    .line 297
    .local v4, "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/OkHeaders;->contentLength(Lcom/sendbird/android/shadow/okhttp3/Response;)J

    move-result-wide v2

    .line 298
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 299
    const-wide/16 v2, 0x0

    .line 301
    :cond_1
    invoke-virtual {v5, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->newFixedLengthSource(J)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v0

    .line 302
    .local v0, "body":Lcom/sendbird/android/shadow/okio/Source;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->skipAll(Lcom/sendbird/android/shadow/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 303
    invoke-interface {v0}, Lcom/sendbird/android/shadow/okio/Source;->close()V

    .line 305
    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 326
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 327
    invoke-virtual {v4}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 311
    :sswitch_0
    iget-object v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v7}, Lcom/sendbird/android/shadow/okio/BufferedSource;->buffer()Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/okio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-interface {v7}, Lcom/sendbird/android/shadow/okio/BufferedSink;->buffer()Lcom/sendbird/android/shadow/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/okio/Buffer;->exhausted()Z

    move-result v7

    if-nez v7, :cond_4

    .line 312
    :cond_2
    new-instance v6, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :sswitch_1
    iget-object v7, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sendbird/android/shadow/okhttp3/Address;->proxyAuthenticator()Lcom/sendbird/android/shadow/okhttp3/Authenticator;

    move-result-object v7

    iget-object v8, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-interface {v7, v8, v4}, Lcom/sendbird/android/shadow/okhttp3/Authenticator;->authenticate(Lcom/sendbird/android/shadow/okhttp3/Route;Lcom/sendbird/android/shadow/okhttp3/Response;)Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object p3

    .line 318
    if-nez p3, :cond_3

    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 320
    :cond_3
    const-string v7, "close"

    const-string v8, "Connection"

    invoke-virtual {v4, v8}, Lcom/sendbird/android/shadow/okhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, p3

    .line 321
    :cond_4
    return-object v6

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest()Lcom/sendbird/android/shadow/okhttp3/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    invoke-direct {v0}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 339
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->url(Lcom/sendbird/android/shadow/okhttp3/HttpUrl;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Host"

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 340
    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->hostHeader(Lcom/sendbird/android/shadow/okhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 341
    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "User-Agent"

    .line 342
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/Request$Builder;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Request$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/Request;

    move-result-object v0

    .line 338
    return-object v0
.end method

.method private establishProtocol(IILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V
    .locals 6
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->connectTls(IILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/Protocol;->SPDY_3:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_2:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    if-ne v1, v2, :cond_2

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 205
    new-instance v1, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    invoke-direct {v1, v3}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;-><init>(Z)V

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 206
    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okio/BufferedSink;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    .line 207
    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->protocol(Lcom/sendbird/android/shadow/okhttp3/Protocol;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1, p0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->listener(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->build()Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    move-result-object v0

    .line 210
    .local v0, "framedConnection":Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->start()V

    .line 213
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v1

    iput v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocationLimit:I

    .line 214
    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    .line 218
    .end local v0    # "framedConnection":Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;
    :goto_1
    return-void

    .line 198
    :cond_1
    sget-object v1, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_1_1:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    iput-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    .line 199
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 216
    :cond_2
    iput v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocationLimit:I

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 358
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .locals 7
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;>;"
    const/4 v4, 0x0

    .line 94
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "already connected"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_0
    const/4 v2, 0x0

    .line 97
    .local v2, "routeException":Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;

    invoke-direct {v0, p4}, Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    .line 99
    .local v0, "connectionSpecSelector":Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;->CLEARTEXT:Lcom/sendbird/android/shadow/okhttp3/ConnectionSpec;

    .line 100
    invoke-interface {p4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    new-instance v3, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;

    new-instance v4, Ljava/net/UnknownServiceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CLEARTEXT communication not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v3

    .line 105
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    if-nez v3, :cond_5

    .line 107
    :try_start_0
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v3}, Lcom/sendbird/android/shadow/okhttp3/Route;->requiresTunnel()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->buildTunneledConnection(IIILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 115
    iget-object v3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lcom/sendbird/android/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 116
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    .line 117
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 118
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 119
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 120
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->handshake:Lcom/sendbird/android/shadow/okhttp3/Handshake;

    .line 121
    iput-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    .line 123
    if-nez v2, :cond_4

    .line 124
    new-instance v2, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;

    .end local v2    # "routeException":Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;
    invoke-direct {v2, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 129
    .restart local v2    # "routeException":Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;
    :goto_1
    if-eqz p5, :cond_2

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    :cond_2
    throw v2

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->buildConnection(IIILcom/sendbird/android/shadow/okhttp3/internal/ConnectionSpecSelector;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v2, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_1

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    return-void
.end method

.method public handshake()Lcom/sendbird/android/shadow/okhttp3/Handshake;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->handshake:Lcom/sendbird/android/shadow/okhttp3/Handshake;

    return-object v0
.end method

.method isConnected()Z
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHealthy(Z)Z
    .locals 6
    .param p1, "doExtensiveChecks"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 366
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 393
    :cond_1
    :goto_0
    return v2

    .line 370
    :cond_2
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    if-nez v4, :cond_1

    .line 374
    if-eqz p1, :cond_1

    .line 376
    :try_start_0
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 378
    .local v1, "readTimeout":I
    :try_start_1
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 379
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    invoke-interface {v4}, Lcom/sendbird/android/shadow/okio/BufferedSource;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_3

    .line 384
    :try_start_2
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v2, v3

    .line 380
    goto :goto_0

    .line 384
    :cond_3
    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 386
    .end local v1    # "readTimeout":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 384
    .restart local v1    # "readTimeout":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v4
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    .end local v1    # "readTimeout":I
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v2, v3

    .line 389
    goto :goto_0
.end method

.method public isMultiplexed()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettings(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->maxConcurrentStreams()I

    move-result v0

    iput v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->allocationLimit:I

    .line 404
    return-void
.end method

.method public onStream(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;)V
    .locals 1
    .param p1, "stream"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;->close(Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;)V

    .line 399
    return-void
.end method

.method public protocol()Lcom/sendbird/android/shadow/okhttp3/Protocol;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    .line 422
    :goto_0
    return-object v0

    .line 420
    :cond_0
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/Protocol;->HTTP_1_1:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->framedConnection:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->getProtocol()Lcom/sendbird/android/shadow/okhttp3/Protocol;

    move-result-object v0

    goto :goto_0
.end method

.method public route()Lcom/sendbird/android/shadow/okhttp3/Route;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 428
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 430
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->route:Lcom/sendbird/android/shadow/okhttp3/Route;

    .line 432
    invoke-virtual {v1}, Lcom/sendbird/android/shadow/okhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->handshake:Lcom/sendbird/android/shadow/okhttp3/Handshake;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->handshake:Lcom/sendbird/android/shadow/okhttp3/Handshake;

    .line 434
    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Handshake;->cipherSuite()Lcom/sendbird/android/shadow/okhttp3/CipherSuite;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/io/RealConnection;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    return-object v0

    .line 434
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method
