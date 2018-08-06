.class public interface abstract Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;
.source "WebSocketReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onMessage(Lcom/sendbird/android/shadow/okhttp3/ResponseBody;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onPing(Lcom/sendbird/android/shadow/okio/Buffer;)V
.end method

.method public abstract onPong(Lcom/sendbird/android/shadow/okio/Buffer;)V
.end method
