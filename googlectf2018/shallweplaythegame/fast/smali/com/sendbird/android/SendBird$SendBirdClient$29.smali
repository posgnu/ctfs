.class Lcom/sendbird/android/SendBird$SendBirdClient$29;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;->reconnect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/SendBird$SendBirdClient;


# direct methods
.method constructor <init>(Lcom/sendbird/android/SendBird$SendBirdClient;)V
    .locals 0

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$29;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 2262
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2263
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ReconnectTimer start."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2265
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2269
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$29;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3602(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer;

    .line 2270
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2271
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ReconnectTimer stop."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2273
    :cond_0
    return-void
.end method

.method public onTick(II)V
    .locals 3
    .param p1, "timeout"    # I
    .param p2, "elapsed"    # I

    .prologue
    .line 2286
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2287
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReconnectTimer Tick. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2289
    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 2277
    sget-boolean v0, Lcom/sendbird/android/SendBird;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2278
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "ReconnectTimer end. Try to reconnect..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$29;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3602(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer;

    .line 2281
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$29;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$3700(Lcom/sendbird/android/SendBird$SendBirdClient;Z)V

    .line 2282
    return-void
.end method
