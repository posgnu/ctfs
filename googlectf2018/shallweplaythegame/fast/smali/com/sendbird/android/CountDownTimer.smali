.class public Lcom/sendbird/android/CountDownTimer;
.super Ljava/lang/Object;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

.field private mLoop:Z

.field private mTick:I

.field private mTimeout:I

.field private mTimer:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 21
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/sendbird/android/CountDownTimer;-><init>(II)V

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "timeout"    # I
    .param p2, "tick"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sendbird/android/CountDownTimer;-><init>(IIZ)V

    .line 26
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "timeout"    # I
    .param p2, "tick"    # I
    .param p3, "loop"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/sendbird/android/CountDownTimer;->mTimeout:I

    .line 30
    iput p2, p0, Lcom/sendbird/android/CountDownTimer;->mTick:I

    .line 31
    iput-boolean p3, p0, Lcom/sendbird/android/CountDownTimer;->mLoop:Z

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/sendbird/android/CountDownTimer;)Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/CountDownTimer;

    .prologue
    .line 6
    iget-object v0, p0, Lcom/sendbird/android/CountDownTimer;->mHandler:Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sendbird/android/CountDownTimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/CountDownTimer;

    .prologue
    .line 6
    iget v0, p0, Lcom/sendbird/android/CountDownTimer;->mTick:I

    return v0
.end method

.method static synthetic access$200(Lcom/sendbird/android/CountDownTimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/CountDownTimer;

    .prologue
    .line 6
    iget v0, p0, Lcom/sendbird/android/CountDownTimer;->mTimeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/sendbird/android/CountDownTimer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sendbird/android/CountDownTimer;

    .prologue
    .line 6
    iget-boolean v0, p0, Lcom/sendbird/android/CountDownTimer;->mLoop:Z

    return v0
.end method


# virtual methods
.method public setEventHandler(Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sendbird/android/CountDownTimer;->mHandler:Lcom/sendbird/android/CountDownTimer$CountDownTimerEventHandler;

    .line 36
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/sendbird/android/CountDownTimer;->stop()V

    .line 40
    new-instance v0, Lcom/sendbird/android/CountDownTimer$1;

    invoke-direct {v0, p0}, Lcom/sendbird/android/CountDownTimer$1;-><init>(Lcom/sendbird/android/CountDownTimer;)V

    iput-object v0, p0, Lcom/sendbird/android/CountDownTimer;->mTimer:Ljava/lang/Thread;

    .line 80
    iget-object v0, p0, Lcom/sendbird/android/CountDownTimer;->mTimer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sendbird/android/CountDownTimer;->mTimer:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sendbird/android/CountDownTimer;->mTimer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sendbird/android/CountDownTimer;->mTimer:Ljava/lang/Thread;

    .line 89
    :cond_0
    return-void
.end method
