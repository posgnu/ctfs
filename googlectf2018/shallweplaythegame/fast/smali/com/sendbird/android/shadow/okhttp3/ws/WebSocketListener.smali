.class public interface abstract Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onFailure(Ljava/io/IOException;Lcom/sendbird/android/shadow/okhttp3/Response;)V
.end method

.method public abstract onMessage(Lcom/sendbird/android/shadow/okhttp3/ResponseBody;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onOpen(Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;Lcom/sendbird/android/shadow/okhttp3/Response;)V
.end method

.method public abstract onPong(Lcom/sendbird/android/shadow/okio/Buffer;)V
.end method
