.class final Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener$1;
.super Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStream(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;)V
    .locals 1
    .param p1, "stream"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    sget-object v0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedStream;->close(Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;)V

    .line 925
    return-void
.end method
