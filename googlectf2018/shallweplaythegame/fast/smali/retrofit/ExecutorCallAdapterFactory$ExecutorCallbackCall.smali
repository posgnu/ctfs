.class final Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit/Call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/ExecutorCallAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExecutorCallbackCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Call",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final delegate:Lretrofit/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Call",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lretrofit/Call;)V
    .locals 0
    .param p1, "callbackExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lretrofit/Call",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    .local p2, "delegate":Lretrofit/Call;, "Lretrofit/Call<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    .line 53
    iput-object p2, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit/Call;

    .line 54
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit/Call;

    invoke-interface {v0}, Lretrofit/Call;->cancel()V

    .line 66
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    invoke-virtual {p0}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->clone()Lretrofit/Call;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lretrofit/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Call",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    new-instance v0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit/Call;

    invoke-interface {v2}, Lretrofit/Call;->clone()Lretrofit/Call;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit/Call;)V

    return-object v0
.end method

.method public enqueue(Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    .local p1, "callback":Lretrofit/Callback;, "Lretrofit/Callback<TT;>;"
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit/Call;

    new-instance v1, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

    iget-object v2, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->callbackExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, p1}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;-><init>(Ljava/util/concurrent/Executor;Lretrofit/Callback;)V

    invoke-interface {v0, v1}, Lretrofit/Call;->enqueue(Lretrofit/Callback;)V

    .line 58
    return-void
.end method

.method public execute()Lretrofit/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit/Response",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall<TT;>;"
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;->delegate:Lretrofit/Call;

    invoke-interface {v0}, Lretrofit/Call;->execute()Lretrofit/Response;

    move-result-object v0

    return-object v0
.end method
