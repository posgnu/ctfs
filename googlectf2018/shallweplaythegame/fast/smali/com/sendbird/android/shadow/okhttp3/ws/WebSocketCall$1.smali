.class Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$1;
.super Ljava/lang/Object;
.source "WebSocketCall.java"

# interfaces
.implements Lcom/sendbird/android/shadow/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;->enqueue(Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

.field final synthetic val$listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;


# direct methods
.method constructor <init>(Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

    iput-object p2, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$1;->val$listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/sendbird/android/shadow/okhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$1;->val$listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;->onFailure(Ljava/io/IOException;Lcom/sendbird/android/shadow/okhttp3/Response;)V

    .line 105
    return-void
.end method

.method public onResponse(Lcom/sendbird/android/shadow/okhttp3/Call;Lcom/sendbird/android/shadow/okhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lcom/sendbird/android/shadow/okhttp3/Call;
    .param p2, "response"    # Lcom/sendbird/android/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$1;->this$0:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$1;->val$listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    invoke-static {v1, p2, v2}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;->access$000(Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall;Lcom/sendbird/android/shadow/okhttp3/Response;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketCall$1;->val$listener:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;

    invoke-interface {v1, v0, p2}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocketListener;->onFailure(Ljava/io/IOException;Lcom/sendbird/android/shadow/okhttp3/Response;)V

    goto :goto_0
.end method
