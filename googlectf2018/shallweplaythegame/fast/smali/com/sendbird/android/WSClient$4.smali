.class Lcom/sendbird/android/WSClient$4;
.super Ljava/lang/Object;
.source "WSClient.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/WSClient;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/WSClient;


# direct methods
.method constructor <init>(Lcom/sendbird/android/WSClient;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$600(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 286
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$900(Lcom/sendbird/android/WSClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onClose()V

    .line 294
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/WSClient;->access$002(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/WSClient$WSClientEventHandler;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    .line 295
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$100(Lcom/sendbird/android/WSClient;)V

    .line 296
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onError()V

    goto :goto_0
.end method

.method public onFailure(Ljava/io/IOException;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$600(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 246
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onError()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/WSClient;->access$002(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/WSClient$WSClientEventHandler;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    .line 252
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$100(Lcom/sendbird/android/WSClient;)V

    .line 253
    return-void
.end method

.method public onMessage(Lcom/sendbird/android/shadow/okhttp3/ResponseBody;)V
    .locals 5
    .param p1, "recv"    # Lcom/sendbird/android/shadow/okhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 257
    const/4 v1, -0x1

    .line 258
    .local v1, "nl":I
    iget-object v2, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$700(Lcom/sendbird/android/WSClient;)V

    .line 260
    iget-object v2, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$800(Lcom/sendbird/android/WSClient;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {p1}, Lcom/sendbird/android/shadow/okhttp3/ResponseBody;->close()V

    .line 264
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$800(Lcom/sendbird/android/WSClient;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 265
    if-gez v1, :cond_1

    .line 276
    return-void

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$800(Lcom/sendbird/android/WSClient;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$800(Lcom/sendbird/android/WSClient;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 271
    iget-object v2, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOpen(Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 1
    .param p1, "webSocket"    # Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;
    .param p2, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0, p1}, Lcom/sendbird/android/WSClient;->access$502(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;)Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    .line 236
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onOpen()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/WSClient$4;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$600(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->start()V

    .line 241
    return-void
.end method

.method public onPong(Lcom/sendbird/android/shadow/okio/Buffer;)V
    .locals 0
    .param p1, "payload"    # Lcom/sendbird/android/shadow/okio/Buffer;

    .prologue
    .line 281
    return-void
.end method
