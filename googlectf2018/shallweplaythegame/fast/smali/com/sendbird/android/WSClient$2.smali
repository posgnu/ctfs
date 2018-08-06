.class Lcom/sendbird/android/WSClient$2;
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
    .line 90
    iput-object p1, p0, Lcom/sendbird/android/WSClient$2;->this$0:Lcom/sendbird/android/WSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pinger start."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/WSClient$2;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$200(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 97
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 101
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Pinger stop."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/WSClient$2;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$200(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 105
    return-void
.end method

.method public onTick(II)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "elapsed"    # I

    .prologue
    .line 122
    return-void
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .line 109
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 113
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sendbird/android/WSClient$2;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v2}, Lcom/sendbird/android/WSClient;->access$300(Lcom/sendbird/android/WSClient;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sendbird/android/WSClient$2;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sendbird/android/WSClient;->access$302(Lcom/sendbird/android/WSClient;J)J

    .line 115
    iget-object v0, p0, Lcom/sendbird/android/WSClient$2;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {}, Lcom/sendbird/android/Command;->bPing()Lcom/sendbird/android/Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sendbird/android/WSClient;->send(Lcom/sendbird/android/Command;)Z

    .line 116
    iget-object v0, p0, Lcom/sendbird/android/WSClient$2;->this$0:Lcom/sendbird/android/WSClient;

    invoke-static {v0}, Lcom/sendbird/android/WSClient;->access$200(Lcom/sendbird/android/WSClient;)Lcom/sendbird/android/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sendbird/android/CountDownTimer;->start()V

    .line 118
    :cond_1
    return-void
.end method
