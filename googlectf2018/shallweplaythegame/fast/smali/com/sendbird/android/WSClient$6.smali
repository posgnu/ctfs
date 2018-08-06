.class Lcom/sendbird/android/WSClient$6;
.super Ljava/lang/Object;
.source "WSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/WSClient;->send(Lcom/sendbird/android/Command;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/WSClient;

.field final synthetic val$command:Lcom/sendbird/android/Command;


# direct methods
.method constructor <init>(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/Command;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sendbird/android/WSClient$6;->this$0:Lcom/sendbird/android/WSClient;

    iput-object p2, p0, Lcom/sendbird/android/WSClient$6;->val$command:Lcom/sendbird/android/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 370
    iget-object v1, p0, Lcom/sendbird/android/WSClient$6;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v1}, Lcom/sendbird/android/WSClient;->access$500(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/sendbird/android/WSClient$6;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v1}, Lcom/sendbird/android/WSClient;->access$500(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;

    move-result-object v1

    sget-object v2, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;->TEXT:Lcom/sendbird/android/shadow/okhttp3/MediaType;

    iget-object v3, p0, Lcom/sendbird/android/WSClient$6;->val$command:Lcom/sendbird/android/Command;

    invoke-virtual {v3}, Lcom/sendbird/android/Command;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sendbird/android/shadow/okhttp3/RequestBody;->create(Lcom/sendbird/android/shadow/okhttp3/MediaType;Ljava/lang/String;)Lcom/sendbird/android/shadow/okhttp3/RequestBody;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sendbird/android/shadow/okhttp3/ws/WebSocket;->sendMessage(Lcom/sendbird/android/shadow/okhttp3/RequestBody;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
