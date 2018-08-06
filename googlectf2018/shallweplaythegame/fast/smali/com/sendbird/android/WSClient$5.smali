.class Lcom/sendbird/android/WSClient$5;
.super Ljava/lang/Object;
.source "WSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/WSClient;->quit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/WSClient;

.field final synthetic val$ws:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;


# direct methods
.method constructor <init>(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sendbird/android/WSClient$5;->this$0:Lcom/sendbird/android/WSClient;

    iput-object p2, p0, Lcom/sendbird/android/WSClient$5;->val$ws:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/WSClient$5;->val$ws:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/sendbird/android/WSClient$5;->val$ws:Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    const/16 v2, 0x3e8

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;->close(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
