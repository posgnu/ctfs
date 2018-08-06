.class Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;
.super Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->pushResetLater(ILcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

.field final synthetic val$errorCode:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    iput p4, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->val$streamId:I

    iput-object p5, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->val$errorCode:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/sendbird/android/shadow/okhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->access$2700(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;)Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;

    move-result-object v0

    iget v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->val$streamId:I

    iget-object v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->val$errorCode:Lcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/PushObserver;->onReset(ILcom/sendbird/android/shadow/okhttp3/internal/framed/ErrorCode;)V

    .line 913
    iget-object v1, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    monitor-enter v1

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->this$0:Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;->access$2800(Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection;)Ljava/util/Set;

    move-result-object v0

    iget v2, p0, Lcom/sendbird/android/shadow/okhttp3/internal/framed/FramedConnection$7;->val$streamId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 915
    monitor-exit v1

    .line 916
    return-void

    .line 915
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
