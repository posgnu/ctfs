.class abstract Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractSource"
.end annotation


# instance fields
.field protected closed:Z

.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

.field protected final timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;


# direct methods
.method private constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)V
    .locals 2

    .prologue
    .line 340
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$600(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)Lcom/sendbird/android/shadow/okio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/sendbird/android/shadow/okio/BufferedSource;->timeout()Lcom/sendbird/android/shadow/okio/Timeout;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sendbird/android/shadow/okio/ForwardingTimeout;-><init>(Lcom/sendbird/android/shadow/okio/Timeout;)V

    iput-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;
    .param p2, "x1"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$1;

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method protected final endOfInput(Z)V
    .locals 3
    .param p1, "reuseConnection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x6

    .line 353
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$500(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    invoke-static {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$400(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;Lcom/sendbird/android/shadow/okio/ForwardingTimeout;)V

    .line 358
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v0, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$502(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;I)I

    .line 359
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$700(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;->access$700(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;)Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream;

    invoke-virtual {v1, v0, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->streamFinished(ZLcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public timeout()Lcom/sendbird/android/shadow/okio/Timeout;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http1xStream$AbstractSource;->timeout:Lcom/sendbird/android/shadow/okio/ForwardingTimeout;

    return-object v0
.end method