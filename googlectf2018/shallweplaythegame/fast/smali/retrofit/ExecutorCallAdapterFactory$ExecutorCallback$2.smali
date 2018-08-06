.class Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->onFailure(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

.field final synthetic val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

    .prologue
    .line 92
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;"
    iput-object p1, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;->this$0:Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

    iput-object p2, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;"
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;->this$0:Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

    invoke-static {v0}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->access$100(Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;)Lretrofit/Callback;

    move-result-object v0

    iget-object v1, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$2;->val$t:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lretrofit/Callback;->onFailure(Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method
