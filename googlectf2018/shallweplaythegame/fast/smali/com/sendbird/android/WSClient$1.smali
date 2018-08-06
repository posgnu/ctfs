.class Lcom/sendbird/android/WSClient$1;
.super Ljava/lang/Object;
.source "WSClient.java"

# interfaces
.implements Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/WSClient;-><init>(Ljava/lang/String;)V
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
    .line 55
    iput-object p1, p0, Lcom/sendbird/android/WSClient$1;->this$0:Lcom/sendbird/android/WSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Watchdog start."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 65
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Watchdog stop."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onTick(II)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "elapsed"    # I

    .prologue
    .line 86
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 72
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Watchdog timeout."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/WSClient$1;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/sendbird/android/WSClient$1;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$000(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/sendbird/android/WSClient$WSClientEventHandler;->onError()V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/sendbird/android/WSClient$1;->this$0:Lcom/sendbird/android/WSClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/WSClient;->access$002(Lcom/sendbird/android/WSClient;Lcom/sendbird/android/WSClient$WSClientEventHandler;)Lcom/sendbird/android/WSClient$WSClientEventHandler;

    .line 81
    iget-object v0, p0, Lcom/sendbird/android/WSClient$1;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$100(Lcom/sendbird/android/WSClient;)V

    .line 82
    return-void
.end method
