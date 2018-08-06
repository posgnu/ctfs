.class Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

.field final synthetic val$response:Lretrofit/Response;

.field final synthetic val$retrofit:Lretrofit/Retrofit;


# direct methods
.method constructor <init>(Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;Lretrofit/Response;Lretrofit/Retrofit;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

    .prologue
    .line 84
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;"
    iput-object p1, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;->this$0:Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

    iput-object p2, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;->val$response:Lretrofit/Response;

    iput-object p3, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;->val$retrofit:Lretrofit/Retrofit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    .local p0, "this":Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;, "Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;"
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;->this$0:Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;

    invoke-static {v0}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;->access$100(Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback;)Lretrofit/Callback;

    move-result-object v0

    iget-object v1, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;->val$response:Lretrofit/Response;

    iget-object v2, p0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallback$1;->val$retrofit:Lretrofit/Retrofit;

    invoke-interface {v0, v1, v2}, Lretrofit/Callback;->onResponse(Lretrofit/Response;Lretrofit/Retrofit;)V

    .line 87
    return-void
.end method
