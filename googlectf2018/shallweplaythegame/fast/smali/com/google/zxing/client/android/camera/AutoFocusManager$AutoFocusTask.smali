.class final Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;Lcom/google/zxing/client/android/camera/AutoFocusManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/zxing/client/android/camera/AutoFocusManager;
    .param p2, "x1"    # Lcom/google/zxing/client/android/camera/AutoFocusManager$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Object;

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->access$100(Lcom/google/zxing/client/android/camera/AutoFocusManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method