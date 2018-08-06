.class Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
.super Ljava/lang/Object;
.source "HttpEngine.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Interceptor$Chain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkInterceptorChain"
.end annotation


# instance fields
.field private calls:I

.field private final connection:Lcom/sendbird/android/shadow/okhttp3/Connection;

.field private final index:I

.field private final request:Lcom/sendbird/android/shadow/okhttp3/Request;

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;ILcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Connection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;
    .param p2, "index"    # I
    .param p3, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .param p4, "connection"    # Lcom/sendbird/android/shadow/okhttp3/Connection;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput p2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    .line 696
    iput-object p3, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    .line 697
    iput-object p4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection:Lcom/sendbird/android/shadow/okhttp3/Connection;

    .line 698
    return-void
.end method


# virtual methods
.method public connection()Lcom/sendbird/android/shadow/okhttp3/Connection;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection:Lcom/sendbird/android/shadow/okhttp3/Connection;

    return-object v0
.end method

.method public proceed(Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Response;
    .locals 14
    .param p1, "request"    # Lcom/sendbird/android/shadow/okhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 709
    iget v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    .line 711
    iget v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    if-lez v9, :cond_2

    .line 712
    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->client:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sendbird/android/shadow/okhttp3/Interceptor;

    .line 713
    .local v2, "caller":Lcom/sendbird/android/shadow/okhttp3/Interceptor;
    invoke-virtual {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection()Lcom/sendbird/android/shadow/okhttp3/Connection;

    move-result-object v9

    invoke-interface {v9}, Lcom/sendbird/android/shadow/okhttp3/Connection;->route()Lcom/sendbird/android/shadow/okhttp3/Route;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/Route;->address()Lcom/sendbird/android/shadow/okhttp3/Address;

    move-result-object v0

    .line 716
    .local v0, "address":Lcom/sendbird/android/shadow/okhttp3/Address;
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Request;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 717
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Request;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->port()I

    move-result v9

    invoke-virtual {v0}, Lcom/sendbird/android/shadow/okhttp3/Address;->url()Lcom/sendbird/android/shadow/okhttp3/HttpUrl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/okhttp3/HttpUrl;->port()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 718
    :cond_0
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must retain the same host and port"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 723
    :cond_1
    iget v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-le v9, v12, :cond_2

    .line 724
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 729
    .end local v0    # "address":Lcom/sendbird/android/shadow/okhttp3/Address;
    .end local v2    # "caller":Lcom/sendbird/android/shadow/okhttp3/Interceptor;
    :cond_2
    iget v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    iget-object v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    iget-object v10, v10, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->client:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 731
    new-instance v3, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;

    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    iget v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->connection:Lcom/sendbird/android/shadow/okhttp3/Connection;

    invoke-direct {v3, v9, v10, p1, v11}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;ILcom/sendbird/android/shadow/okhttp3/Request;Lcom/sendbird/android/shadow/okhttp3/Connection;)V

    .line 732
    .local v3, "chain":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    iget-object v9, v9, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->client:Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->index:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sendbird/android/shadow/okhttp3/Interceptor;

    .line 733
    .local v6, "interceptor":Lcom/sendbird/android/shadow/okhttp3/Interceptor;
    invoke-interface {v6, v3}, Lcom/sendbird/android/shadow/okhttp3/Interceptor;->intercept(Lcom/sendbird/android/shadow/okhttp3/Interceptor$Chain;)Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v5

    .line 736
    .local v5, "interceptedResponse":Lcom/sendbird/android/shadow/okhttp3/Response;
    iget v9, v3, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->calls:I

    if-eq v9, v12, :cond_3

    .line 737
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must call proceed() exactly once"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 740
    :cond_3
    if-nez v5, :cond_8

    .line 741
    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network interceptor "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " returned null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 748
    .end local v3    # "chain":Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;
    .end local v5    # "interceptedResponse":Lcom/sendbird/android/shadow/okhttp3/Response;
    .end local v6    # "interceptor":Lcom/sendbird/android/shadow/okhttp3/Interceptor;
    :cond_4
    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->access$000(Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;)Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    move-result-object v9

    invoke-interface {v9, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;->writeRequestHeaders(Lcom/sendbird/android/shadow/okhttp3/Request;)V

    .line 751
    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    invoke-static {v9, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->access$102(Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;Lcom/sendbird/android/shadow/okhttp3/Request;)Lcom/sendbird/android/shadow/okhttp3/Request;

    .line 753
    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    invoke-virtual {v9, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->permitsRequestBody(Lcom/sendbird/android/shadow/okhttp3/Request;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Request;->body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 754
    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->access$000(Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;)Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Request;->body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->contentLength()J

    move-result-wide v10

    invoke-interface {v9, p1, v10, v11}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;->createRequestBody(Lcom/sendbird/android/shadow/okhttp3/Request;J)Lcom/sendbird/android/shadow/okio/Sink;

    move-result-object v7

    .line 755
    .local v7, "requestBodyOut":Lcom/sendbird/android/shadow/okio/Sink;
    invoke-static {v7}, Lcom/sendbird/android/shadow/okio/Okio;->buffer(Lcom/sendbird/android/shadow/okio/Sink;)Lcom/sendbird/android/shadow/okio/BufferedSink;

    move-result-object v1

    .line 756
    .local v1, "bufferedRequestBody":Lcom/sendbird/android/shadow/okio/BufferedSink;
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/Request;->body()Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->writeTo(Lcom/sendbird/android/shadow/okio/BufferedSink;)V

    .line 757
    invoke-interface {v1}, Lcom/sendbird/android/shadow/okio/BufferedSink;->close()V

    .line 760
    .end local v1    # "bufferedRequestBody":Lcom/sendbird/android/shadow/okio/BufferedSink;
    .end local v7    # "requestBodyOut":Lcom/sendbird/android/shadow/okio/Sink;
    :cond_5
    iget-object v9, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;

    invoke-static {v9}, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;->access$200(Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine;)Lcom/sendbird/android/shadow/okhttp3/Response;

    move-result-object v8

    .line 762
    .local v8, "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Response;->code()I

    move-result v4

    .line 763
    .local v4, "code":I
    const/16 v9, 0xcc

    if-eq v4, v9, :cond_6

    const/16 v9, 0xcd

    if-ne v4, v9, :cond_7

    :cond_6
    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Response;->body()Lcom/sendbird/android/shadow/okhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_7

    .line 764
    new-instance v9, Ljava/net/ProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " had non-zero Content-Length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 765
    invoke-virtual {v8}, Lcom/sendbird/android/shadow/okhttp3/Response;->body()Lcom/sendbird/android/shadow/okhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    move-object v5, v8

    .line 768
    .end local v4    # "code":I
    .end local v8    # "response":Lcom/sendbird/android/shadow/okhttp3/Response;
    :cond_8
    return-object v5
.end method

.method public request()Lcom/sendbird/android/shadow/okhttp3/Request;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/HttpEngine$NetworkInterceptorChain;->request:Lcom/sendbird/android/shadow/okhttp3/Request;

    return-object v0
.end method
