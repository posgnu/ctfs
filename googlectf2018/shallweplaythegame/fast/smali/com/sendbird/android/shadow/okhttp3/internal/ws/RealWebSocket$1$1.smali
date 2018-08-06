.class Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1$1;
.super Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;->onPing(Lcom/sendbird/android/shadow/okio/Buffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;

.field final synthetic val$buffer:Lcom/sendbird/android/shadow/okio/Buffer;


# direct methods
.method varargs constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;Ljava/lang/String;[Ljava/lang/Object;Lcom/sendbird/android/shadow/okio/Buffer;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;

    iput-object p4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1$1;->val$buffer:Lcom/sendbird/android/shadow/okio/Buffer;

    invoke-direct {p0, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1$1;->this$1:Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;

    iget-object v0, v0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;->access$000(Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket;)Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/ws/RealWebSocket$1$1;->val$buffer:Lcom/sendbird/android/shadow/okio/Buffer;

    invoke-virtual {v0, v1}, Lcom/sendbird/android/shadow/okhttp3/internal/ws/WebSocketWriter;->writePong(Lcom/sendbird/android/shadow/okio/Buffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method
