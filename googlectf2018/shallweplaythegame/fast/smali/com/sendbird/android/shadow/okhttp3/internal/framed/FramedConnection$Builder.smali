.class public Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private client:Z

.field private hostname:Ljava/lang/String;

.field private listener:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;

.field private protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

.field private pushObserver:Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;

.field private sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lcom/sendbird/android/shadow/okio/BufferedSource;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "client"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;->REFUSE_INCOMING_STREAMS:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->listener:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;

    .line 547
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/Protocol;->SPDY_3:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    .line 548
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;->CANCEL:Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;

    .line 556
    iput-boolean p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->client:Z

    .line 557
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Lcom/sendbird/android/shadow/okhttp3/Protocol;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->client:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->listener:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Lcom/sendbird/android/shadow/okio/BufferedSink;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;)Lcom/sendbird/android/shadow/okio/BufferedSource;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$1;)V

    return-object v0
.end method

.method public listener(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->listener:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;

    .line 575
    return-object p0
.end method

.method public protocol(Lcom/sendbird/android/shadow/okhttp3/Protocol;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;
    .locals 0
    .param p1, "protocol"    # Lcom/sendbird/android/shadow/okhttp3/Protocol;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->protocol:Lcom/sendbird/android/shadow/okhttp3/Protocol;

    .line 580
    return-object p0
.end method

.method public pushObserver(Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;
    .locals 0
    .param p1, "pushObserver"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->pushObserver:Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;

    .line 585
    return-object p0
.end method

.method public socket(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {p1}, Lcom/sendbird/android/shadow/okio/Okio;->source(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Source;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v1

    invoke-static {p1}, Lcom/sendbird/android/shadow/okio/Okio;->sink(Ljava/net/Socket;)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Sink;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v2

    .line 560
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okio/BufferedSink;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public socket(Ljava/net/Socket;Ljava/lang/String;Lcom/sendbird/android/shadow/okio/BufferedSource;Lcom/sendbird/android/shadow/okio/BufferedSink;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "source"    # Lcom/sendbird/android/shadow/okio/BufferedSource;
    .param p4, "sink"    # Lcom/sendbird/android/shadow/okio/BufferedSink;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->socket:Ljava/net/Socket;

    .line 567
    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->hostname:Ljava/lang/String;

    .line 568
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->source:Lcom/sendbird/android/shadow/okio/BufferedSource;

    .line 569
    iput-object p4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Builder;->sink:Lcom/sendbird/android/shadow/okio/BufferedSink;

    .line 570
    return-object p0
.end method
