.class Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader$1;
.super Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;->headers(ZZIILjava/util/List;Lcom/sendbird/android/shadow/okhttp3/internal/framed/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;

.field final synthetic val$newStream:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;


# direct methods
.method varargs constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;

    invoke-direct {p0, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 681
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;

    iget-object v1, v1, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    invoke-static {v1}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->access$2000(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;->onStream(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->get()Lcom/sendbird/android/shadow/okhttp3/internal/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FramedConnection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;

    iget-object v4, v4, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    invoke-static {v4}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->access$1100(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    :try_start_1
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Reader$1;->val$newStream:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;->close(Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 686
    :catch_1
    move-exception v1

    goto :goto_0
.end method