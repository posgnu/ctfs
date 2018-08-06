.class Lcom/sendbird/android/CountDownTimer$1;
.super Ljava/lang/Thread;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/CountDownTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/sendbird/android/CountDownTimer;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "count":I
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;->onStart()V

    .line 48
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$100(Lcom/sendbird/android/CountDownTimer;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 49
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$100(Lcom/sendbird/android/CountDownTimer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$200(Lcom/sendbird/android/CountDownTimer;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 52
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 53
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v3}, Lcom/sendbird/android/CountDownTimer;->access$200(Lcom/sendbird/android/CountDownTimer;)I

    move-result v3

    invoke-interface {v2, v3, v0}, Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;->onTick(II)V

    .line 61
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$200(Lcom/sendbird/android/CountDownTimer;)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$300(Lcom/sendbird/android/CountDownTimer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;->onTimeout()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :catch_0
    move-exception v1

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 75
    iget-object v2, p0, Lcom/sendbird/android/CountDownTimer$1;->this$0:Lcom/sendbird/android/CountDownTimer;

    invoke-static {v2}, Lcom/sendbird/android/CountDownTimer;->access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;->onStop()V

    .line 77
    :cond_4
    return-void
.end method
