.class Lcom/sendbird/android/SendBird$SendBirdClient$1;
.super Ljava/lang/Object;
.source "SendBird.java"

# interfaces
.implements Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/SendBird$SendBirdClient;-><init>(Ljava/lang/String;)V
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
    .line 1452
    iput-object p1, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .prologue
    .line 1455
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2202(Lcom/sendbird/android/SendBird$SendBirdClient;Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer;

    .line 1460
    return-void
.end method

.method public onTick(II)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "elapsed"    # I

    .prologue
    .line 1478
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1464
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2300(Lcom/sendbird/android/SendBird$SendBirdClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2302(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z

    .line 1466
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2400(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 1469
    :cond_0
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2500(Lcom/sendbird/android/SendBird$SendBirdClient;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0, v1}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2502(Lcom/sendbird/android/SendBird$SendBirdClient;Z)Z

    .line 1471
    iget-object v0, p0, Lcom/sendbird/android/SendBird$SendBirdClient$1;->this$0:Lcom/sendbird/android/SendBird$SendBirdClient;

    invoke-static {v0}, Lcom/sendbird/android/SendBird$SendBirdClient;->access$2600(Lcom/sendbird/android/SendBird$SendBirdClient;)V

    .line 1474
    :cond_1
    return-void
.end method
