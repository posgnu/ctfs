.class Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream$StreamFinishingSource;
.super Lcom/sendbird/android/shadow/okio/ForwardingSource;
.source "Http2xStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamFinishingSource"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;


# direct methods
.method public constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;Lcom/sendbird/android/shadow/okio/Source;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;
    .param p2, "delegate"    # Lcom/sendbird/android/shadow/okio/Source;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;

    .line 288
    invoke-direct {p0, p2}, Lcom/sendbird/android/shadow/okio/ForwardingSource;-><init>(Lcom/sendbird/android/shadow/okio/Source;)V

    .line 289
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;->access$000(Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;)Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream$StreamFinishingSource;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/http/Http2xStream;

    invoke-virtual {v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/http/StreamAllocation;->streamFinished(ZLcom/sendbird/android/shadow/okhttp3/internal/http/HttpStream;)V

    .line 293
    invoke-super {p0}, Lcom/sendbird/android/shadow/okio/ForwardingSource;->close()V

    .line 294
    return-void
.end method
