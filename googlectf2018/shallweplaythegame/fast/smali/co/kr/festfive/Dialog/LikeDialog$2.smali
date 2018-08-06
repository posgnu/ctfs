.class Lco/kr/festfive/Dialog/LikeDialog$2;
.super Ljava/util/TimerTask;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/kr/festfive/Dialog/LikeDialog;-><init>(Lco/kr/festfive/fragment/NoticeDetailFeedFragment;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/kr/festfive/Dialog/LikeDialog;

.field final synthetic val$myHandler:Landroid/os/Handler;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lco/kr/festfive/Dialog/LikeDialog;Ljava/util/Timer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lco/kr/festfive/Dialog/LikeDialog;

    .prologue
    .line 70
    iput-object p1, p0, Lco/kr/festfive/Dialog/LikeDialog$2;->this$0:Lco/kr/festfive/Dialog/LikeDialog;

    iput-object p2, p0, Lco/kr/festfive/Dialog/LikeDialog$2;->val$timer:Ljava/util/Timer;

    iput-object p3, p0, Lco/kr/festfive/Dialog/LikeDialog$2;->val$myHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog$2;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 74
    iget-object v0, p0, Lco/kr/festfive/Dialog/LikeDialog$2;->val$myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/kr/festfive/Dialog/LikeDialog$2;->this$0:Lco/kr/festfive/Dialog/LikeDialog;

    iget-object v1, v1, Lco/kr/festfive/Dialog/LikeDialog;->myRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
