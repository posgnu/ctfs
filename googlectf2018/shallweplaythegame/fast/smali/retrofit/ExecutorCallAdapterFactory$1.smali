.class Lretrofit/ExecutorCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/ExecutorCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit/Retrofit;)Lretrofit/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit/CallAdapter",
        "<",
        "Lretrofit/Call",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/ExecutorCallAdapterFactory;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lretrofit/ExecutorCallAdapterFactory;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "this$0"    # Lretrofit/ExecutorCallAdapterFactory;

    .prologue
    .line 36
    iput-object p1, p0, Lretrofit/ExecutorCallAdapterFactory$1;->this$0:Lretrofit/ExecutorCallAdapterFactory;

    iput-object p2, p0, Lretrofit/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit/Call;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lretrofit/ExecutorCallAdapterFactory$1;->adapt(Lretrofit/Call;)Lretrofit/Call;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit/Call;)Lretrofit/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit/Call",
            "<TR;>;)",
            "Lretrofit/Call",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "call":Lretrofit/Call;, "Lretrofit/Call<TR;>;"
    new-instance v0, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;

    iget-object v1, p0, Lretrofit/ExecutorCallAdapterFactory$1;->this$0:Lretrofit/ExecutorCallAdapterFactory;

    invoke-static {v1}, Lretrofit/ExecutorCallAdapterFactory;->access$000(Lretrofit/ExecutorCallAdapterFactory;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lretrofit/ExecutorCallAdapterFactory$ExecutorCallbackCall;-><init>(Ljava/util/concurrent/Executor;Lretrofit/Call;)V

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lretrofit/ExecutorCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
